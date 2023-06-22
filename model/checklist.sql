-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2023 a las 18:22:37
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `checklist`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `descripción` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `descripción`) VALUES
(1, '¿Los requerimientos están claramente definidos y son comprensibles para todas las partes interesadas?'),
(2, '¿Los requerimientos son específicos y están redactados de manera precisa, sin ambigüedades?'),
(3, '¿Los requerimientos son completos, abarcando todas las funcionalidades y características necesarias?'),
(4, '¿Los requerimientos son consistentes entre sí y no presentan contradicciones?'),
(5, '¿Los requerimientos son medibles y verificables? ¿Es posible evaluar si se han cumplido o no?'),
(6, '¿Los requerimientos son realistas y alcanzables desde el punto de vista técnico y de recursos disponibles?'),
(7, '¿Los requerimientos están organizados y estructurados de manera lógica y coherente?'),
(8, '¿Los requerimientos son relevantes y están alineados con los objetivos y necesidades del proyecto y de los usuarios finales?'),
(9, '¿Los requerimientos son priorizados de acuerdo a su importancia y valor para el negocio o los usuarios?'),
(10, '¿Los requerimientos son rastreables, es decir, es posible vincularlos con los casos de prueba y las funcionalidades implementadas en el software?'),
(11, '¿El diseño del software sigue los principios de modularidad y cohesión?'),
(12, '¿El diseño del software utiliza patrones de diseño reconocidos para resolver problemas comunes?'),
(13, '¿El diseño del software es flexible y extensible para permitir futuras modificaciones sin afectar gravemente otras partes del sistema?'),
(14, '¿El diseño del software sigue las mejores prácticas y convenciones de codificación?'),
(15, '¿El diseño del software está bien documentado, incluyendo diagramas de clase, diagramas de secuencia, y otros artefactos visuales?'),
(16, '¿El diseño del software está optimizado para un rendimiento eficiente y utiliza adecuadamente los recursos del sistema?'),
(17, '¿El diseño del software considera la seguridad de los datos y la protección contra posibles amenazas y vulnerabilidades?'),
(18, '¿El diseño del software permite la reutilización de componentes y módulos en otros proyectos o partes del sistema?'),
(19, '¿El diseño del software cumple con los requisitos de usabilidad y accesibilidad para los usuarios finales?'),
(20, '¿El diseño del software ha sido revisado y validado por otros miembros del equipo o expertos en el dominio?'),
(21, '¿El análisis de software identifica y comprende adecuadamente los requisitos funcionales del sistema?'),
(22, '¿El análisis de software identifica y comprende adecuadamente los requisitos no funcionales del sistema?'),
(23, '¿El análisis de software ha considerado los posibles casos de uso y escenarios de interacción con el sistema?'),
(24, '¿El análisis de software ha identificado y gestionado correctamente los riesgos y las limitaciones del sistema?'),
(25, '¿El análisis de software ha realizado un desglose claro y completo de las tareas y actividades necesarias para implementar el sistema?'),
(26, '¿El análisis de software ha considerado los aspectos de integración con otros sistemas o componentes existentes?'),
(27, '¿El análisis de software ha realizado una estimación realista de los recursos necesarios para desarrollar el sistema?'),
(28, '¿El análisis de software ha identificado y documentado adecuadamente las dependencias entre los diferentes componentes o módulos del sistema?'),
(29, '¿El análisis de software ha considerado los aspectos de seguridad y privacidad de la información en el sistema?'),
(30, '¿El análisis de software ha sido revisado y validado por otras partes interesadas o expertos en el dominio?'),
(31, '¿El desarrollo de software sigue las mejores prácticas y estándares de codificación?'),
(32, '¿El desarrollo de software utiliza un control de versiones adecuado para gestionar el código fuente y las modificaciones?'),
(33, '¿El desarrollo de software ha realizado pruebas unitarias exhaustivas para garantizar la calidad de cada componente o módulo?'),
(34, '¿El desarrollo de software ha implementado adecuadamente las funcionalidades y características requeridas en los requisitos?'),
(35, '¿El desarrollo de software ha seguido principios de modularidad y reutilización de código?'),
(36, '¿El desarrollo de software ha considerado la escalabilidad y rendimiento del sistema ante volúmenes de datos o usuarios crecientes?'),
(37, '¿El desarrollo de software ha implementado medidas de seguridad adecuadas para proteger los datos y prevenir posibles vulnerabilidades?'),
(38, '¿El desarrollo de software ha realizado pruebas de integración para verificar la correcta comunicación entre componentes y módulos?'),
(39, '¿El desarrollo de software ha seguido un proceso de revisión de código y corrección de errores o defectos identificados?'),
(40, '¿El desarrollo de software ha documentado adecuadamente el código fuente, incluyendo comentarios y explicaciones relevantes?'),
(41, '¿El producto de software cumple con todos los requisitos funcionales establecidos en los documentos de especificación?'),
(42, '¿El producto de software cumple con todos los requisitos no funcionales establecidos en los documentos de especificación?'),
(43, '¿El producto de software es fácil de usar y tiene una interfaz intuitiva para los usuarios finales?'),
(44, '¿El producto de software es estable y no presenta fallos o errores frecuentes durante su funcionamiento?'),
(45, '¿El producto de software es eficiente y cumple con los requisitos de rendimiento establecidos?'),
(46, '¿El producto de software cumple con los estándares de calidad establecidos, tanto internos como externos?'),
(47, '¿El producto de software se integra correctamente con otros sistemas o componentes externos?'),
(48, '¿El producto de software ha pasado por pruebas exhaustivas de validación y verificación?'),
(49, '¿El producto de software ha sido revisado y validado por los usuarios finales o las partes interesadas relevantes?'),
(50, '¿El producto de software cumple con los estándares de seguridad y privacidad establecidos?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `observacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`id`, `estado`, `observacion`) VALUES
(1, 'Si', ''),
(2, 'Si', ''),
(3, 'Si', ''),
(4, 'Si', ''),
(5, 'Si', ''),
(6, 'Si', ''),
(7, 'Si', ''),
(8, 'Si', ''),
(9, 'Si', ''),
(10, 'Si', ''),
(11, 'Si', ''),
(12, 'Si', ''),
(13, 'Si', ''),
(14, 'Si', ''),
(15, 'Si', ''),
(16, 'Si', ''),
(17, 'Si', ''),
(18, 'Si', ''),
(19, 'Si', ''),
(20, 'Si', ''),
(21, 'Si', ''),
(22, 'Si', ''),
(23, 'Si', ''),
(24, 'Si', ''),
(25, 'Si', ''),
(26, 'Si', ''),
(27, 'Si', ''),
(28, 'Si', ''),
(29, 'Si', ''),
(30, 'Si', ''),
(31, 'Si', ''),
(32, 'Si', ''),
(33, 'Si', ''),
(34, 'Si', ''),
(35, 'Si', ''),
(36, 'Si', ''),
(37, 'Si', ''),
(38, 'Si', ''),
(39, 'Si', ''),
(40, 'Si', ''),
(41, 'Si', ''),
(42, 'Si', ''),
(43, 'Si', ''),
(44, 'Si', ''),
(45, 'Si', ''),
(46, 'Si', ''),
(47, 'Si', ''),
(48, 'Si', ''),
(49, 'Si', ''),
(50, 'Si', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
