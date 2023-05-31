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
CREATE DATABASE IF NOT EXISTS `db_aula` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_aula`;

-- Copiando estrutura para tabela db_aula.agenda
CREATE TABLE IF NOT EXISTS `agenda` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `veterinario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paciente` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consulta` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia` date NOT NULL,
  `horario` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.agenda: ~0 rows (aproximadamente)
INSERT INTO `agenda` (`id`, `veterinario`, `paciente`, `consulta`, `dia`, `horario`, `created_at`, `updated_at`) VALUES
	(1, 'Dayanna', 'Napoleão', 'castração', '2023-05-26', '21:16', '2023-06-01 00:13:13', '2023-06-01 00:13:13'),
	(2, 'Dr. Julia Vertuoso', 'Napoleão', 'castração', '2023-05-20', '09:45', '2023-06-01 00:44:44', '2023-06-01 00:44:44'),
	(3, 'Dra. Dayanna de Campos', 'Olivia', 'vacina', '2023-05-22', '07:30', '2023-06-01 00:45:36', '2023-06-01 00:45:36'),
	(4, 'Dra. Dayanna de Campos', 'Cacau', 'cesarea', '2023-05-04', '15:00', '2023-06-01 00:46:18', '2023-06-01 00:46:18');

-- Copiando estrutura para tabela db_aula.brinquedo
CREATE TABLE IF NOT EXISTS `brinquedo` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estoque` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.brinquedo: ~0 rows (aproximadamente)
INSERT INTO `brinquedo` (`id`, `nome`, `cor`, `estoque`, `valor`, `created_at`, `updated_at`) VALUES
	(3, 'Arranhador', 'amarelo', '34', 'R$ 23,00', '2023-06-01 00:46:46', '2023-06-01 00:46:46'),
	(4, 'Caminha', 'Multi cores', '56', 'R$ 23,00', '2023-06-01 00:47:06', '2023-06-01 00:47:06'),
	(5, 'Mordedor', 'vermelho', '56', 'R$ 23,00', '2023-06-01 00:56:39', '2023-06-01 00:56:39'),
	(6, 'Bolinhas', 'amarelo', '51', 'R$ 23,00', '2023-06-01 00:56:54', '2023-06-01 00:56:54');

-- Copiando estrutura para tabela db_aula.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.categoria: ~0 rows (aproximadamente)
INSERT INTO `categoria` (`id`, `nome`, `created_at`, `updated_at`) VALUES
	(1, 'Paciente cirúrgico', NULL, NULL),
	(2, 'Paciente consulta', NULL, NULL),
	(3, 'Paciente vacina', NULL, NULL),
	(4, 'Felinos', NULL, NULL),
	(5, 'Roedores', NULL, NULL);

-- Copiando estrutura para tabela db_aula.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.failed_jobs: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_aula.leituradaju
CREATE TABLE IF NOT EXISTS `leituradaju` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_leitura` date NOT NULL,
  `hora_leitura` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_sensor` double(8,2) NOT NULL,
  `sensor_id` bigint unsigned DEFAULT NULL,
  `mac_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leituradaju_sensor_id_foreign` (`sensor_id`),
  KEY `leituradaju_mac_id_foreign` (`mac_id`),
  CONSTRAINT `leituradaju_mac_id_foreign` FOREIGN KEY (`mac_id`) REFERENCES `mac` (`id`),
  CONSTRAINT `leituradaju_sensor_id_foreign` FOREIGN KEY (`sensor_id`) REFERENCES `sensor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.leituradaju: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_aula.mac
CREATE TABLE IF NOT EXISTS `mac` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contador` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.mac: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_aula.medicamento
CREATE TABLE IF NOT EXISTS `medicamento` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lote` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validade` date NOT NULL,
  `estoque` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.medicamento: ~0 rows (aproximadamente)
INSERT INTO `medicamento` (`id`, `nome`, `lote`, `validade`, `estoque`, `created_at`, `updated_at`) VALUES
	(1, 'Analgésicos', '128842', '2027-07-21', '82', '2023-06-01 00:36:34', '2023-06-01 00:36:34'),
	(2, 'Anti-inflamatórios', '158751', '2029-12-19', '57', '2023-06-01 00:37:12', '2023-06-01 00:37:12'),
	(3, 'Antibióticos', '1526778', '2033-07-30', '69', '2023-06-01 00:37:45', '2023-06-01 00:37:45'),
	(4, 'Antialérgico', '1636835', '2031-08-21', '51', '2023-06-01 00:38:18', '2023-06-01 00:38:18'),
	(5, 'Antipulgas e Carrapatos', '32642132', '2036-07-16', '79', '2023-06-01 00:38:50', '2023-06-01 00:38:50');

-- Copiando estrutura para tabela db_aula.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.migrations: ~0 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_04_14_165129_create_usuario', 1),
	(6, '2023_04_28_175149_create_categorias_table', 1),
	(7, '2023_05_12_170835_mac', 1),
	(8, '2023_05_12_171209_sensor', 1),
	(9, '2023_05_12_171249_leitura_da_ju', 1),
	(10, '2023_05_17_170949_agenda', 1),
	(11, '2023_05_17_171025_brinquedo', 1),
	(12, '2023_05_17_171025_brinquedos', 1),
	(13, '2023_05_26_170815_medicamento', 1);

-- Copiando estrutura para tabela db_aula.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.password_resets: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_aula.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contador` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.sensor: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela db_aula.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.users: ~0 rows (aproximadamente)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@admin.com', NULL, '$2y$10$xwrD2TvMmHiTASksfGQif.YaU3LZVygqMKOqQQNcEj1Kls4Q08TYi', NULL, '2023-05-31 23:53:18', '2023-05-31 23:53:18');

-- Copiando estrutura para tabela db_aula.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomepet` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categoria_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `usuario_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela db_aula.usuario: ~0 rows (aproximadamente)
INSERT INTO `usuario` (`id`, `nome`, `nomepet`, `telefone`, `email`, `imagem`, `created_at`, `updated_at`, `categoria_id`) VALUES
	(1, 'Dayanna 1', 'Olivia', '49 9 8883 2143', 'dayannadecampos@hotmail.com', 'imagem/20230531215255.jpg', '2023-06-01 00:40:19', '2023-06-01 00:53:02', 4),
	(2, 'Leticia 2', 'Napoleao', '8524 2584', 'leticia@leticia', 'imagem/20230531214113.jpg', '2023-06-01 00:41:13', '2023-06-01 00:53:11', 4),
	(3, 'Julia', 'Clarita', '2135463', 'julia.v30@aluno.ifsc.edu.br', 'imagem/20230531214208.jpg', '2023-06-01 00:42:08', '2023-06-01 00:42:08', 1),
	(4, 'Maria', 'Bob', '43135436', 'maria@maria', 'imagem/20230531214302.jpg', '2023-06-01 00:43:02', '2023-06-01 00:43:02', 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
