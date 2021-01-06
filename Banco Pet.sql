-- --------------------------------------------------------
-- Anfitrião:                    127.0.0.1
-- Versão do servidor:           10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table pet.adocao: ~0 rows (approximately)
/*!40000 ALTER TABLE `adocao` DISABLE KEYS */;
/*!40000 ALTER TABLE `adocao` ENABLE KEYS */;

-- Dumping data for table pet.animal: ~4 rows (approximately)
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` (`id`, `nome_animal`, `raca`, `descricao`, `imagem`, `cd_cliente`) VALUES
	(10, 'Felix', 'Vira lata ', 'Gato dorminhoco ', 'cc763b33bdb6e3591f405983bfc096e6.jpg', 0),
	(13, 'Felix', 'Vira lata ', 'gato animado ', '817ee81e0e63aee3daeedce27d6e1ff9.jpg', 0),
	(15, 'Fofão', 'Vira lata ', 'Filhote ', 'f622fa8eea122e90d3315addae850e77.png', 0),
	(16, 'Faisca ', 'vira lata ', 'Cachorro dócil. ', '60df1778f31df6a823521e1bb7dcc33f.jpg', 0);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;

-- Dumping data for table pet.animal_servico: ~0 rows (approximately)
/*!40000 ALTER TABLE `animal_servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal_servico` ENABLE KEYS */;

-- Dumping data for table pet.bairro: ~0 rows (approximately)
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;

-- Dumping data for table pet.cidade: ~0 rows (approximately)
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;

-- Dumping data for table pet.cliente: ~0 rows (approximately)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Dumping data for table pet.endereco: ~0 rows (approximately)
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;

-- Dumping data for table pet.estado: ~0 rows (approximately)
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;

-- Dumping data for table pet.events: ~2 rows (approximately)
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`, `title`, `start_date`, `end_date`, `color`) VALUES
	(6, 'Reuniao ', '2020-12-10 08:20:32', '2020-12-10 11:00:32', '#0071c5'),
	(7, 'Tosa ', '2020-12-15 19:28:35', '2020-12-15 19:28:35', '');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Dumping data for table pet.pais: ~0 rows (approximately)
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;

-- Dumping data for table pet.produto: ~9 rows (approximately)
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`id`, `titulo`, `descricao`, `imagem`, `categoria`) VALUES
	(2, 'Brinquedo Chalesco Kitty Ball Cores Variadas', '- Diversão garantida;\r\n- Proporciona atividade física;\r\n- Elimina o estresse.', 'brinquedo chalesco.jpg', 'brinquedo'),
	(3, 'Coleira MSD Antiparasitas Scalibor', '- Age contra pulga e carrapato depois do contato com o animal (controla a infestação no ambiente);\r\n- Possui tecnologia exclusiva e inovadora, não contém cheiro;\r\n- Garante alta proteção contra picada', 'coleira antiparasita.jpg ', 'acessorio'),
	(4, 'Bolsa de Transporte Bichinho Chic Baby Azul', '- Resistente;\r\n- Prática e confortável;\r\n- Ideal para cães e gatos de pequeno porte;\r\n- Possui presilha interna para prender na coleira.', 'bolsa.jpg', 'acessorio'),
	(17, 'Shampoo', 'Tratamento de infestações parasitárias por pulgas (Ctenocephalides felis) e carrapatos (Rhipicephalus sanguineus) em cães.', 'eb1445b161e383d45d0a29bc09971bf4.jpg', NULL),
	(19, 'Bebedouro e comedouro em bambu ', 'Produto 2 em 1;  Bolw em inox;  Com estilo rústico e irreverente; Indicado para cachorros e gatos.', 'dfa8e3339d9bd31b467258876365c7da.jpg', NULL),
	(20, 'Alimento Girassol Graúdo - 400 g', ' Rico em Proteínas, Óleos e Minerais; Uso proibido na alimentação de ruminantes.', '32b82908a2c56609de3678c9f80b12d9.jpg', NULL),
	(21, 'Ração Nectar para Beija-Flor', ' Fórmula nova; Embalagem prática; Enriquecida com vitaminas.', '457e0bb57faff4114d8a7c8bbcfbd46f.jpg', NULL),
	(23, 'Areia Sanitária Pet Grãos Finos para Gatos', 'Fácil de limpar; Controle superior de odor; Alta capacidade de absorção do xixi.', '4d20d1dd194d9261665ce8871fe73fc1.jpg', NULL),
	(24, 'Brinquedo Sonoro Frango Gritador', ' Com som; Leve e macio; Formato engraçado; Totalmente atóxico.', '5bd333ccd5400efe4fcff5b47da43c57.jpg', NULL);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

-- Dumping data for table pet.servico: ~4 rows (approximately)
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` (`id`, `titulo`, `descricao`, `imagem`) VALUES
	(22, 'Banho e tosa ', 'Limpeza e higienização de cães e gatos. Incluindo o corte das unhas e escovação dos dentes. ', '97749622d4b07b62b779a8709fa997b5.jpg'),
	(25, 'Passeador ', 'Contrate um herói para passear com o seu cachorro no dia e a hora que você quiser!', '71caabf3c7e7ecfbc34f3c5ed2284c71.jpg'),
	(26, 'Vacina ', 'Aplicação de vacinas. Antes da aplicação o seu pet é examinado para ver se está apto a ser imunizado.', 'e85de977d2a81cc1eb1377c059b6d7c4.jpg'),
	(28, 'Cirurgia ', 'Cirurgia realizada por veterinários especializados. ', '70b70780bfa98ab20b7e72508ad54410.jpg');
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;

-- Dumping data for table pet.servico_produto: ~0 rows (approximately)
/*!40000 ALTER TABLE `servico_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `servico_produto` ENABLE KEYS */;

-- Dumping data for table pet.sobre: ~6 rows (approximately)
/*!40000 ALTER TABLE `sobre` DISABLE KEYS */;
INSERT INTO `sobre` (`id`, `titulo`, `descricao`, `imagem`) VALUES
	(1, 'Como tudo começou ', 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os em', 'logo.jpg'),
	(3, 'Adoção ', 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os em', 'frase.jpg'),
	(16, 'Missão ', 'Proporcionar aos nossos clientes o melhor em serviços e produtos de Pet Shop transmitindo qualidade e confiança através do amor que temos pelos bichinhos para todos que sentem necessidade de cuidado.', 'capa.jpg'),
	(17, 'Visão ', 'Estar em um patamar elevado de atendimento, sendo uma empresa de referência no ramo de pet shop na região extremoeste catarinense.\r\n\r\n', '15371a.jpg'),
	(18, 'Valores', 'Amor e dedicação aos pets; Higiene e qualidade de serviços; Atendimento especializado; Ética profissional; Trabalho em equipe; Competência na segurança.', '254157-P48ON3-118.jpg');
/*!40000 ALTER TABLE `sobre` ENABLE KEYS */;

-- Dumping data for table pet.usuario: ~0 rows (approximately)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `funcao`) VALUES
	(1, 'Dilci ', 'dilcylopes@gmail.com', '123', 'administracao');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
