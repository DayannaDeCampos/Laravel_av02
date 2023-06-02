-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para db_aula
CREATE DATABASE IF NOT EXISTS `db_aula` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_aula`;

-- Copiando estrutura para tabela db_aula.agenda
CREATE TABLE IF NOT EXISTS `agenda` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `veterinario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paciente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consulta` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia` date NOT NULL,
  `horario` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.agenda: ~0 rows (aproximadamente)
INSERT INTO `agenda` (`id`, `veterinario`, `paciente`, `consulta`, `dia`, `horario`, `created_at`, `updated_at`) VALUES
	(1, 'Dra. Dayanna de Campos', 'Napoleão', 'Castração', '2023-06-15', '16:40', '2023-06-02 19:35:56', '2023-06-02 19:37:46'),
	(2, 'Dra. Julia Vertuoso', 'Cacau', 'Castração', '2023-06-30', '16:10', '2023-06-02 19:36:45', '2023-06-02 19:36:45'),
	(3, 'Dr. Luciano Sandrin', 'Olivia', 'Cesarea', '2023-07-13', '08:00', '2023-06-02 19:37:25', '2023-06-02 19:37:25'),
	(4, 'Dr. Julia Vertuoso', 'Clarita', 'Vacinação', '2023-06-13', '17:42', '2023-06-02 19:38:28', '2023-06-02 19:38:28'),
	(5, 'Dra. Dayanna de Campos', 'Bob', 'Laparotomias exploratória', '2023-07-26', '10:02', '2023-06-02 19:40:23', '2023-06-02 19:40:23'),
	(6, 'Dr. Luciano Sandrin', 'Marujo', 'Vacinação', '2023-06-23', '15:42', '2023-06-02 19:40:59', '2023-06-02 19:40:59');

-- Copiando estrutura para tabela db_aula.brinquedo
CREATE TABLE IF NOT EXISTS `brinquedo` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estoque` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.brinquedo: ~0 rows (aproximadamente)
INSERT INTO `brinquedo` (`id`, `nome`, `cor`, `estoque`, `valor`, `created_at`, `updated_at`) VALUES
	(1, 'Caminha', 'Amarelo', '34', 'R$ 23,00', '2023-06-02 20:10:57', '2023-06-02 20:11:30'),
	(2, 'Bolinhas', 'Coloridas', '56', 'R$ 5,00', '2023-06-02 20:11:22', '2023-06-02 20:11:22'),
	(3, 'Roda para Hamster', 'Azul', '80', 'R$ 35,00', '2023-06-02 20:12:35', '2023-06-02 20:12:35'),
	(4, 'Arranhador', 'Marrom', '78', 'R$ 250,00', '2023-06-02 20:16:03', '2023-06-02 20:16:03'),
	(5, 'Cat Nip', 'Verde', '23', 'R$ 30,00', '2023-06-02 20:16:30', '2023-06-02 20:16:30'),
	(6, 'Pelúcia', 'Multi cores', '43', 'R$ 20,00', '2023-06-02 20:17:36', '2023-06-02 20:17:36'),
	(7, 'Mordedor', 'Cores diversas', '100', 'R$ 8,99', '2023-06-02 20:18:59', '2023-06-02 20:18:59');

-- Copiando estrutura para tabela db_aula.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.categoria: ~3 rows (aproximadamente)
INSERT INTO `categoria` (`id`, `nome`, `created_at`, `updated_at`) VALUES
	(1, 'Paciente cirurgia', NULL, NULL),
	(2, 'Paciente vacina', NULL, NULL),
	(3, 'Paciente consulta', NULL, NULL);

-- Copiando estrutura para tabela db_aula.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.failed_jobs: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_aula.leitura
CREATE TABLE IF NOT EXISTS `leitura` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_leitura` date NOT NULL,
  `hora_leitura` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_sensor` double(8,2) NOT NULL,
  `sensor_id` bigint unsigned DEFAULT NULL,
  `mac_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leitura_sensor_id_foreign` (`sensor_id`),
  KEY `leitura_mac_id_foreign` (`mac_id`),
  CONSTRAINT `leitura_mac_id_foreign` FOREIGN KEY (`mac_id`) REFERENCES `mac` (`id`),
  CONSTRAINT `leitura_sensor_id_foreign` FOREIGN KEY (`sensor_id`) REFERENCES `sensor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.leitura: ~0 rows (aproximadamente)
INSERT INTO `leitura` (`id`, `data_leitura`, `hora_leitura`, `valor_sensor`, `sensor_id`, `mac_id`, `created_at`, `updated_at`) VALUES
	(1, '2023-06-15', '15:43', 154.00, 4, 3, '2023-06-02 19:48:43', '2023-06-02 19:48:43'),
	(2, '2023-06-13', '16:33', 35464.00, 7, 2, '2023-06-02 20:31:14', '2023-06-02 20:31:14'),
	(3, '2023-06-24', '19:34', 54.00, 3, 7, '2023-06-02 20:31:39', '2023-06-02 20:31:39'),
	(4, '2023-06-30', '19:36', 354.00, 9, 3, '2023-06-02 20:32:04', '2023-06-02 20:32:04'),
	(5, '2023-07-27', '19:35', 98.00, 1, 6, '2023-06-02 20:32:22', '2023-06-02 20:32:22'),
	(6, '2023-06-27', '07:00', 57.00, 4, 2, '2023-06-02 20:32:55', '2023-06-02 20:32:55');

-- Copiando estrutura para tabela db_aula.mac
CREATE TABLE IF NOT EXISTS `mac` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contador` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.mac: ~9 rows (aproximadamente)
INSERT INTO `mac` (`id`, `nome`, `contador`, `created_at`, `updated_at`) VALUES
	(1, '84:0D:8E:B0:68:8E', 1, NULL, NULL),
	(2, 'CC:50:E3:3B:FE:E9', 2, NULL, NULL),
	(3, '84:0D:8E:B0:82:5C', 3, NULL, NULL),
	(4, 'CC:50:E3:05:19:BA', 4, NULL, NULL),
	(5, '38:2B:78:03:A6:32', 5, NULL, NULL),
	(6, 'DC:4F:22:11:05:A7', 6, NULL, NULL),
	(7, 'CC:50:E3:3C:1B:40', 7, NULL, NULL),
	(8, 'CC:50:E3:3C:0C:99', 8, NULL, NULL),
	(9, 'CC:50:E3:05:18:79', 9, NULL, NULL),
	(10, 'CC:50:E3:3C:1E:52', 10, NULL, NULL);

-- Copiando estrutura para tabela db_aula.medicamento
CREATE TABLE IF NOT EXISTS `medicamento` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lote` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `validade` date NOT NULL,
  `estoque` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.medicamento: ~0 rows (aproximadamente)
INSERT INTO `medicamento` (`id`, `nome`, `lote`, `validade`, `estoque`, `created_at`, `updated_at`) VALUES
	(1, 'Descongestionantes nasais', '25894', '2027-07-14', '30', '2023-06-02 20:21:28', '2023-06-02 20:21:28'),
	(2, 'Analgésicos', '534314', '2032-06-23', '24', '2023-06-02 20:22:08', '2023-06-02 20:22:08'),
	(3, 'Antisépticos', '56415', '2030-09-10', '65', '2023-06-02 20:22:42', '2023-06-02 20:22:42'),
	(4, 'Antidepressivos', '43152', '2035-11-23', '64', '2023-06-02 20:23:13', '2023-06-02 20:23:13'),
	(5, 'Antiinflamatórios', '1526778', '2040-06-29', '89', '2023-06-02 20:23:49', '2023-06-02 20:23:49');

-- Copiando estrutura para tabela db_aula.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.migrations: ~12 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_04_14_165129_create_usuario', 1),
	(6, '2023_04_28_175149_create_categorias_table', 1),
	(7, '2023_05_12_170835_mac', 1),
	(8, '2023_05_12_171209_sensor', 1),
	(10, '2023_05_17_170949_agenda', 1),
	(11, '2023_05_17_171025_brinquedo', 1),
	(12, '2023_05_26_170815_medicamento', 1),
	(13, '2023_05_12_171249_leitura', 2);

-- Copiando estrutura para tabela db_aula.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.password_resets: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_aula.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.personal_access_tokens: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_aula.sensor
CREATE TABLE IF NOT EXISTS `sensor` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contador` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.sensor: ~9 rows (aproximadamente)
INSERT INTO `sensor` (`id`, `nome`, `contador`, `created_at`, `updated_at`) VALUES
	(1, 'Placa UM', 1, NULL, NULL),
	(2, 'Placa DOIS', 2, NULL, NULL),
	(3, 'Placa TRÊS', 3, NULL, NULL),
	(4, 'Placa QUATRO', 4, NULL, NULL),
	(5, 'Placa CINCO', 5, NULL, NULL),
	(6, '	Placa SEIS', 6, NULL, NULL),
	(7, 'Placa SETE', 7, NULL, NULL),
	(8, 'Placa OITO', 8, NULL, NULL),
	(9, 'Placa NOVE', 9, NULL, NULL),
	(10, 'Placa DEZ', 10, NULL, NULL);

-- Copiando estrutura para tabela db_aula.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.users: ~0 rows (aproximadamente)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@admin.com', NULL, '$2y$10$oEVXhulNXIKti1ckYMk.UOnZDktjp.O7fDqxeDBGYlMNqmDpKYSHy', NULL, '2023-06-02 02:32:13', '2023-06-02 02:32:13');

-- Copiando estrutura para tabela db_aula.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomepet` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categoria_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `usuario_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.usuario: ~0 rows (aproximadamente)
INSERT INTO `usuario` (`id`, `nome`, `nomepet`, `telefone`, `email`, `imagem`, `created_at`, `updated_at`, `categoria_id`) VALUES
	(1, 'Laura', 'Hérick', '345313214', 'laura@laura.com', 'imagem/20230602170307.jpg', '2023-06-02 20:03:07', '2023-06-02 20:03:11', 1),
	(2, 'Maria Camargo', 'Dark', '214565246', 'maria@maria.com', 'imagem/20230602170555.jpg', '2023-06-02 20:05:55', '2023-06-02 20:05:55', 2),
	(3, 'Dayanna de Campos', 'Lua', '354631564', 'dayanna@dayanna.com', 'imagem/20230602170808.jpg', '2023-06-02 20:08:08', '2023-06-02 20:08:08', 3),
	(4, 'Diego', 'Teddy', '65463546', 'diego@diego.com', 'imagem/20230602170859.jpg', '2023-06-02 20:08:59', '2023-06-02 20:08:59', 2),
	(5, 'Marcia', 'Charlotte', '5654535474', 'marcia@marcia.com', 'imagem/20230602170948.jpg', '2023-06-02 20:09:48', '2023-06-02 20:09:48', 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
