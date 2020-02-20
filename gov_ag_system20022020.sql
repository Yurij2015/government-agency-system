-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: db
-- Время создания: Фев 20 2020 г., 14:18
-- Версия сервера: 5.7.29
-- Версия PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gov_ag_system`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1582205680);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 1, 'Администратор', NULL, NULL, 1582205250, 1582205250);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `branch`
--

CREATE TABLE `branch` (
  `idbranch` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `branch`
--

INSERT INTO `branch` (`idbranch`, `name`, `description`) VALUES
(1, 'Главный отдел', 'Самый главный отдел'),
(2, 'Не главный отдел', 'Просто отдел');

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `idemployee` int(11) NOT NULL,
  `name` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_idbranch` int(11) NOT NULL,
  `detail` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`idemployee`, `name`, `phone`, `branch_idbranch`, `detail`) VALUES
(1, 'Олег Петров', '+7881898988', 1, 0xf66c156ea406fe806b68e38de49f8a7439386530333964383062386663356539636261306335326166353663633433303937653034616665373463616634383264333435313136616164316436383532457968dece3340604c3e0c51e03faad72219a198cf1eb38722b06c6c15069b1b64f78390bafb7f427f7f7976665eb6030027713989e4efe7d295de3e1748662cd9d13f761cfc1ba436921490b425d6b01cf47eca582ccc7bfe22c3c7a8d1269f61c24d1d1f688ea636c837b2785b02c4255b107b7d0c75803bebb81fb1370425766e1cfa6a0cc46327283bdfe8a8679c465c59c7fb279227ca801c5ba48f8b3cdcf7781cb8862dc1e1d239d467a2f9b0936e49083a87a195225532e3ec6e3a652a791bccaa0ba479e9e4131c5554a43f8b863705b3c2a4a7f7e88b34def8496a44e5a69970f977420fe35eb2da62df6097c7a7fa59f8764cfdf75941c4f008bd5cb8bcc7c3c512f7f58ccbd5ea0c36994acfe3ca158139392046e475918fb628c124e52828bb47d9afd2b1a7b3e1ebd74ca24a3ab232d62d09a8d98a68eb6c3f34c92ab97a2acc6d45af2a91b1f3d9baae5de5b4407236b00bf22c8f70b29a1eb85ca7febf654125d71a1bd7ba71b679959d7d15f821efdf6493b4122108524edcaeeb4efa02d82a8e613c2f4a78038d5bcab39668fbffc63189b5a073792c556fbec798c733238e4887ea66b21f28c878dff4501028542ced5bd94da667074582d3eaa4945237dda814950785e04f9c9fd5a5649f1091116819fbb74439cc1f2aaa80fee4cee57d04543d8330fd97258427fb9bea93b20cefff1c3ef835b862490d94f1b0a68bfe74bbf62e4668e7aa181dd57bfaf0a4c21602921364c78ea7),
(2, 'Иванов Иван', '+7881898984', 1, 0xc38b483933ff67076ea9321257b3f56d66633765343434313866383136623663373164376635303961636266633939306237383335313965663039343236366430383763376362656230386637303061e000740a9c145107671da241aa0d57672944ecba5d9e7469dbdc8ba5baf293dd4d7544766a312e5846abd7f5e2c94a6aa63122fe918d18467669ba5338a1174490bfc04d07e2ca93b47f81e6d612fdb4a1230169ab613cd109aba168d4db9e061ecbed61af65541f041e8360f05ff50d518d679c068b330c61bcdaef979f43e3976f61cf7ddab663bf6d0adb16f6091ee3857ebad830df550376856ce6e4a8c92cd22f4dd8471cbbd7ee1116e3a79a0f3b1ec9a6ffba3c21ea63d844ccf14c737fc1695e7dcfb6a163808a095096b47d5bae9fc06520c08a95b45d3e929d4d90bb63964459895ce33e5f308c0aa6d83c975f4450182ef0cc5cfa3d63a6f4bbf508c23d44fec493fa80aa2e57f5c9cbc193a7f920b440d5b4734210bea23cc5f357679f12daf4c378b30f5ea0f042e6e2a5aa866df77c38cc891e271377f7d83d8a3a919b42996e4ebcd19b0e33dfaf4fb55497929b4ec3e8ee9e0b868f1fd6ae652207b89fbdc5d094e512628a982636697c78392b6313f5688967da8bf4744dda8d6d837f29b1c04e6dae9f77df9cda9c7361c0b55b04c34281eeeafe32f6690fb629cf4cef21278a0df3e160f300a7e88751899e275f9447f6bae2c562f40636ecbaca5eab53acf015e9d0eaf3a35098b3cc2a1f561dab1ab222dc12321c55cb21b0d774d53f9069ad185d40dcab6572d55d93e9f07fade2ca9365ac34b3180193ff590595c7731e0231459ab3993ab56b9fc84b90cc728c5f126a16cb90b6c221071577c7594dd5e298736d38c3a6f715e4919393526220fcd02a63b06288fe93bbd4a4751460d033c9c72fdaa6dba623713461fdd1ef263eea4d4cd270f07e17b4d7bcf9c073062778a96b1b587570a9ce9175d43e982cdaa1b24767c9ff4fc966214fa03ed0fe566c354719c781da0b4866385ebef19d25425dc5c03aeee4d5369484a7a116c968e30a3475be309a4cdba18f8261bbca4a6ac576f0d0b777be6b149e31ead0cc72a1988500a9d42403d9d7d88fc9c02e7484fed725a0ff089503540a4541a5665671322cc6f54ed53888e0b81d673f7eaa65f34adce8198c13e325ad62651e90da07ca116d43e5694a40d69476dfb66759425e4b567f2abc6f5789804c285a64bb36ea8ebc0aad41c64c0c5311ec3caf2af917aa868f68d07ac2ccc9938522ab60a1566dc07ccf64aa6d33f4113e8b6b0d03fdc4b60a91),
(3, 'Иванов Иван', '+7881898955', 1, 0x85f11be6550d968d81d9d9ff8382ee0e63303739623531646663306334326338643263396165306661633634363636393461663739383835656633323632633230363339623833623763616232666434a6f49d06aa4b8785bc089a8fc2a4b221b38abffb72edd21ac7e740a1c58c089d7734176b930714c72fb7e74793de10f7effd6703410df7208a62973d09141bc305ee1ea2da59cd14446fdd915384c1ef58eb76950e58868f2862af832a174a1fe17cb7a8a3d94d15f3ba93d998110339c2a864485f5c0ee8c0ed297aab08f5eb422b5918c7352d620aad929009a695db37c234d84b6c402f48520fe0dd947c2654b7e1553fc08b64125bfc685138f374df07f8e4b4dd69620865304babd19843cf82b68249b0dfe600ae8bdd7f8bb2262084b935c7e27eaa0bc7671335d07f99a2ec2469dbcb9cb5ae9248d0e78a6a414164842b911f729379854c64b3757ab446a11509514211ffa5f6c9df62a2efe4aa1d80f7b144302248e607681425aac22e92e0a9e0d3fbac6564c3b44f081e7054f220bf25cd3f54a5a12e3edd5ebc856f7b535e6d6f7e72daeef4aa39c809a06b242f813a9982c222dd525795e419bb2bd5c1422a7852bb31ee9ef8b5bfd12f9e8de4de2fe2ea2d44e66a3e9802077619c1b0df7f87a7fb84cb5d8f7f6227b4d669c68155f31b25f96f1391e80fc7b9fd5412d5e8a67bdb9f378247e53cea45d366f505cdaaf3bfca781e084d3097f8885b3bd7311569bd9b1a513ada46af4acb18afa8bb6db8119dfbf1e232f7a8fd4bd0c21e6b625c1d862439d5b5aa8b316ee4ed8358d565b9b603b0caf7cbc8bf620b82108c86f53ec85e7b21e25ac31313329a05b7fe4edee717eb3deeb43e0c),
(4, 'Иванов Иван', '+7888989832', 1, 0xc43c090480062c118824f1455f9166b2333132356237376234653664313032303464323363653034336233643237326134303966373765343133306532643338666264336563633132666564353330308b0e92151a780bb82e2324d356f5f2c5d1954b0800d305ac3beedf895db05665ddd4e171dd41172c44bf1c13bcc4b5eeaf85e1917ecef2d2bc6a14ab840359fc07355f1a7f478a9e9484168c7a4ccdfcf512142da12380e84282a1894c8f9ce52ca2bd8c7eb278f35a678087269b47a7fb1e39d2afae7da644f55fedc124a97754177ef1e4e56633aff9b91c8da135c1368753a4ecef6f5f28f6b6cd73fe050c721e3dd68112ce7d4a1217631010f025587bfb3fc703f4e804d1f2c6b86041c07c44e7777917d1814c3849c4a15c6a0e2503a4e8086393b7000b9e73884ba31ca3fb78d7993f8aca76656b188fca2b3c2d1a363d47bd19b235e8b84f93183cf33bf82008b1e0b2fa750a0e36b892e437b934b01c5fe85abf02d980c8e020c0edc39e7f199b795264979e774cf37264e81573a387ecafbfd2e169737d1ac0fe4750fedefeb5e34b742533194706f63d5699bd565e0df64d7cf080cd7de6c2808c13f36e010df63c634f57baf2cf148572cbd06731329ce863cbd0e2ac751d4d0771084e74d9eceea58b6fb0591e354fd009c4d92e9961ca34761bf2383c6e4ae4b0f48d29bd0dba4deb974676c312afcf13185ca62ad7f396b9179b9e72a1f7f58b763aaf41c57ad3a62340ddad07b3e5),
(5, 'Петров Олег', '+7881898921', 1, 0xc8ea98c1f91530a611a38c7052b01e2730383031623230386638313835666565343364333739363332623262646635316233626132316331346134616663343963303530366430376139313838633834e56980809c9e1a0373389179edf4206e225da5bfa4b6421c5751786fb467fd1d1942dea3e70ec0fa3a5d668171eb0c974928d033bb2ec6a27ff5cc2852d2fb0457a4814708d055d4e1da5257c9ba60dffc75ac313e5d6a73305ce03a525ec98df52ad702246d420d9e5c3b26d9efa887be3d723e62730802079f8370f26733b4922c50df322455327c858427b6d163f530514865e42222713857344cb0ae7a1b6a2f6ba0cb2f2c34d2b9c6e29b73f42084f298f2aa449f359b0e436efcc7eafa25d0a018cbb0f1a45712d08d4be7a49ac983e1fc3ba6bb291710285183f84430c52e3f17265df077da771d555ea97ff6bac0ef9a55216b139b055445766ac0fa9cb84c2407d5299feeaebdfc036a55cc2dd990913c35efdfb1dc4b6e159a5a40c357db88b3e9dc1147f7d637969619d44c3079c8d1474e4388fe15b96b09f93557a389a8a1c2b937cb96e3cf6c0b38fe1ac055b6725b8bccbc0421f451a7cfc9debc37ae03882ca04650de5011a632a91831710664d9818e4f81a303aa14a67125b507fe66b7dba65b4e0b832994b370f5a1a72cc4400ef3ec06e701f8e093457e46aa7ad3d871e6b1882dd1654ba2c56449df9c97f7b81c7b926c596579c29e0628af54a6563c5670fc7a29710cf0ff149ac3f928ba5ff2488ee283d12f90b3c32f24f60fdec508151a53a1ee696ea62c20760a054824b7cc081ae113f8114d5f9511a53e504e82ec67bc61acc70e8ba2810443e1a8e254e8e684561abca3084bbae01aadeffe83d5f34b812beb6508c4d50f7ae0ccb9dd3611140ff1ef0e336a76688433e6acf16b7ffb51aff73266551c23e2cd353d8edf6796ffb41b24e4),
(6, 'Ivan Ivanov', '+7881898911', 1, 0x6c3b4ed8f8b377b932c318b03320abb138396135633165343562343135306235346334333839623561353439343437396331633431646464376436353363303439613437653138383138346364313266913aa8f3c63ecf68adf970785e87a455e85ebd2ae60195c528c9233e264188ccb55535b12290bfdfc616b1bdf550b081f3a0d2be6183fab915d72f7af9474d6046d31fc9aca69f83b4ef214fe3d7f3fb9d859aee065650242cbff68e88151507d2ec272b1f6061f848ab372eab70b4c58e746413e8509b66da8dd857afe63f097d19fca6d29e33fc71caa4ea93cc78be4bf03fc6c29b91bba949dd0b2910098ad8a066b5926c03f9c86a40952e1625b913e337ac82fc9f7f978e800547b3ceec83017b97f94e50d9131ae814048aafc91bd550c08eafa8931c0fe89a56045da3df0ac4ea8b180a2d576baa0b2907b976d2c5942064e9da9f6015bc7d586bd131df9fba364aefa1a20e2a7158f3e4ed6db1389214bba5ab5d4c8e6e46235497200fbdd41600fa37bf820e0677f35b458bc399c56f65debd9de2c9ebb554e9aa762bbabc89f1dbc90f4afeb2c2606331fac1fcfe1dcf8820a24756d702896d0b5d81aa0936356a622d2a36f00dd7d7a8a552ce57cff876c2b1d76f2c3d1d0c5a8380a57adfad9cb0633770f9f17b6e643b6a83f2bc41d89cd6b799ab68b34d12f3c2e477987c14c1233bd210bc60c99625ae62ffd16f6e7af6fe2cfc3064e811ffdd65d90daa80f9542ec509a864045cac38b0c813f634337b3da73626779fd587901e0a9a7ec651043be0bcea6b1f323b4c7b9b378c2df48be3825598f54822023a8a4904b0fd92a8e2882afa171cf116d6bbc5ea2485aab8999818b21a0f7b7f529118a323174daf78930f760b4fb57e660ba020b59aec3177ca6872ca6b3b658c34253342fc039765fe4e3f2cbcb5ede64f0ba71fe7b5ed6aae27739a4ede9a38a21ac42f0404406cbe7e4c8ed9d98b8cf7a18f9e67e1a9fcc0185e4a975c0551579799d454e3ffa2e7a346c8d40d8159217547df5366ebb1c583e8331194357c947bea90923c62fd0fcedaea43abc9830b6157e4a1a7702822c2dbca2ed98c670ed4177746d0427c5090803502a7590b3c259783fb0857989a5620a40b714b7a4a6a7a4b1f3116c2bd355817271f054056118e893f25e0fa0c4fb635956dc5c6b5096a0781e5270db0c6293176e4beadc9ac9b9bc531353bd9e80ba66a7e712f9f5f1deee409b83fd02ba9d9bd67f47186bb71d043e436cb411943602eecb2e3835ef238e7b394b71b1b01a0d1516dc4565dda48efc807ea8d121d69e215a37544a6fec100748b82a4de9567eb2b1271853563984e8f564d194beaf0b38372807726bd3d17d49ac4d0b433df3b6fea),
(7, 'Маша Олеговна', '+7881898955', 2, 0x35abbe94892c12088e830a282f3834343236626666613962343831666630613463373761313731663636393061663737393235376138316163356332396339393736613164363764393634623938316168d3e10bc2390847e3f827d474d974766d3b8395cffbff987ebbe030d90d30fd6bc3bb4afe654da7c2df27d7f3c71f18432393865d599a6ce93f4eb2bd04f8ea2901eee1abfa5f9bb85685cdf404f74d0a05d9b9d60271e54432b2c2760a2b352c77c4fb14c98d003d576323ba73eee9788190d8da249bdc3ccd5784c689ca9c35dffbb38db022fd6b4301e55932e147395e165df042adf4ed72b1e811e12e1341681e7b871710d4822ccd4b923f4b33c56d1bf3ab85ff2717a85c49b2bf20b033d5b486d1e61ca14f3708f166ddb32a8c569095a0d52377de3b5035ff57362d992951c09cea6d297111cfeb32070693a59a2a0c940b8d1b9af62cbd8363e9dd59515644cd4925e8e4458cc5780871833764b1104a46e69366a6c393e092ea831366533bbe7f268f55f25fafc5e46a64f5d9f33323bf3a006f29870529905b94c1cd676715bc6cfad113f6e9aaed96b21b2bf7f2c9537caeaecb97fb806d8ae2a7ec11089cbddb2de19b1c453f7a60facfb5f83e4eabaa7aba51c6481aff26f3238b063ee64c3799275ad93e750a89f6facf8c46e955aeca8df752f76f5bafa72a2510b644a5acc18fb40c6a4acd007e680ae86572bdbed83c79d5b7faf5236eaa0a72708629245d81d926cfcf4ab07b9013accf9da4cad16676108b89d55a17bb31b9f63903e84d41f9460dedd45e10),
(8, 'Ольга Иванова', '+78970088815', 2, 0x06659f91fac37ddc4dd2614f1301d7816630386230353263656332336539623133623430666233663964333633653035336232636431373438386133613739353538613132633734636530363637326246877e74dab73b58a5428b28b5aeb2db200345b2b4e4afd9794c80a1a8f5df4ce687e263820d6227d5409a4246241edd4023b891cfb74a9d320562906cca4980d30c4d13478347cb5cc1f162295c654407cc441b829893460df86e79d30affdf4008caa57c7261a512945fe404be0ccf9211c2218d46197db4fae92c755e01ede04fcce3128d3c41dd66c0bce0f64f45044181beb503c267c2862fff9d575c01518807c59d22761178a3c49b4a99199ad4a46f2d300e0c08222d4521a86f7e7113bc48b2181b71c34b41ebb8ad85610b7a72aea4995777d34655a2003917a24f9f50ba606ae8ef92c81730553e8fea484faa098c07e78906aad83f54d9babd3592c7499fe8d07009dce930bc445dc75bbf0bd8f0e2ac842d58183b5d75945d5cdb9e10f364c184991ec80043006abc815957198073401bcea4140bab1d718e9407a484b81c757581688275db314320de21c8b2ff5a65d896d1d4842bd612750f29e2773a94c3b5dd907ce1ef50d7ee8d6c60d3a74d1b361dd3d6d317324c895dfcf2683a16220abeba5b203f003edc11a65704668143eb5167a999a52c3ac4dc927adc729e7e3787ceee8f97953e0e286e9d9acae3e01b1501bc0f5b455a63fbeba6dee968be146a1a84c5e6938bc1a224cada56dcc587276cbe29030d6d5a2df2b9a58a4e80ecfef9d1aff34b87f87d8e94a5993e228ec7f549b338446c189a9115edf37cea5c1ed2a435ab9b9aea3b38c9dff30ad8c12f7f4f3a22452b264540b2219899c92f360a25caba2d4162db40f8166bec28fb7c369c22dc1aa64dd15abd2a09bca618fdab6c51d340e4af7fb3d3cfe1ec016e7649bd7eae627275fa01aad5a0323488ea2805108d0973b1e2dee7ffbb653cf9c329e259e517bf69671ad4656444f49a752163206a81df34bc7180c70770a3ddcd0e53559818236e7be006024b1ec185e077ee9f2c334caa73ff949948dea6e69575ff3897675dc512759507fbd0f0492b3ad0e89665812580710a4a06c6f50448d873e2fe6209123d2c6584cbd5b9e927a930990e219666783d5a2b71e68f6fd4cb7fcb82cb5734343869a2b7fe20a45ebfc3f1ce1de0e3ae);

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `idfeedback` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`idfeedback`, `user_id`, `content`, `answer`) VALUES
(1, 1, 'Как я могу связаться с руководителем организации?', 'Нужно записаться на прием!'),
(2, 1, 'Сколько стоит переоформить земельный участок? И что для этого нужно?', 'Для этого Вам необходимо обратиться в отдел, который заниматеся этими вопросами!'),
(3, 1, 'How mach?', 'Много'),
(4, NULL, 'How mach? dsds', NULL),
(5, 1, 'Что случилось?', 'Ничего'),
(6, NULL, 'Где это?', NULL),
(7, 2, 'Как связаться с главным?', 'Через сайт');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `idnews` int(11) NOT NULL,
  `newsname` varchar(88) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `newscategory_idnewscategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`idnews`, `newsname`, `content`, `created_at`, `updated_at`, `updated_by`, `created_by`, `newscategory_idnewscategory`) VALUES
(1, 'Лучшее образование ', 'Как обеспечить лучшее образование', NULL, NULL, NULL, NULL, 2),
(2, 'jkjkj', 'jkkjkjkj', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `newscategory`
--

CREATE TABLE `newscategory` (
  `idnewscategory` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `newscategory`
--

INSERT INTO `newscategory` (`idnewscategory`, `name`, `description`) VALUES
(1, 'Деятельность учреждения', 'Все о деятельности учреждения'),
(2, 'Новости образования', 'Все новости образования и учебных учреждений');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'FRW4r4Id3qexZpgPUqmt04m-stEtc4De', '$2y$13$obUbx8Pl/yfYQYu1x0Q47eGXczJ6Chh4e.X64g9rhxSaWxjiT5A2i', NULL, 'admin@wis.loc', 10, 1580126064, 1580126064),
(2, 'Yurij', 'jsvI0PCdhJfy2_uGQVfANvKWVwmHZQdN', '$2y$13$nsdz6G7nC3jgGK62ihYwH.lHvM4TaiARoDarCaZHAu3/Enr0vguE.', NULL, 'yurij@mail.ru', 10, 1582204587, 1582204587);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`idbranch`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`idemployee`),
  ADD KEY `fk_employee_branch1_idx` (`branch_idbranch`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`idfeedback`),
  ADD KEY `fk_feedback_user_idx` (`user_id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`idnews`),
  ADD KEY `fk_news_user1_idx` (`created_by`),
  ADD KEY `fk_news_newscategory1_idx` (`newscategory_idnewscategory`),
  ADD KEY `fk_news_updated_idx` (`updated_by`);

--
-- Индексы таблицы `newscategory`
--
ALTER TABLE `newscategory`
  ADD PRIMARY KEY (`idnewscategory`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `branch`
--
ALTER TABLE `branch`
  MODIFY `idbranch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `idemployee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `idfeedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `newscategory`
--
ALTER TABLE `newscategory`
  MODIFY `idnewscategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_employee_branch1` FOREIGN KEY (`branch_idbranch`) REFERENCES `branch` (`idbranch`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_news_created` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_news_newscategory1` FOREIGN KEY (`newscategory_idnewscategory`) REFERENCES `newscategory` (`idnewscategory`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_news_updated` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
