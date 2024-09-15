const express = require('express');
const cors = require('cors');
const connection = require('./database'); 

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

let preguntaCount = 0; // Contador de preguntas realizadas
let respuestasSI = 0; // Contador de respuestas "SI" consecutivas
let respuestasNO = 0; // Contador de respuestas "NO" consecutivas

app.get('/siguiente_pregunta', (req, res) => {
    const { respuesta, ultimoSintomaId } = req.query;
    const maxPreguntas = 7; // Límite de preguntas

    // Actualizamos contadores en función de la respuesta
    if (respuesta === 'SI') {
        respuestasSI++;
        respuestasNO = 0; // Reiniciamos contador de "NO"
    } else if (respuesta === 'NO') {
        respuestasNO++;
        respuestasSI = 0; // Reiniciamos contador de "SI"
    }

    // Verificamos si se han alcanzado 7 "NO" consecutivos
    if (respuestasNO >= maxPreguntas) {
        res.json({ diagnostico: 'Lo sentimos, no pudimos encontrar un diagnóstico para tus síntomas.' });
        resetCounters();
        return;
    }

    // Verificamos si se han alcanzado suficientes "SI" para un diagnóstico
    if (respuestasSI >= 5) {
        let diagnosticoQuery = `
            SELECT d.nombre FROM diagnosticos d
            JOIN sintomas_diagnosticos sd ON d.id = sd.diagnostico_id
            WHERE sd.sintoma_id = ?;`; 

        connection.query(diagnosticoQuery, [ultimoSintomaId], (err, results) => {
            if (err) {
                console.error('Error al consultar el diagnóstico:', err);
                res.status(500).send('Error en la base de datos');
                return;
            }
            if (results.length > 0) {
                res.json({ diagnostico: results[0].nombre }); // Se devuelve el diagnóstico
            } else {
                res.json({ diagnostico: 'No se encontró un diagnóstico específico' });
            }
            resetCounters();
        });

        return; // Salimos de la función si hemos alcanzado un diagnóstico
    }

    // Si aún no se ha llegado a un diagnóstico, se sigue preguntando
    let query = 'SELECT * FROM sintomas WHERE id > ? LIMIT 1';
    let queryParams = [ultimoSintomaId];

    connection.query(query, queryParams, (err, results) => {
        if (err) {
            console.error('Error al consultar los síntomas:', err);
            res.status(500).send('Error en la base de datos');
            return;
        }
        if (results.length > 0) {
            const nuevoSintoma = results[0].descripcion; // Suponiendo que tienes un campo 'descripcion' en la tabla
            res.json({ pregunta: `¿Acaso tienes ${nuevoSintoma}?`, sintomaId: results[0].id });
        } else {
            res.json({ pregunta: 'No se encontraron más síntomas.' });
        }
    });

    preguntaCount++; // Aumentamos el contador de preguntas
});

// Función para restablecer los contadores
function resetCounters() {
    preguntaCount = 0;
    respuestasSI = 0;
    respuestasNO = 0;
}

app.get('/reset_pregunta_count', (req, res) => {
    resetCounters();
    res.json({ message: 'Contador de preguntas reiniciado' });
});

app.listen(port, () => {
    console.log(`Servidor escuchando en http://localhost:${port}`);
});

app.post('/add-symptom', (req, res) => {
    const { symptom, diagnostic } = req.body;  // Asegúrate de que la interfaz pase ambos campos

    if (!symptom || !diagnostic) {
        return res.status(400).send('Faltan datos para agregar el síntoma.');
    }

    // Primero, insertamos el nuevo síntoma en la tabla 'sintomas'
    const addSymptomQuery = `INSERT INTO sintomas (descripcion) VALUES (?)`;
    
    connection.query(addSymptomQuery, [symptom], (err, results) => {
        if (err) {
            console.error('Error al agregar el síntoma:', err);
            return res.status(500).send('Error al agregar el síntoma.');
        }

        const newSymptomId = results.insertId;

        // Luego, obtenemos el ID del diagnóstico desde la tabla 'diagnosticos'
        const getDiagnosticIdQuery = `SELECT id FROM diagnosticos WHERE nombre = ?`;
        
        connection.query(getDiagnosticIdQuery, [diagnostic], (err, diagnosticResults) => {
            if (err || diagnosticResults.length === 0) {
                console.error('Error al encontrar el diagnóstico:', err);
                return res.status(500).send('Error al encontrar el diagnóstico.');
            }

            const diagnosticId = diagnosticResults[0].id;

            // Finalmente, creamos la relación entre el síntoma y el diagnóstico
            const relateSymptomDiagnosticQuery = `
                INSERT INTO sintomas_diagnosticos (sintoma_id, diagnostico_id) VALUES (?, ?)`;

            connection.query(relateSymptomDiagnosticQuery, [newSymptomId, diagnosticId], (err) => {
                if (err) {
                    console.error('Error al relacionar síntoma con diagnóstico:', err);
                    return res.status(500).send('Error al relacionar síntoma con diagnóstico.');
                }

                res.json({ message: 'Síntoma agregado y relacionado con el diagnóstico exitosamente.' });
            });
        });
    });
});

