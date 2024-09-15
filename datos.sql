-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2024 at 07:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datos`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosticos`
--

CREATE TABLE `diagnosticos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `diagnosticos`
--

INSERT INTO `diagnosticos` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Acné', 'Inflamación de las glándulas sebáceas que provoca la aparición de espinillas, puntos negros y quistes.'),
(2, 'Eczema', 'Una condición inflamatoria crónica que causa picazón, enrojecimiento y descamación de la piel.'),
(3, 'Psoriasis', 'Enfermedad autoinmune que provoca la aparición de parches rojos, escamosos y secos en la piel.'),
(4, 'Rosácea', ' Trastorno crónico que causa enrojecimiento facial, vasos sanguíneos visibles y a veces pápulas y pústulas.'),
(5, 'Vitiligo', 'Pérdida de pigmento en la piel que provoca manchas blancas irregulares en diferentes partes del cuerpo.'),
(6, 'Dermatitis seborreica', 'Inflamación crónica de la piel que provoca escamas, enrojecimiento y picazón, a menudo en el cuero cabelludo.'),
(7, 'Líquen plano', 'Enfermedad inflamatoria que afecta la piel y las membranas mucosas, causando erupciones planas, moradas y a menudo pruriginosas.'),
(8, 'Hiedra venenosa (Dermatitis por contacto)', 'Reacción alérgica a la exposición a plantas como la hiedra venenosa, que causa picazón, enrojecimiento y ampollas.'),
(9, 'Impetigo', 'Infección bacteriana contagiosa que causa llagas rojas que se convierten en costras amarillentas.'),
(10, 'Onicomicosis', 'Infección fúngica de las uñas que causa cambios en su color, forma y textura.'),
(11, 'Dermatitis Atópica', 'Una enfermedad inflamatoria crónica de la piel que causa picazón intensa, enrojecimiento y descamación.'),
(12, 'Urticaria', 'Reacción alérgica que provoca ronchas rojas en la piel acompañadas de picazón.'),
(13, 'Celulitis', 'Infección bacteriana de la piel que causa enrojecimiento, hinchazón y dolor.'),
(14, 'Dermatitis por contacto', 'Inflamación de la piel causada por la exposición a un irritante o alérgeno.'),
(15, 'Escabiosis (Sarna)', 'Infección de la piel causada por ácaros, que provoca picazón intensa y erupciones.'),
(16, 'Pitiriasis rosada', 'Erupción cutánea benigna que suele comenzar con una mancha circular en el torso, seguida de una propagación en el cuerpo.'),
(17, 'Melanoma', 'Tipo de cáncer de piel que se desarrolla en las células productoras de pigmento y puede ser mortal si no se trata.'),
(18, 'Queratosis actínica', 'Lesión escamosa en la piel causada por la exposición prolongada al sol, que puede convertirse en cáncer.'),
(19, 'Alopecia areata', 'Enfermedad autoinmune que provoca la caída repentina del cabello en áreas redondeadas del cuero cabelludo.'),
(20, 'Foliculitis', 'Inflamación o infección de los folículos pilosos que provoca la aparición de protuberancias rojas o llenas de pus.'),
(21, 'Pénfigo vulgar', 'Enfermedad autoinmune que provoca ampollas y úlceras en la piel y las membranas mucosas.'),
(22, 'Hidrosadenitis supurativa', 'Enfermedad crónica de la piel caracterizada por la formación de nódulos dolorosos y abscesos en áreas como las axilas e ingle.'),
(23, 'Eritema multiforme', 'Reacción cutánea caracterizada por manchas rojas en forma de diana, a menudo provocada por infecciones o medicamentos.'),
(24, 'Lupus eritematoso sistémico', 'Enfermedad autoinmune crónica que afecta múltiples órganos, incluyendo la piel, provocando erupciones y lesiones.'),
(25, 'Dermatomiositis', 'Enfermedad inflamatoria rara que provoca debilidad muscular y erupciones cutáneas características.'),
(26, 'Esclerodermia', 'Enfermedad autoinmune que causa endurecimiento y engrosamiento de la piel.'),
(27, 'Pénfigo foliáceo', 'Enfermedad autoinmune que causa ampollas superficiales en la piel, especialmente en el cuero cabelludo, cara y tronco.'),
(28, 'Eritrodermia', 'Inflamación severa que cubre gran parte de la piel, caracterizada por enrojecimiento, descamación y picazón.'),
(29, 'Angioedema', 'Hinchazón rápida debajo de la piel, a menudo causada por una reacción alérgica, que puede ser peligrosa si afecta las vías respiratorias.'),
(30, 'Quiste sebáceo', 'Bulto benigno en la piel causado por la acumulación de sebo en una glándula sebácea bloqueada.'),
(31, 'Carcinoma basocelular', 'Tipo de cáncer de piel que se desarrolla en las células basales, que crece lentamente y rara vez se disemina.'),
(32, 'Carcinoma de células escamosas', 'Cáncer de piel que se forma en las células escamosas y puede invadir tejidos cercanos o diseminarse a otras partes del cuerpo.'),
(33, 'Queratosis pilar', 'Afección benigna de la piel caracterizada por pequeñas protuberancias ásperas, generalmente en brazos, muslos o mejillas.'),
(34, 'Urticaria', 'Reacción alérgica que provoca ronchas rojas y picazón en la piel, a menudo desencadenadas por alergias o estrés.'),
(35, 'Melanoma', 'Tipo de cáncer de piel que se desarrolla en los melanocitos y se caracteriza por manchas o lunares de color oscuro que cambian de forma o tamaño.'),
(36, 'Hidradenitis supurativa', 'Enfermedad crónica de la piel caracterizada por la aparición de nódulos dolorosos y abscesos.'),
(37, 'Herpes Zóster', 'Reactivación del virus de la varicela-zóster que causa un sarpullido doloroso y ampollas en la piel.'),
(38, 'Alopecia Areata', 'Trastorno autoinmune que provoca la pérdida de cabello en áreas redondas o irregulares del cuero cabelludo u otras partes del cuerpo.'),
(39, 'Quiste pilonidal', 'Infección crónica que se desarrolla en la base de la columna vertebral.'),
(40, 'Escabiosis (Sarna)', 'Infestación cutánea causada por ácaros que provoca una intensa picazón y erupciones en la piel.'),
(41, 'Dermatitis Herpetiforme', 'Enfermedad crónica caracterizada por erupciones con picazón y ampollas, a menudo asociada con la enfermedad celíaca.'),
(42, 'Queloides', 'Crecimiento excesivo de tejido cicatricial en la piel, que forma protuberancias duras y elevadas después de una lesión o cirugía.'),
(43, 'Hiperhidrosis', 'Condición que provoca sudoración excesiva en diferentes partes del cuerpo, independientemente de la temperatura o nivel de actividad.'),
(44, 'Celulitis infecciosa', 'Infección bacteriana grave de la piel.'),
(45, 'Eritema nodoso', 'Enfermedad inflamatoria de la piel caracterizada por nódulos rojos y dolorosos.'),
(46, 'Pityriasis versicolor', 'Infección fúngica que provoca manchas de piel descoloridas.'),
(47, 'Esclerodermia', 'Trastorno autoinmune que provoca el endurecimiento y estiramiento de la piel.');

-- --------------------------------------------------------

--
-- Table structure for table `sintomas`
--

CREATE TABLE `sintomas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `sintomas`
--

INSERT INTO `sintomas` (`id`, `descripcion`) VALUES
(1, 'Aparición de espinillas o granos (comedones)'),
(2, 'Puntos negros en la piel.'),
(3, 'Pápulas (protuberancias rojas pequeñas).'),
(4, 'Pústulas (protuberancias llenas de pus).'),
(5, 'Nódulos (lesiones dolorosas más profundas en la piel).'),
(6, 'Cicatrices o marcas posteriores a la inflamación.'),
(7, 'Piel grasosa o exceso de producción de sebo.'),
(8, 'Picazón intensa, que puede ser peor por la noche.'),
(9, 'Parches rojos o marrones en la piel.'),
(10, 'Piel seca y agrietada.'),
(11, 'Inflamación o hinchazón de las áreas afectadas.'),
(12, 'Engrosamiento de la piel en las zonas con rascado prolongado (liquenificación).'),
(13, 'Ampollas que supuran y se convierten en costras.'),
(14, 'Sensibilidad o irritación ante ciertos factores (como jabón o cambios climáticos).'),
(15, 'Parches de piel roja cubiertos de escamas plateadas (placas).'),
(16, 'Piel seca y agrietada que puede sangrar.'),
(17, 'Picazón o ardor en las áreas afectadas.'),
(18, 'Uñas engrosadas, con hoyos o decoloración (psoriasis ungueal).'),
(19, 'Dolor en las articulaciones (en caso de psoriasis artrítica).'),
(20, 'Aparición de placas en zonas como cuero cabelludo, codos, rodillas o parte baja de la espalda.'),
(21, 'Aumento de la sensibilidad en las áreas afectadas.'),
(22, 'Enrojecimiento persistente en la cara (especialmente en mejillas, nariz, frente y barbilla).'),
(23, 'Aparición de pequeños vasos sanguíneos visibles (telangiectasias).'),
(24, 'Protuberancias rojas o pústulas similares al acné.'),
(25, 'Piel sensible que arde o pica.'),
(26, 'Nariz inflamada o agrandada (rinofima) en casos graves.'),
(27, 'Ojos irritados o enrojecidos (rosácea ocular).'),
(28, 'Sensación de calor o ardor en el rostro.'),
(29, 'Manchas blancas irregulares en la piel.'),
(30, 'Pérdida de color en el cabello (en el cuero cabelludo, cejas, pestañas o barba).'),
(31, 'Despigmentación alrededor de la boca, ojos, nariz o genitales.'),
(32, 'Cambios en el color del interior de la boca (mucosa bucal).'),
(33, 'Sensibilidad de las áreas despigmentadas a la luz solar (fotodermatosis).'),
(34, 'Piel más vulnerable a quemaduras solares en las áreas afectadas.'),
(35, 'No suele haber picazón o dolor, pero algunas personas reportan molestias leves en las áreas despigmentadas.'),
(36, 'Parches grasosos o escamosos en la piel.'),
(37, 'Enrojecimiento en áreas como el cuero cabelludo, cara y parte superior del cuerpo.'),
(38, 'Caspa persistente en el cuero cabelludo.'),
(39, 'Picazón, especialmente en las áreas afectadas.'),
(40, 'Costras amarillas o blancas en el cuero cabelludo.'),
(41, 'Descamación en zonas con glándulas sebáceas activas (cejas, nariz, detrás de las orejas).'),
(42, 'Caída del cabello en casos más graves.'),
(43, 'Pápulas planas, de color púrpura o rojizo en la piel.'),
(44, 'Picazón intensa, especialmente en los brotes activos.'),
(45, 'Líneas blancas en forma de encaje dentro de las lesiones (estrías de Wickham).'),
(46, 'Lesiones que aparecen en muñecas, tobillos, parte baja de la espalda y cuello.'),
(47, 'Llagas en la boca o genitales, en algunos casos.'),
(48, 'Engrosamiento y decoloración de las uñas afectadas.'),
(49, 'Caída de cabello o alopecia en las áreas afectadas por el cuero cabelludo.'),
(50, 'Picazón intensa tras el contacto con la planta.'),
(51, 'Erupciones rojas y líneas de ampollas en la piel.'),
(52, 'Formación de ampollas llenas de líquido claro.'),
(53, 'Hinchazón en las áreas afectadas.'),
(54, 'Sensación de ardor o escozor en la piel.'),
(55, 'Costras y cicatrización a medida que las ampollas se secan.'),
(56, 'Posible fiebre o malestar en casos más severos de exposición extensa.'),
(57, 'Aparición de llagas rojas que estallan y forman costras de color miel.'),
(58, 'Lesiones generalmente alrededor de la nariz y la boca, pero también en extremidades.'),
(59, 'Ampollas llenas de líquido que se rompen fácilmente.'),
(60, 'Picazón en las áreas afectadas.'),
(61, 'Enrojecimiento e inflamación de la piel alrededor de las llagas.'),
(62, 'Formación de úlceras superficiales bajo las costras.'),
(63, 'Aumento de la sensibilidad o dolor en las lesiones infectadas.'),
(64, 'Uñas descoloridas (amarillentas, marrones o blancas).'),
(65, 'Uñas engrosadas y deformadas.'),
(66, 'Fragilidad o desmoronamiento de las uñas afectadas.'),
(67, 'Acumulación de material debajo de la uña.'),
(68, 'Separación de la uña del lecho ungueal (onicólisis).'),
(69, 'Olor desagradable proveniente de la uña infectada.'),
(70, 'Dolor o molestias al caminar o al usar zapatos.'),
(71, 'Picazón intensa, especialmente en la noche.'),
(72, 'Parches secos y escamosos en la piel.'),
(73, 'Enrojecimiento e inflamación de la piel.'),
(74, 'Fisuras o grietas en las áreas afectadas.'),
(75, 'Engrosamiento de la piel debido al rascado continuo.'),
(76, 'Aparición de ampollas que pueden supurar y formar costras.'),
(77, 'Sensibilidad y mayor reactividad a irritantes o alérgenos.'),
(78, 'Ronchas rojas o blancas en la piel.'),
(79, 'Picazón intensa que puede empeorar por la noche.'),
(80, 'Sensación de ardor o escozor en las áreas afectadas.'),
(81, 'Ronchas que cambian de forma, tamaño o ubicación rápidamente.'),
(82, 'Inflamación de los labios, párpados o garganta en casos severos.'),
(83, 'Erupciones que aparecen y desaparecen sin dejar cicatrices.'),
(84, 'Sensibilidad aumentada de la piel ante el calor, frío o presión.'),
(85, 'Manchas oscuras o lunares que cambian de tamaño, forma o color.'),
(86, 'Bordes irregulares o desiguales en las manchas.'),
(87, 'Variación de colores dentro de la misma lesión (negro, marrón, rojo, azul).'),
(88, 'Lunares que sangran o supuran.'),
(89, 'Lesiones cutáneas que pican o duelen.'),
(90, 'Áreas de piel con textura diferente (elevadas, rugosas).'),
(91, 'Manchas de color oscuro en palmas, plantas de los pies o debajo de las uñas.'),
(92, 'Enrojecimiento en la piel que se extiende rápidamente.'),
(93, 'Hinchazón en la zona afectada.'),
(94, 'Sensación de calor en la piel inflamada.'),
(95, 'Dolor o sensibilidad al tacto.'),
(96, 'Ampollas o áreas de piel con supuración.'),
(97, 'Fiebre y escalofríos en casos severos.'),
(98, 'Ganglios linfáticos inflamados cerca del área afectada.'),
(99, 'Erupciones cutáneas dolorosas que suelen aparecer en un solo lado del cuerpo.'),
(100, 'Ampollas llenas de líquido que se rompen y forman costras.'),
(101, 'Sensación de ardor, hormigueo o picazón antes de que aparezca la erupción.'),
(102, 'Dolor intenso que puede persistir incluso después de que desaparezcan las ampollas (neuralgia postherpética).'),
(103, 'Fiebre y malestar general.'),
(104, 'Sensibilidad extrema al tacto en el área afectada.'),
(105, 'Dolor de cabeza o sensibilidad a la luz.'),
(106, 'Pérdida de cabello en áreas redondas o irregulares del cuero cabelludo u otras partes del cuerpo.'),
(107, 'Uñas frágiles o con pequeños hoyos.'),
(108, 'Picazón o ardor en las áreas donde se cae el cabello.'),
(109, 'Aparición de cabello fino y blanco en zonas afectadas antes de la recuperación.'),
(110, 'Crecimiento desigual del cabello durante la recuperación.'),
(111, 'Áreas lisas y sin cicatrices en la piel donde se ha perdido el cabello.'),
(112, 'Caída repentina de grandes cantidades de cabello al cepillarse o lavarse.'),
(113, 'Erupción en forma de mariposa sobre las mejillas y la nariz.'),
(114, 'Dolor e hinchazón articular.'),
(115, 'Sensibilidad a la luz solar que causa erupciones.'),
(116, 'Fatiga extrema y debilidad general.'),
(117, 'Caída de cabello en parches o de forma difusa.'),
(118, 'Úlceras en la boca o la nariz.'),
(119, 'Dolor en el pecho al respirar profundamente (pleuritis).'),
(120, 'Picazón intensa, especialmente por la noche.'),
(121, 'Pequeñas ampollas o pústulas en la piel.'),
(122, 'Pequeñas líneas o surcos en la piel que indican los túneles de los ácaros.'),
(123, 'Costras gruesas en casos de sarna costrosa.'),
(124, 'Erupciones rojas que pueden convertirse en llagas debido al rascado.'),
(125, 'Hinchazón leve en las áreas afectadas.'),
(126, 'Lesiones en pliegues de la piel, como entre los dedos, muñecas y codos.'),
(127, 'Erupciones cutáneas con picazón intensa.'),
(128, 'Ampollas pequeñas y agrupadas que pueden llenarse de líquido claro.'),
(129, 'Lesiones en codos, rodillas, glúteos, espalda y cuero cabelludo.'),
(130, 'Picazón y ardor severo antes de la aparición de las erupciones.'),
(131, 'Sensibilidad a los alimentos con gluten, ya que está asociada con la enfermedad celíaca.'),
(132, 'Lesiones que tienden a aparecer y desaparecer de forma cíclica.'),
(133, 'Enrojecimiento y descamación en las áreas afectadas.'),
(134, 'Crecimiento de cicatrices elevadas y duras.'),
(135, 'Protuberancias rosadas, rojas o más oscuras que la piel circundante.'),
(136, 'Picazón o sensibilidad en la cicatriz.'),
(137, 'Dolor o molestias en la cicatriz, especialmente si está expuesta a la fricción.'),
(138, 'Expansión progresiva de la cicatriz más allá del área original de la lesión.'),
(139, 'Superficie lisa y brillante de la cicatriz.'),
(140, 'Endurecimiento de la piel en la zona del queloide.'),
(141, 'Sudoración excesiva, especialmente en manos, pies, axilas o cara.'),
(142, 'Manos o pies mojados y fríos al tacto.'),
(143, 'Desarrollo de infecciones cutáneas por la humedad constante.'),
(144, 'Olor corporal fuerte debido a la proliferación bacteriana.'),
(145, 'Goteo visible de sudor, incluso en reposo o sin causa aparente.'),
(146, 'Ropa mojada debido al exceso de sudor.'),
(147, 'Manchas de sudor frecuentes en ropa o zapatos.'),
(148, 'Enrojecimiento e inflamación de la piel.'),
(149, 'Dolor en las áreas afectadas.'),
(150, 'Fiebre.'),
(151, 'Ampollas en la piel.'),
(152, 'Sensación de calor en la piel afectada.'),
(153, 'Llagas o úlceras en la piel.'),
(154, 'Cansancio o fatiga extrema.'),
(155, 'Nódulos rojos y dolorosos en las piernas.'),
(156, 'Fiebre.'),
(157, 'Fatiga.'),
(158, 'Dolor en las articulaciones.'),
(159, 'Inflamación en los tobillos.'),
(160, 'Piel sensible al tacto.'),
(161, 'Lesiones cutáneas que pueden cambiar de color.'),
(162, 'Manchas blancas, rosadas o marrones en la piel.'),
(163, 'Descamación leve en las áreas afectadas.'),
(164, 'Picazón leve.'),
(165, 'Sudoración excesiva.'),
(166, 'Piel afectada que no se broncea al sol.'),
(167, 'Pérdida de pigmentación en las áreas afectadas.'),
(168, 'Sensación de sequedad en la piel.'),
(169, 'Piel gruesa y tensa en manos y cara.'),
(170, 'Úlceras en las puntas de los dedos.'),
(171, 'Dificultad para mover las articulaciones.'),
(172, 'Reflujo gastroesofágico.'),
(173, 'Manos y pies fríos (fenómeno de Raynaud).'),
(174, 'Dificultad para respirar.'),
(175, 'Hinchazón de las manos y pies.'),
(176, 'Inflamación extensa de la piel.'),
(177, 'Piel enrojecida y descamada.'),
(178, 'Dolor en las articulaciones.'),
(179, 'Fiebre alta.'),
(180, 'Picazón intensa.'),
(181, 'Pérdida de cabello en áreas afectadas.'),
(182, 'Deshidratación severa.'),
(183, 'Hinchazón de las manos y pies.'),
(184, 'Inflamación de los labios.'),
(185, 'Dificultad para respirar.'),
(186, 'Dolor abdominal.'),
(187, 'Ojos hinchados.'),
(188, 'Sensación de hormigueo en las extremidades.'),
(189, 'Hinchazón rápida de la piel.'),
(190, 'Bulto bajo la piel.'),
(191, 'Dolor al tocar la zona afectada.'),
(192, 'Secreción maloliente.'),
(193, 'Piel enrojecida alrededor del quiste.'),
(194, 'Inflamación progresiva.'),
(195, 'Crecimiento del bulto.'),
(196, 'Formación de pus.'),
(197, 'Lesiones en la piel que no cicatrizan.'),
(198, 'Manchas ásperas en la piel.'),
(199, 'Formación de úlceras en la piel.'),
(200, 'Dolor en la zona afectada.'),
(201, 'Lesiones elevadas y escamosas.'),
(202, 'Sangrado o supuración.'),
(203, 'Cambio de color en la piel.'),
(204, 'Pequeños bultos en la piel.'),
(205, 'Piel áspera al tacto.'),
(206, 'Resequedad en la piel.'),
(207, 'Picazón leve.'),
(208, 'Piel enrojecida.'),
(209, 'Inflamación leve alrededor de los bultos.'),
(210, 'Piel de aspecto rugoso.'),
(211, 'Aparición de ronchas rojas.'),
(212, 'Picazón intensa.'),
(213, 'Hinchazón de las zonas afectadas.'),
(214, 'Sensación de ardor.'),
(215, 'Lesiones que cambian de forma.'),
(216, 'Ronchas que aparecen y desaparecen.'),
(217, 'Manchas rosadas o rojas.'),
(218, 'Aparición de un lunar oscuro.'),
(219, 'Cambio de forma en un lunar existente.'),
(220, 'Manchas negras o marrones irregulares.'),
(221, 'Dolor en el lunar afectado.'),
(222, 'Sangrado en la zona del lunar.'),
(223, 'Crecimiento rápido del lunar.'),
(224, 'Bordes irregulares del lunar.'),
(225, 'Formación de abscesos dolorosos.'),
(226, 'Secreción de pus.'),
(227, 'Cicatrices en la piel.'),
(228, 'Inflamación de las glándulas sudoríparas.'),
(229, 'Dolor crónico en la zona afectada.'),
(230, 'Lesiones recurrentes.'),
(231, 'Formación de túneles bajo la piel.'),
(232, 'Dolor en la piel antes de la erupción.'),
(233, 'Ampollas llenas de líquido.'),
(234, 'Sensación de ardor.'),
(235, 'Fiebre leve.'),
(236, 'Fatiga general.'),
(237, 'Sensibilidad en la piel.'),
(238, 'Dolor punzante en la zona afectada.'),
(239, 'Pérdida repentina de cabello en parches.'),
(240, 'Piel suave en las áreas sin cabello.'),
(241, 'Comezón en el cuero cabelludo.'),
(242, 'Fragilidad del cabello.'),
(243, 'Zonas sin vello en el cuerpo.'),
(244, 'Dolor en las áreas sin cabello.'),
(245, 'Irritación en el cuero cabelludo.'),
(246, 'Dolor en la base de la columna vertebral.'),
(247, 'Inflamación de la zona afectada.'),
(248, 'Formación de pus.'),
(249, 'Dificultad para sentarse.'),
(250, 'Bulto palpable en la zona sacra.'),
(251, 'Fiebre en casos severos.'),
(252, 'Sangrado ocasional.'),
(253, 'Picazón intensa, especialmente de noche.'),
(254, 'Erupciones en los pliegues de la piel.'),
(255, 'Pequeñas ampollas llenas de líquido.'),
(256, 'Marcas de túneles en la piel.'),
(257, 'Enrojecimiento de la piel.'),
(258, 'Formación de costras.'),
(259, 'Piel engrosada en las zonas afectadas.'),
(260, 'Erupciones con ampollas pequeñas.'),
(261, 'Picazón intensa.'),
(262, 'Dolor leve en las zonas afectadas.'),
(263, 'Formación de costras.'),
(264, 'Piel escamosa.'),
(265, 'Aparición de ampollas simétricas.'),
(266, 'Sensación de ardor.'),
(267, 'Crecimiento excesivo de cicatrices.'),
(268, 'Dolor en la cicatriz.'),
(269, 'Cicatrices de color rojizo.'),
(270, 'Cicatrices elevadas.'),
(271, 'Sensación de picor en la cicatriz.'),
(272, 'Formación de cicatrices duras.'),
(273, 'Crecimiento progresivo de la cicatriz.'),
(274, 'Sudoración excesiva en las palmas.'),
(275, 'Sudoración en los pies.'),
(276, 'Ropa constantemente húmeda.'),
(277, 'Olor corporal fuerte.'),
(278, 'Sudoración nocturna.'),
(279, 'Irritación en la piel debido a la humedad.'),
(280, 'Manos frías y húmedas.'),
(281, 'Enrojecimiento de la piel.'),
(282, 'Hinchazón en la zona afectada.'),
(283, 'Dolor al tacto.'),
(284, 'Formación de ampollas.'),
(285, 'Piel caliente al tacto.'),
(286, 'Fatiga general.'),
(287, 'Fiebre en casos avanzados.'),
(288, 'Aparición de nódulos rojos y dolorosos.'),
(289, 'Dolor en las articulaciones.'),
(290, 'Fiebre leve.'),
(291, 'Zonas sensibles al tacto.'),
(292, 'Hinchazón de los tobillos.'),
(293, 'Nódulos en las piernas.'),
(294, 'Dolor muscular en las áreas afectadas.'),
(295, 'Manchas de piel descolorida.'),
(296, 'Picazón leve.'),
(297, 'Descamación de la piel.'),
(298, 'Piel grasa en las zonas afectadas.'),
(299, 'Sensibilidad al sol.'),
(300, 'Manchas blancas o rosadas.'),
(301, 'Piel seca en las zonas afectadas.'),
(302, 'Endurecimiento de la piel.'),
(303, 'Dolor en las articulaciones.'),
(304, 'Manchas blancas en la piel.'),
(305, 'Pérdida de flexibilidad en las manos.'),
(306, 'Sensación de tirantez en la piel.'),
(307, 'Cambios en el color de la piel.'),
(308, 'Ulceraciones en las yemas de los dedos.'),
(309, 'Manchas blancas o rosadas en la piel.'),
(310, 'Descamación fina en áreas afectadas.'),
(311, 'Pérdida de pigmento en las manchas.'),
(312, 'Picazón leve en las zonas afectadas.'),
(313, 'Aparición de manchas en el tronco y brazos.'),
(314, 'Empeoramiento con el calor o sudoración.'),
(315, 'Recurrencia frecuente de las manchas.'),
(316, 'Endurecimiento y engrosamiento de la piel.'),
(317, 'Pérdida de flexibilidad en las articulaciones.'),
(318, 'Aparición de manchas o áreas descoloridas en la piel.'),
(319, 'Hinchazón y dolor en las manos y pies.'),
(320, 'Fenómeno de Raynaud (dedos blancos o azules con el frío).'),
(321, 'Dificultad para respirar debido al daño pulmonar.'),
(322, 'Problemas digestivos, como acidez y dificultad para tragar.');

-- --------------------------------------------------------

--
-- Table structure for table `sintomas_diagnosticos`
--

CREATE TABLE `sintomas_diagnosticos` (
  `id` int(11) NOT NULL,
  `sintoma_id` int(11) NOT NULL,
  `diagnostico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `sintomas_diagnosticos`
--

INSERT INTO `sintomas_diagnosticos` (`id`, `sintoma_id`, `diagnostico_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 3),
(16, 16, 3),
(17, 17, 3),
(18, 18, 3),
(19, 19, 3),
(20, 20, 3),
(21, 21, 3),
(22, 22, 4),
(23, 23, 4),
(24, 24, 4),
(25, 25, 4),
(26, 26, 4),
(27, 27, 4),
(28, 28, 4),
(29, 29, 5),
(30, 30, 5),
(31, 31, 5),
(32, 32, 5),
(33, 33, 5),
(34, 34, 5),
(35, 35, 5),
(36, 36, 6),
(37, 37, 6),
(38, 38, 6),
(39, 39, 6),
(40, 40, 6),
(41, 41, 6),
(42, 42, 6),
(43, 43, 7),
(44, 44, 7),
(45, 45, 7),
(46, 46, 7),
(47, 47, 7),
(48, 48, 8),
(49, 49, 8),
(50, 50, 8),
(51, 51, 8),
(52, 52, 8),
(53, 53, 8),
(54, 54, 8),
(55, 55, 9),
(56, 56, 9),
(57, 57, 9),
(58, 58, 9),
(59, 59, 9),
(60, 60, 9),
(61, 61, 9),
(62, 62, 10),
(63, 63, 10),
(64, 64, 10),
(65, 65, 10),
(66, 66, 10),
(67, 67, 10),
(68, 68, 10),
(69, 69, 11),
(70, 70, 11),
(71, 71, 11),
(72, 72, 11),
(73, 73, 11),
(74, 74, 11),
(75, 75, 11),
(76, 76, 12),
(77, 77, 12),
(78, 78, 12),
(79, 79, 12),
(80, 80, 12),
(81, 81, 12),
(82, 82, 12),
(83, 83, 13),
(84, 84, 13),
(85, 85, 13),
(86, 86, 13),
(87, 87, 13),
(88, 88, 13),
(89, 89, 13),
(90, 90, 14),
(91, 91, 14),
(92, 92, 14),
(93, 93, 14),
(94, 94, 14),
(95, 95, 14),
(96, 96, 14),
(97, 97, 15),
(98, 98, 15),
(99, 99, 15),
(100, 100, 15),
(101, 101, 15),
(102, 102, 15),
(103, 103, 15),
(104, 104, 16),
(105, 105, 16),
(106, 106, 16),
(107, 107, 16),
(108, 108, 16),
(109, 109, 16),
(110, 110, 16),
(111, 111, 17),
(112, 112, 17),
(113, 113, 17),
(114, 114, 17),
(115, 115, 17),
(116, 116, 17),
(117, 117, 17),
(118, 118, 18),
(119, 119, 18),
(120, 120, 18),
(121, 121, 18),
(122, 122, 18),
(123, 123, 18),
(124, 124, 18),
(125, 125, 19),
(126, 126, 19),
(127, 127, 19),
(128, 128, 19),
(129, 129, 19),
(130, 130, 19),
(131, 131, 19),
(132, 132, 20),
(133, 133, 20),
(134, 134, 20),
(135, 135, 20),
(136, 136, 20),
(137, 137, 20),
(138, 138, 20),
(139, 139, 21),
(140, 140, 21),
(141, 141, 21),
(142, 142, 21),
(143, 143, 21),
(144, 144, 21),
(145, 145, 21),
(146, 146, 22),
(147, 147, 22),
(148, 148, 22),
(149, 149, 22),
(150, 150, 22),
(151, 151, 22),
(152, 152, 22),
(153, 153, 23),
(154, 154, 23),
(155, 155, 23),
(156, 156, 23),
(157, 157, 23),
(158, 158, 23),
(159, 159, 23),
(160, 160, 24),
(161, 161, 24),
(162, 162, 24),
(163, 163, 24),
(164, 164, 24),
(165, 165, 24),
(166, 166, 24),
(167, 167, 25),
(168, 168, 25),
(169, 169, 25),
(170, 170, 25),
(171, 171, 25),
(172, 172, 25),
(173, 173, 25),
(174, 174, 26),
(175, 175, 26),
(176, 176, 27),
(177, 177, 27),
(178, 178, 27),
(179, 179, 27),
(180, 180, 27),
(181, 181, 27),
(182, 182, 27),
(183, 183, 28),
(184, 184, 28),
(185, 185, 28),
(186, 186, 28),
(187, 187, 28),
(188, 188, 28),
(189, 189, 28),
(190, 190, 29),
(191, 191, 29),
(192, 192, 29),
(193, 193, 29),
(194, 194, 29),
(195, 195, 29),
(196, 196, 29),
(197, 197, 30),
(198, 198, 30),
(199, 199, 30),
(200, 200, 30),
(201, 201, 30),
(202, 202, 30),
(203, 203, 30),
(204, 204, 31),
(205, 205, 31),
(206, 206, 31),
(207, 207, 31),
(208, 208, 31),
(209, 209, 31),
(210, 210, 31),
(211, 211, 32),
(212, 212, 32),
(213, 213, 32),
(214, 214, 32),
(215, 215, 32),
(216, 216, 32),
(217, 217, 32),
(218, 218, 33),
(219, 219, 33),
(220, 220, 33),
(221, 221, 33),
(222, 222, 33),
(223, 223, 33),
(224, 224, 33),
(225, 225, 34),
(226, 226, 34),
(227, 227, 34),
(228, 228, 34),
(229, 229, 34),
(230, 230, 34),
(231, 231, 34),
(232, 232, 35),
(233, 233, 35),
(234, 234, 35),
(235, 235, 35),
(236, 236, 35),
(237, 237, 35),
(238, 238, 35),
(239, 239, 36),
(240, 240, 36),
(241, 241, 36),
(242, 242, 36),
(243, 243, 36),
(244, 244, 36),
(245, 245, 36),
(246, 246, 37),
(247, 247, 37),
(248, 248, 37),
(249, 249, 37),
(250, 250, 37),
(251, 251, 37),
(252, 252, 37),
(253, 253, 38),
(254, 254, 38),
(255, 255, 38),
(256, 256, 38),
(257, 257, 38),
(258, 258, 38),
(259, 259, 38),
(260, 260, 39),
(261, 261, 39),
(262, 262, 39),
(263, 263, 39),
(264, 264, 39),
(265, 265, 39),
(266, 266, 39),
(267, 267, 40),
(268, 268, 40),
(269, 269, 40),
(270, 270, 40),
(271, 271, 40),
(272, 272, 40),
(273, 273, 40),
(274, 274, 41),
(275, 275, 41),
(276, 276, 41),
(277, 277, 41),
(278, 278, 41),
(279, 279, 41),
(280, 280, 41),
(281, 281, 42),
(282, 282, 42),
(283, 283, 42),
(284, 284, 42),
(285, 285, 42),
(286, 286, 42),
(287, 287, 42),
(288, 288, 43),
(289, 289, 43),
(290, 290, 43),
(291, 291, 43),
(292, 292, 43),
(293, 293, 43),
(294, 294, 43),
(295, 295, 44),
(296, 296, 44),
(297, 297, 44),
(298, 298, 44),
(299, 299, 44),
(300, 300, 44),
(301, 301, 44),
(302, 302, 45),
(303, 303, 45),
(304, 304, 45),
(305, 305, 45),
(306, 306, 45),
(307, 307, 45),
(308, 308, 45),
(337, 309, 46),
(338, 310, 46),
(339, 311, 46),
(340, 312, 46),
(341, 313, 46),
(342, 314, 46),
(343, 315, 46),
(344, 316, 47),
(345, 317, 47),
(346, 318, 47),
(347, 319, 47),
(348, 320, 47),
(349, 321, 47),
(350, 322, 47);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosticos`
--
ALTER TABLE `diagnosticos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sintomas`
--
ALTER TABLE `sintomas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sintomas_diagnosticos`
--
ALTER TABLE `sintomas_diagnosticos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sintoma_id` (`sintoma_id`),
  ADD KEY `diagnostico_id` (`diagnostico_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosticos`
--
ALTER TABLE `diagnosticos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `sintomas`
--
ALTER TABLE `sintomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `sintomas_diagnosticos`
--
ALTER TABLE `sintomas_diagnosticos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sintomas_diagnosticos`
--
ALTER TABLE `sintomas_diagnosticos`
  ADD CONSTRAINT `sintomas_diagnosticos_ibfk_1` FOREIGN KEY (`sintoma_id`) REFERENCES `sintomas` (`id`),
  ADD CONSTRAINT `sintomas_diagnosticos_ibfk_2` FOREIGN KEY (`diagnostico_id`) REFERENCES `diagnosticos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
