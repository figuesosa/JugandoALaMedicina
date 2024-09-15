document.addEventListener('DOMContentLoaded', function() {
    const siBtn = document.getElementById('si-btn');
    const noBtn = document.getElementById('no-btn');
    const preguntaElem = document.getElementById('pregunta');
    let ultimoSintomaId = parseInt(localStorage.getItem('ultimoSintomaId')) || 0; // Recuperar el último sintoma almacenado
    let preguntaCount = parseInt(localStorage.getItem('preguntaCount')) || 0; // Recuperar el contador de preguntas
    let respuestasSI = parseInt(localStorage.getItem('respuestasSI')) || 0; // Contador de respuestas "SI"
    let respuestasNO = parseInt(localStorage.getItem('respuestasNO')) || 0; // Contador de respuestas "NO"

    function actualizarPregunta(respuesta) {
        fetch(`http://localhost:3000/siguiente_pregunta?respuesta=${respuesta}&ultimoSintomaId=${ultimoSintomaId}`)
            .then(response => response.json())
            .then(data => {
                if (data.diagnostico) {
                    // Si recibimos un diagnóstico, redirigimos a la página de diagnóstico
                    window.location.href = `interfaz3.html?diagnostico=${encodeURIComponent(data.diagnostico)}`;
                    localStorage.setItem('diagnosticoActual', data.diagnostico);
                    //window.location.href = 'InterfazAggSintomas.html'; // Redirige a la interfaz que muestra el diagnóstico

                    resetProgress();
                } else if (data.pregunta) {
                    preguntaElem.textContent = data.pregunta;
                    ultimoSintomaId = data.sintomaId || ultimoSintomaId;
                    localStorage.setItem('ultimoSintomaId', ultimoSintomaId); // Guardar el último sintoma
                    preguntaCount++;
                    localStorage.setItem('preguntaCount', preguntaCount); // Guardar el progreso de las preguntas
                } else {
                    preguntaElem.textContent = 'No se encontraron más síntomas.';
                }
            })
            .catch(error => {
                console.error('Error al obtener la siguiente pregunta:', error);
                preguntaElem.textContent = 'Ocurrió un error al obtener la pregunta.';
            });
    }

    function resetProgress() {
        localStorage.removeItem('ultimoSintomaId');
        localStorage.removeItem('preguntaCount');
        localStorage.removeItem('respuestasSI');
        localStorage.removeItem('respuestasNO');
    }

    siBtn.addEventListener('click', function() {
        respuestasSI++;
        respuestasNO = 0;
        localStorage.setItem('respuestasSI', respuestasSI);
        localStorage.setItem('respuestasNO', respuestasNO);
        actualizarPregunta('SI');
    });

    noBtn.addEventListener('click', function() {
        respuestasNO++;
        respuestasSI = 0;
        localStorage.setItem('respuestasSI', respuestasSI);
        localStorage.setItem('respuestasNO', respuestasNO);
        actualizarPregunta('NO');
    });
});

document.addEventListener('DOMContentLoaded', function() {
    const siBtn = document.getElementById('si-btn');
    const noBtn = document.getElementById('no-btn');
    const preguntaElem = document.getElementById('pregunta');
    const registroRespuestasElem = document.getElementById('registro-respuestas'); // Elemento de historial de respuestas
    let ultimoSintomaId = parseInt(localStorage.getItem('ultimoSintomaId')) || 0; // Recuperar el último sintoma almacenado
    let preguntaCount = parseInt(localStorage.getItem('preguntaCount')) || 0; // Recuperar el contador de preguntas
    let respuestasSI = parseInt(localStorage.getItem('respuestasSI')) || 0; // Contador de respuestas "SI"
    let respuestasNO = parseInt(localStorage.getItem('respuestasNO')) || 0; // Contador de respuestas "NO"
    let historialPreguntasRespuestas = JSON.parse(localStorage.getItem('historialPreguntasRespuestas')) || []; // Recuperar historial

    // Función para actualizar el historial en el DOM
    function actualizarHistorial(pregunta, respuesta) {
        // Guardamos el historial
        historialPreguntasRespuestas.push({ pregunta, respuesta });
        localStorage.setItem('historialPreguntasRespuestas', JSON.stringify(historialPreguntasRespuestas));

        // Actualizamos el cuadro de registro de preguntas y respuestas
        const li = document.createElement('li');
        li.textContent = `Pregunta: ${pregunta} - Respuesta: ${respuesta}`;
        registroRespuestasElem.appendChild(li);
    }

    // Cargar historial inicial
    historialPreguntasRespuestas.forEach(item => {
        const li = document.createElement('li');
        li.textContent = `Pregunta: ${item.pregunta} - Respuesta: ${item.respuesta}`;
        registroRespuestasElem.appendChild(li);
    });

    function actualizarPregunta(respuesta) {
        fetch(`http://localhost:3000/siguiente_pregunta?respuesta=${respuesta}&ultimoSintomaId=${ultimoSintomaId}`)
            .then(response => response.json())
            .then(data => {
                if (data.diagnostico) {
                    // Si recibimos un diagnóstico, redirigimos a la página de diagnóstico
                    window.location.href = `interfaz3.html?diagnostico=${encodeURIComponent(data.diagnostico)}`;
                    localStorage.setItem('diagnosticoActual', data.diagnostico);

                    resetProgress();
                } else if (data.pregunta) {
                    const nuevaPregunta = data.pregunta;
                    preguntaElem.textContent = nuevaPregunta;
                    ultimoSintomaId = data.sintomaId || ultimoSintomaId;
                    localStorage.setItem('ultimoSintomaId', ultimoSintomaId); // Guardar el último sintoma
                    preguntaCount++;
                    localStorage.setItem('preguntaCount', preguntaCount); // Guardar el progreso de las preguntas

                    // Actualizar historial
                    actualizarHistorial(nuevaPregunta, respuesta);
                } else {
                    preguntaElem.textContent = 'No se encontraron más síntomas.';
                }
            })
            .catch(error => {
                console.error('Error al obtener la siguiente pregunta:', error);
                preguntaElem.textContent = 'Ocurrió un error al obtener la pregunta.';
            });
    }

    function resetProgress() {
        localStorage.removeItem('ultimoSintomaId');
        localStorage.removeItem('preguntaCount');
        localStorage.removeItem('respuestasSI');
        localStorage.removeItem('respuestasNO');
        localStorage.removeItem('historialPreguntasRespuestas');
        historialPreguntasRespuestas = [];
        registroRespuestasElem.innerHTML = ''; // Limpiar el historial en pantalla
    }

    siBtn.addEventListener('click', function() {
        respuestasSI++;
        respuestasNO = 0;
        localStorage.setItem('respuestasSI', respuestasSI);
        localStorage.setItem('respuestasNO', respuestasNO);
        actualizarPregunta('SI');
    });

    noBtn.addEventListener('click', function() {
        respuestasNO++;
        respuestasSI = 0;
        localStorage.setItem('respuestasSI', respuestasSI);
        localStorage.setItem('respuestasNO', respuestasNO);
        actualizarPregunta('NO');
    });
});



