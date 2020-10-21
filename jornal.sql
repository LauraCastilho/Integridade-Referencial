-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2020 às 01:57
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codcategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entretenimento'),
(3, 'Política'),
(4, 'Saúde'),
(5, 'Científicas'),
(6, 'Turismo'),
(7, 'Educação'),
(8, 'Infra Estrutura'),
(9, 'Moda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codnoticia` int(11) NOT NULL,
  `noticia` text DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codcategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codnoticia`, `noticia`, `titulo`, `codRedator`, `codcategoria`, `dia`, `mes`, `ano`) VALUES
(1, 'O senador Eduardo Braga (MDB-AM) informou hoje (11), em suas redes sociais, que foi diagnosticado com o novo coronavírus, que provoca a covid-19. Segundo ele, os sintomas apresentados são leves. \"Amigos, infelizmente, testei positivo para Covid-19, apesar de todos os cuidados tomados desde o início da pandemia. Graças a Deus, os sintomas têm sido leves e não comprometem meu estado geral de saúde\", postou.... - Veja mais em https://noticias.uol.com.br/ultimas-noticias/agencia-brasil/2020/10/11/senador-eduardo-braga-e-diagnosticado-com-covid-19.htm?cmpid=copiaecola', 'Senador Eduardo Braga é diagnosticado com covid-19... - Veja mais em https://noticias.uol.com.br/ultimas-noticias/agencia-brasil/2020/10/11/senador-eduardo-braga-e-diagnosticado-com-covid-19.htm?cmpid=copiaecola', 1, 3, 11, 10, 2020),
(2, 'Integrantes do Congresso Nacional se movimentam para questionar o governo Jair Bolsonaro sobre o envio de agentes da Agência Brasileira de Inteligência (Abin) à Conferência do Clima das Nações Unidas (COP-25) em dezembro do ano passado, revelado pelo Estadão. Deputados criticam o Executivo por ter monitorado organizações não governamentais (ONGs), integrantes da comitiva brasileira e representantes de delegações estrangeiras, conforme trouxe a reportagem. O assunto deve ser discutido pela Comissão Mista de Controle das Atividades de Inteligência, formada por deputados e senadores. O colegiado foi o mesmo que recentemente ouviu o ministro da Justiça e Segurança Pública, André Mend... - Veja mais em https://noticias.uol.com.br/ultimas-noticias/agencia-estado/2020/10/11/parlamentares-querem-questionar-governo-sobre-abin-em-evento-da-onu--.htm?cmpid=copiaecola', 'Parlamentares querem questionar governo sobre Abin em evento da ONU... - Veja mais em https://noticias.uol.com.br/ultimas-noticias/agencia-estado/2020/10/11/parlamentares-querem-questionar-governo-sobre-abin-em-evento-da-onu--.htm?cmpid=copiaecola', 4, 3, 1, 9, 2020),
(5, 'O presidente da Câmara dos Deputados, Rodrigo Maia (DEM-RJ), questionou hoje a decisão do presidente do STF (Supremo Tribunal Federal), Luiz Fux, que reverteu a soltura do traficante André do Rap, determinada pelo ministro Marco Aurélio Mello. O deputado pregou respeito à lei e sugeriu ter havido falhas na conduta do Ministério Público no processo. \"Já vi casos de pessoas que ficaram presas oito meses, um ano, um ano e meio sem oferecimento de denúncia, apenas com uma prisão preventiva. Será que é o certo?\", questionou Maia em entrevista à GloboNews. \"Se o procurador [do MP] tivesse, no prazo de 90 dias, respeitado a lei, certamente o ministro Marco Aurélio não teria liberado o tr... - Veja mais em https://noticias.uol.com.br/politica/ultimas-noticias/2020/10/11/se-mp-tivesse-respeitado-a-lei-chefe-do-pcc-nao-sairia-da-prisao-diz-maia.htm?cmpid=copiaecola', 'Se MP tivesse respeitado a lei, chefe do PCC não sairia da prisão, diz Maia... - Veja mais em https://noticias.uol.com.br/politica/ultimas-noticias/2020/10/11/se-mp-tivesse-respeitado-a-lei-chefe-do-pcc-nao-sairia-da-prisao-diz-maia.htm?cmpid=copiaecola', 3, 3, 6, 8, 2019),
(6, 'O Santos venceu mais uma e se aproxima do G4 do Campeonato Brasileiro. Na tarde de hoje (11), o Peixe bateu o Grêmio na Vila Belmiro por 2 a 1, com dois gols de pênaltis. Ambos foram batidos e convertidos por Marinho, de formas diferentes: um de cavadinha, outro forte no canto. Diego Souza fez para os visitantes, em jogo cheio de emoções nos minutos finais (Maicon parou em João Paulo e David Braz foi expulso). Com o resultado, o Santos chega a 24 pontos e assume a sexta colocação, empatado com o Fluminense (os cariocas levam vantagem em número de vitórias, 7 a 6). Agora, a equipe treinada por Cuca está a um ponto do G4 e do Internacional, que tem 25. O Grêmio se mantém com 17 pont... - Veja mais em https://www.uol.com.br/esporte/futebol/ultimas-noticias/2020/10/11/santos-x-gremio.htm?cmpid=copiaecola', 'Marinho decide com dois de pênalti, Santos vence Grêmio e se aproxima do G4... - Veja mais em https://www.uol.com.br/esporte/futebol/ultimas-noticias/2020/10/11/santos-x-gremio.htm?cmpid=copiaecola', 5, 1, 5, 10, 2004),
(7, 'Depois de a Holanda bater seu recorde diário de infecções por covid-19, a Rússia registrou um novo recorde no número de casos diários de coronavírus neste domingo, elevando a contagem no país, o quarto com mais infecções no mundo, para 1,3 milhão. A força-tarefa do coronavírus no país afirmou ter registrado 13.634 novos casos nas últimas 24 horas, incluindo 4.501 em Moscou.... - Veja mais em https://noticias.uol.com.br/ultimas-noticias/reuters/2020/10/11/russia-registra-novo-recorde-em-numero-de-casos-diarios-de-covid-19.htm?cmpid=copiaecola', 'Após Holanda, Rússia registra novo recorde de casos diários de covid-19... - Veja mais em https://noticias.uol.com.br/ultimas-noticias/reuters/2020/10/11/russia-registra-novo-recorde-em-numero-de-casos-diarios-de-covid-19.htm?cmpid=copiaecola', 5, 4, 9, 6, 2020),
(8, 'Pela primeira vez desde 10 de maio, a média móvel de mortes por covid-19 no Brasil ficou abaixo de 600. Os 270 óbitos registrados nas últimas 24h fizeram com que, hoje, essa métrica ficasse em 590. As informações são do consórcio de veículos de imprensa do qual o UOL faz parte. Para medir a situação das mortes por causa da covid-19, especialistas indicam usar a média móvel dos óbitos, que calcula a média de registros observada nos últimos sete dias. A operação é a mais adequada para observar a tendência das estatísticas, por equilibrar as variações abruptas dos números ao longo da semana.... - Veja mais em https://noticias.uol.com.br/saude/ultimas-noticias/redacao/2020/10/11/coronavitus-covid-19-mortes-e-casos-11-de-outubro.htm?cmpid=copiaecola', 'Média móvel de mortes por covid fica abaixo de 600 pela 1ª vez desde maio... - Veja mais em https://noticias.uol.com.br/saude/ultimas-noticias/redacao/2020/10/11/coronavitus-covid-19-mortes-e-casos-11-de-outubro.htm?cmpid=copiaecola', 6, 4, 3, 12, 2019),
(9, 'O ator André Gonçalves se emocionou hoje no palco do Domingão do Faustão. Depois de uma apresentação na Dança dos Famosos, que garantiu o segundo lugar na competição para Gonçalves e a professora Paula Santos, o ator recebeu elogios de Luciano Camargo, parte do júri artístico. O cantor afirmou que acompanha Gonçalves desde 1995. \"Desde que fui convidado para vir aqui, fiquei pensando no que eu ia falar para você\", começou Luciano. \"Acompanho esse menino, esse homem desde que ele estreou na televisão em \'A Próxima Vítima\'. O seu crescimento é visível todos os dias. André, você é 10 na vida, atuando e dançando. Obrigada por existir. Eu amo você!\", declarou o cantor... - Veja mais em https://tvefamosos.uol.com.br/noticias/redacao/2020/10/11/andre-goncalves-se-emociona-com-luciano-camargo-obrigada-por-existir.htm?cmpid=copiaecola', 'André Gonçalves se emociona com Luciano Camargo: \'Obrigada por existir\'... - Veja mais em https://tvefamosos.uol.com.br/noticias/redacao/2020/10/11/andre-goncalves-se-emociona-com-luciano-camargo-obrigada-por-existir.htm?cmpid=copiaecola', 1, 2, 4, 7, 2016),
(10, 'Desde ontem, foram registrados 544 novos óbitos por covid-19 em todo o país, totalizando 150.236 mortes pelo novo coronavírus. As informações são do consórcio de veículos de imprensa do qual o UOL faz parte. O levantamento feito junto às secretarias de saúde dos estados apontam 24.650 novos casos registrados nas últimas 24 horas e um total de 5.081.840 diagnósticos desde o início da pandemia.... - Veja mais em https://noticias.uol.com.br/saude/ultimas-noticias/redacao/2020/10/10/covid-19-coronavirus-mortes-casos-10-de-outubro.htm?cmpid=copiaecola', 'Brasil registra 544 novas mortes por covid-19 em 24 h e soma 150.236 óbitos... - Veja mais em https://noticias.uol.com.br/saude/ultimas-noticias/redacao/2020/10/10/covid-19-coronavirus-mortes-casos-10-de-outubro.htm?cmpid=copiaecola', 4, 4, 12, 4, 2020),
(11, 'Kylie Jenner chamou a atenção dos seguidores nas redes sociais ao exibir uma sequência de fotos. Em uma das imagens, a influenciadora digital mostra a combinação de unhas especiais na mesma cor que uma bolsa luxuosa. O item é chamado de Birkin e faz parte da grife Hermés. Produzida com legítimo couro de crocodilo, a peça é avaliada em 80 mil dólares. A cotação atual aponta o valor de R$ 450 mil para a bolsa.... - Veja mais em https://www.uol.com.br/universa/noticias/redacao/2020/10/07/kylie-jenner-faz-combinacao-de-unhas-com-bolsa-luxuosa-de-r-450-mil.htm?cmpid=copiaecola', 'Kylie Jenner faz combinação de unhas com bolsa luxuosa de R$ 450 mil... - Veja mais em https://www.uol.com.br/universa/noticias/redacao/2020/10/07/kylie-jenner-faz-combinacao-de-unhas-com-bolsa-luxuosa-de-r-450-mil.htm?cmpid=copiaecola', 6, 9, 7, 2, 2014),
(12, 'Chega outubro, a gente já sabe. É o \"mês das crianças\". Eu, particularmente, fico atenta e celebro a alegria das existências infantis desde setembro, mês dos erês, dos ibejis, de Cosme e Damião. E, nesta coluna que procura refletir a moda a partir de lugares pouco \"acessados\", minha proposta hoje é começar perguntando: você já parou pra pensar que a moda pode ser uma ferramenta de educação e diálogo entre adultos e crianças? Falar com as crianças ou sobre as crianças é sempre estar com um olho no agora e outro lá na frente, no futuro. Tudo que a gente constrói com elas chegará no futuro transformado - ou não. O que será que a gente pode evoluir ou perpetuar a partir de como a gent... - Veja mais em https://www.uol.com.br/universa/colunas/ana-paula-xongani/2020/10/08/por-que-voce-veste-seus-filhos-assim.htm?cmpid=copiaecola', 'Crianças: moda tem a ver com educação?... - Veja mais em https://www.uol.com.br/universa/colunas/ana-paula-xongani/2020/10/08/por-que-voce-veste-seus-filhos-assim.htm?cmpid=copiaecola', 3, 9, 6, 4, 2018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `ddd`, `telefone`, `cidade`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Fernanda', 'Lima', 'fernanda@gmail.com', 11, '96414-0098', 'Ribeirão Pires', 1, 2, 4, 2004),
(3, 'João', 'Henrique', 'joao@gmail.com', 11, '99780-8237', 'Mauá', 1, 5, 7, 2001),
(4, 'Gustavo', 'Fernandes', 'gusta@gmail.com', 11, '99720-5654', 'Santo André', 2, 17, 10, 2002),
(5, 'Laura', 'Rodrigues', 'laura@gmail.com', 11, '99658-8523', 'Ribeirão Pires', 5, 4, 5, 2000),
(6, 'Jucilene', 'Elias', 'ju@gmail.com', 11, '95632-5412', 'Mauá', 6, 17, 6, 1984);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codcategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codnoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codcategoria` (`codcategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codcategoria`) REFERENCES `categoria` (`codcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
