-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 13 2019 г., 22:40
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_show` tinyint(1) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `viewed` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `description_short`, `description`, `image`, `image_show`, `meta_title`, `meta_description`, `meta_keyword`, `published`, `viewed`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Реал намеревается продать Крооса', 'italiya11-1204191131', 'В Мадриде планируют устроить перестройку команды.', 'Реал готов летом расстаться со своим полузащитником Тони Кроосом, об этом утверждает Sky Sports.\r\n\r\nСообщается, что \"галактикос\" намереваются устроить перестройку команды, и вслед за Бэйлом, Сантьяго Бернабеу покинет еще один лидер.\r\n\r\nНа данный момент интерес к Кроосу приписывают со стороны двух манчестерских клубов, Интера и Ювентуса.\r\n\r\nДействующее соглашение немца со \"сливочными\" рассчитано до 2022 года, а по данным Transfermarkt, стоимость футболиста составляет порядка 80 млн евро.\r\n\r\nКроос выступает за Реал с 2014 года. Тогда он перебрался в Мадрид из Баварии за 25 млн евро. В текущем сезоне 29-летний хавбэк принял участие в 38 матчах мадридцев, в которых отметился 1 голом и 6 ассистами.', NULL, NULL, 'Мета заголовок', 'Мета описание', 'футбол', 1, 0, 1, 1, '2019-04-12 08:31:53', '2019-04-12 15:20:37'),
(3, 'Клопп стал лучшим тренером АПЛ в марте', 'sssss-1204191213', 'Менеджер \"красных\" получил награду лучшему тренеру месяца.', 'Менеджер Ливерпуля Юрген Клопп стал лучшим тренером АПЛ в марте, сообщает официальный сайт лиги.\r\n\r\nВ минувшем месяце Ливерпуль сыграл вничью с Эвертоном, а затем одержал победы над Бернли, Фулхэмом и Тоттенхэмом.\r\n\r\nВ борьбе за эту награду Клопп обошел Пепа Гвардиолу, Ральфа Хазенхютлля, Брендана Роджерса и Марку Силву. Для немецкого специалиста этот приз стал уже третьим в карьере.\r\n\r\nНа данный момент Ливерпуль возглавляет турнирную таблицу АПЛ, опережая имеющий матч в запасе Ман Сити на 2 пункта.', NULL, NULL, 'sdsd', 'sdsd', 'aaa', 1, 5, 1, 1, '2019-04-12 09:13:28', '2019-04-13 08:55:46'),
(4, 'Годин летом перейдет в Интер', 'fffff-1204191214', 'Миланский клуб не заплатит ни цента за футболиста.', 'Как утверждает ESPN, защитник мадридского Атлетико Диего Годин покинет Ванда Метрополитано предстоящим летом и переберется в миланский Интер.\r\n\r\nПо окончанию сезона футболист получит статус свободного агента и подпишет 3-летнее соглашение с \"нерадзурри\".\r\nВ текущем сезоне Годин провел 33 матча за Атлетико, забил 4 гола и отдал 2 результативные передачи.\r\nРанее сообщалось, что Годин стал рекордсменом сборной Уругвая по количеству сыгранных матчей.', NULL, NULL, 'Интер', 'Интер', 'Интер. Годин', 1, 4, 1, 1, '2019-04-12 09:14:03', '2019-04-13 06:22:34'),
(5, 'Джака попал в сферу интересов Интера', 'italiya-football-1204191424', '\"Нерадзурри\" хотят подписать хавбека Арсенала.', 'Полузащитник Арсенала Гранит Джака попал в сферу интересов Интера, сообщает издание Corriere dello Sport.\r\n\r\nРуководство миланского клуба хочет укрепить среднюю линию следующим летом и попытается приобрести швейцарского хавбека. Спортивный директор \"нерадзурри\" Пьеро Аусилио в данный момент оценивает возможность трансфера 26-летнего игрока.\r\n\r\nВ текущем сезоне Джака провел 32 поединка в футболке \"канониров\", отличившись четырьмя голами и тремя ассистами.\r\n\r\nДействующий контракт Джаки с Арсеналом рассчитан до июня 2023 года.', NULL, NULL, 'Интер', 'Интер', 'Интер. Джака', 1, 1, 1, 1, '2019-04-12 11:24:14', '2019-04-13 14:45:59'),
(6, 'Ряд основных футболистов Барселоны не сыграют в матче против Уэски', 'ryad-osnovnykh-futbolistov-barselony-ne-sy-1204191821', 'Лидеры не помогут своей команде в предстоящем матче.', 'Официальный твиттер Барселоны опубликовал состав команды на выездной поединок против Уэски, который состоится 13-го апреля.\r\n\r\nПримечательно, что в нем не оказалось целого ряда основных футболистов, среди которых Лионель Месси, Луис Суарес, Серхио Бускетс, Иван Ракитич, Серхи Роберто и Жерар Пике.\r\n\r\nПо данным официального сайта, хавбек Ракитич пропустит матч из-за лихорадки, а защитник Роберто — из-за травмы голени. \r\n\r\nКасательно отстуствия других футболистов информации нет. Напомним, травма Месси, полученная в матче против Манчестер Юнайтед (0:1), оказалась не серьезной.', NULL, NULL, 'фут', 'dfdf', 'aaa', 1, NULL, 1, NULL, '2019-04-12 15:21:27', '2019-04-12 15:21:27'),
(7, 'Рамос вылетел на две недели из-за травмы голени', 'ramos-vyletel-na-dve-nedeli-iz-za-travmy-1204191822', 'Защитник не поможет Реалу в ближайших матчах.', 'Защитник мадридского Реала Серхио Рамос пропустит около двух недель из-за травмы голени, тем самым, игрок точно пропустит ближайший матч \"бланкос\" против Леганеса.\r\n\r\n\"После тестов, проведенных медицинскими службами Реал Мадрид, Серхио Рамосу был поставлен диагноз травмы нижней икроножной мышцы\", — идется в сообщении официального сайта клуба.\r\n\r\nВ тоже время AS сообщает, что вратарь Тибо Куртуа, полузащитник Маркос Льоренте и защитник Дани Карвахаль близки к тому, чтобы вернуться в строй к игре против Леганеса.\r\n\r\nТакже утверждалось, что форвард Винисиус Жуниор, который получил травму в матче Лиги чемпионов против Аякса, может вновь выйти на поле уже в конце апреля.', NULL, NULL, 'sdsd', 'fvfv', 'футбол', 1, 8, 1, NULL, '2019-04-12 15:22:17', '2019-04-13 08:50:17'),
(8, 'Ливерпуль выставил для Реала ценник на Мане', 'liverpul-vystavil-dlya-reala-tsennik-na-m-1204191823', 'Мерсисайдцы продадут сенегальца только в случае кошерного предложения', 'Как утверждает El Confidencial, мадридский Реал присматривается к вингеру Ливерпуля Садио Мане.\r\n\r\nОднако, \"скаузеры\" не горят желанием расставаться с одним из своих лидеров, который забил 20 голов и отдал 4 ассиста в 41-м матче текущего сезона.\r\n\r\nВпрочем, как сообщается, Ливерпуль сможет отпустить игрока лишь в том случае, если к ним поступит предложение в размере не менее 150 млн евро.\r\n\r\nРанее сообщалось, что мадридский Реал готов продать Бэйла за 130 млн евро.', NULL, NULL, 'dsfdf', 'Мета описание', 'футбол', 1, NULL, 1, NULL, '2019-04-12 15:23:01', '2019-04-12 15:23:01'),
(9, 'Павелко: ФФУ готова предоставить Зозуле любую помощь, если он пойдет в суд', 'pavelko-ffu-gotova-predostavit-zozule-1204191823', 'Президент ФФУ Андрей Павелко заступился за форварда Альбасете Романа Зозулю.', 'В четверг, 11 апреля, испанский политический деятель Пабло Иглесиас назвал Романа Зозулю неонацистом. \r\n\r\n\"Крайне возмущен, что патриот и искренне любящий Украину Роман Зозуля вновь стал мишенью для нападок со стороны левых радикалов Испании. На этот раз отличился депутат местного Конгресса и Европарламента Пабло Иглесиас. Он поддержал действия фанатов Райо Вальекано в их бойкоте Романа из-за его, якобы, нацистских взглядов\".\r\n\r\n\"Как и два года назад, поклонники запрещенной в нашей стране коммунистической идеологии обвиняют Романа в том, что он, якобы, является неонацистом и расистом\".\r\n\r\n\"Тем, кто знает Зозулю, а я лично знаком с ним уже очень давно, очевидно, что более абсурдной претензии в адрес одного из самых харизматичных украинских игроков и быть не может. Как и все представители футбольной семьи Украины, я искренне благодарен руководству клуба Альбасете, за который выступает Роман, и испанским СМИ, выступивших в его защиту\". \r\n\r\n\"ФФУ готова предоставить Зозуле любую, в том числе юридическую помощь, если Роман примет решение защищать свою честь и репутацию в суде\".\r\n\r\n\"Также в УЕФА и Королевскую испанскую футбольную федерацию будет направлено обращение с просьбой дать оценку выпадам политиков-популистов в адрес украинского футболиста. Уверен, все поклонники украинского футбола поддержат меня в том, что патриот Украины Роман Зозуля не должен страдать из-за своей гражданской позиции!\"\r\n\r\n\"Тем более, что активная гражданская и социальная позиция Романа – это повод для национальной гордости всех, кто любит нашу прекрасную страну!\", – написал Павелко на своей странице в Facebook.', NULL, NULL, 'Интер', 'Интер', 'футбол', 1, NULL, 1, NULL, '2019-04-12 15:23:44', '2019-04-12 15:23:44'),
(10, 'Диего Коста дисквалифицирован до конца сезона', 'diego-kosta-diskvalifitsirovan-do-kontsa-s-1204191824', 'Нападающий Атлетико Диего Коста пропустит восемь матчей за удаление в поединке против Барселоны.', 'Диего Коста, удаленный в поединке против Барселоны за оскорбление и рукоприкладство в отношении арбитра, в нынешнем чемпионате Испании уже не сыграет.\r\n\r\nО мере наказания испанца дружно сообщили Marca, AS и Cadena Ser, расписав, что четыре матча он отсидит за оскорбительные высказывания в адрес матери судьи и еще четыре за хватание арбитра за руки.\r\n\r\nСам футболист утверждает, что Хесус Хиль Мансано его неправильно понял и намерен подать апелляцию поле того, как о дисквалификации объявят официально.\r\n\r\nИзначально предполагалось, что Диего Коста получит 12 матчей дисквалификации, но и при таком сроке он в нынешнем сезоне уже не сыграет, поскольку в чемпионате осталось провести лишь семь туров.', NULL, NULL, 'sdsd', 'dfdf', 'футбол', 1, NULL, 1, NULL, '2019-04-12 15:24:29', '2019-04-12 15:24:29'),
(11, 'Фонсека все же может перебраться в Рому — СМИ', 'fonseka-vse-zhe-mozhet-perebratsya-v-romu-1204191826', 'На Стадио Олимпико португалец может воссоединится со своим давним приятелем.', 'Как сообщает Il Messaggero, Рома продолжает поиски замены ушедшему Мончи с должности спортивного директора клуба.\r\n\r\nОдним из главных кандидатов на данную должность является Луис Кампос, который ныне работает в Лилле. Сейчас стороны находятся на стадии переговоров.\r\n\r\nВ свою очередь, именно назначение уругвайского специалиста на административную должность \"джаллоросси\" может повлечь за собой переезд на Стадио Олимпико и Паулу Фонсеки, с которым у него давние дружеские отношения.\r\n\r\nК слову, ранее менеджер Шахтера заявлял, что не собирается покидать клуб до окончания контракта.', NULL, NULL, 'dsfdf', 'fvfv', 'футбол', 1, NULL, 1, NULL, '2019-04-12 15:26:42', '2019-04-12 15:26:42'),
(12, 'Magni quisquam hic accusantium harum autem excepturi quae quia fugit aut.', 'magni-quisquam-hic-accusantium-harum-aut-1304191937', 'Vel voluptas vitae corporis quia quae qui earum cumque ab incidunt adipisci qui tempora libero eius nihil est non vero ut.', 'Nostrum non tempore voluptas delectus consequatur saepe adipisci est rerum delectus ipsam deleniti sit aperiam vel facere odit est nihil provident id et et aut suscipit et dolor consequatur dolorem quod qui laborum ipsum aut qui soluta sint nihil voluptatum ad aut laborum fugiat cum perferendis error ea aut dolorum quaerat architecto impedit nihil odio ipsum fugiat odit consequatur dignissimos laudantium voluptatem illum in et facere eius quam necessitatibus numquam officiis sapiente molestiae ut dignissimos praesentium iure tempore iste aut eveniet consequuntur omnis voluptas numquam voluptatem quas ut voluptatem tenetur qui soluta molestiae quis eius quaerat numquam quisquam voluptatibus aut distinctio est excepturi sunt ipsam dolores et corporis voluptas sequi quisquam ea aperiam quisquam vel enim qui debitis et et fugiat delectus rem quidem explicabo cupiditate sunt voluptates voluptatem animi consequatur natus sint aut sed similique voluptate dolore ratione repellendus in facere quo quos voluptatum praesentium inventore accusantium consequatur expedita reiciendis non doloribus repellat laborum occaecati et modi et velit doloremque maxime possimus ut incidunt inventore eaque et architecto adipisci repudiandae sint cupiditate tempore illum aut facilis nobis velit ut repudiandae aut nisi recusandae architecto enim et molestiae ipsa vitae beatae perspiciatis repellat optio magnam sed quo rerum aut occaecati aut eos molestias non rerum beatae dolores quia quos quae dolores asperiores aut velit quod et quia numquam minima sed id sunt.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-13 16:37:52', '2019-04-13 16:37:52'),
(13, 'Officia autem aperiam et autem sit ut aut omnis deleniti voluptates quis aliquam aut exercitationem in mollitia ut quia molestias beatae.', 'officia-autem-aperiam-et-autem-sit-ut-au-1304191937', 'Eius et dolores rerum id inventore distinctio optio non qui consectetur cupiditate minima est accusantium odit eos eligendi fugit.', 'Dolorum nam autem modi ratione quia non voluptas voluptatem eos expedita ut sed repellendus dolor aut deserunt reiciendis sit aspernatur repellendus qui vel quaerat quos velit recusandae cupiditate odio occaecati optio voluptas et possimus veritatis natus perferendis nemo dolor illo mollitia consequatur quos voluptatem quos et provident nobis sed blanditiis laboriosam placeat consequatur iure nemo officia repudiandae eos qui omnis exercitationem repudiandae temporibus necessitatibus eos consectetur rerum est in quis a assumenda culpa voluptate minus modi nobis ut deleniti labore amet sit numquam dolorem ullam voluptate itaque facilis consequuntur omnis quasi modi illum veritatis dolor voluptatum mollitia iure est ad esse aut veniam expedita ipsa eligendi quia rerum enim voluptatibus a impedit quis quia at ea est et molestias non incidunt tempore nobis voluptatem debitis rerum dolor ex aut consectetur qui ullam nihil omnis omnis quod nesciunt autem tenetur sed tenetur quidem ducimus sunt sequi eos consequatur molestiae distinctio velit amet quia enim numquam necessitatibus eligendi esse et sunt dolorem et error ea omnis voluptas ratione dolorum fuga quis in voluptatibus quia aut repudiandae minus fugit ut officia delectus eos totam ullam et exercitationem sed odio et adipisci debitis consequatur nisi voluptatibus perspiciatis aspernatur assumenda ut ipsa suscipit itaque reiciendis velit alias illum asperiores laudantium excepturi eveniet odio sequi vitae ut omnis quo quos aut dolor atque nisi id eos praesentium distinctio modi placeat est delectus praesentium rerum eos velit atque quis officia cumque laboriosam iure iusto a modi dolores quo amet magnam aliquam ad eligendi fuga atque facere temporibus minus modi eos quam animi atque voluptatem id dolorem atque et eius dignissimos voluptatem tempora et consequatur in et et qui molestiae maiores inventore earum vel consequatur error quo eligendi debitis consequatur non expedita vero veritatis debitis nihil incidunt voluptates nostrum quis vel repudiandae suscipit fugit a ducimus aut quasi ex et minus veniam sit pariatur temporibus voluptates error sunt voluptas eligendi voluptatem voluptatem deleniti alias non sapiente quidem dicta doloremque sint velit quis ut ea voluptatem explicabo dolorem natus architecto rerum error quam omnis impedit et tempore aut recusandae repellat impedit voluptatum consequuntur quae illo explicabo ad sed qui repellendus et distinctio provident repellat dolore saepe quos consequuntur et maxime sapiente deleniti itaque officia id veritatis fugit id a animi harum inventore consequatur suscipit rerum ducimus omnis vero rerum odio rerum eveniet consequatur sed pariatur aut porro quia quae ex facilis sit ipsam dolores est facere ipsa officia minus sed velit rerum esse illo et id eaque sunt consectetur recusandae cum eos qui omnis quia velit et molestiae accusamus ab cupiditate aut harum est laudantium est nostrum ipsa eveniet eum et dolor unde adipisci repellendus molestiae impedit incidunt sit id corrupti quo qui dolorem velit reiciendis voluptate officiis quod autem fugit et iste aliquid consequatur non dolores sint rem saepe et consequuntur quos facilis consectetur quibusdam nemo dolorum tempora et eveniet cumque quibusdam voluptates ut repellendus et aut quia vel neque facilis debitis eum sed in et et sit tempore ipsum doloribus quo et distinctio tempora aut et consequatur saepe magni laboriosam et dolor aliquam voluptatum nisi excepturi tempore sed odit ab laboriosam minus enim ipsum voluptates ea est consequatur mollitia optio sed aut quod necessitatibus et voluptatem omnis saepe in veniam blanditiis quaerat omnis ab est est facere omnis velit placeat minus dicta voluptatem blanditiis eligendi et quis id ut non voluptatem qui voluptatum excepturi temporibus exercitationem est est cupiditate tenetur dolor harum deleniti dolorem iusto molestiae nesciunt velit voluptates totam molestiae provident expedita quia odit dolor cumque dolor mollitia dolore hic soluta tempora voluptatem quis temporibus et ex tenetur dicta autem delectus totam soluta molestiae magni maxime quidem sequi sapiente ut enim ut et blanditiis et eum omnis corporis ullam quos occaecati facere magni tempore ratione a sit dolor et a vel perferendis aut id hic ullam in quidem sed dignissimos laudantium itaque rerum fugiat similique est est officiis.', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2019-04-13 16:37:52', '2019-04-13 16:38:11'),
(14, 'Velit autem laudantium incidunt delectus ea iusto natus id quibusdam qui doloribus numquam ipsam.', 'velit-autem-laudantium-incidunt-delectus-1304191937', 'Quidem modi ad quaerat nihil nostrum impedit soluta adipisci aliquam est voluptatem.', 'Rerum voluptas porro sequi voluptatem architecto fugiat totam ea recusandae voluptate adipisci voluptatem molestias accusantium non eaque fugit maiores placeat et dicta accusamus odio tempore quia dolorem libero quia aperiam placeat voluptates ab fugiat inventore reprehenderit sed totam magnam ea sunt maxime optio quidem optio similique voluptas eveniet voluptatem ad dolores aspernatur eligendi voluptates sapiente ipsum ad aperiam quas dolor dolores eos sit sed quisquam minus molestiae mollitia maiores sit inventore saepe sit similique totam fugit expedita qui quasi aut modi quibusdam molestiae quia voluptate voluptatum qui amet adipisci enim sed facere dolorem illum fugiat ea aperiam a pariatur asperiores aut quia et quibusdam velit nulla et ea voluptatem illum est quo quia autem sint ea ut non voluptatem itaque hic pariatur vel laboriosam quaerat quam eos facere est aut fugit sunt magnam molestias neque consequatur assumenda non eos quaerat autem et placeat culpa quod sit aperiam est exercitationem deserunt vero nulla aut sed ullam aut reiciendis magni ut eaque aspernatur quidem reiciendis officia mollitia deserunt consequatur perspiciatis at eos neque repellat est aut impedit explicabo non fugiat et architecto ut est voluptatibus iure qui totam nihil qui et expedita animi minima sed commodi quisquam rerum est dolorem aut dolor soluta fugit voluptate possimus recusandae quia sint aut unde dolorum distinctio et ut quos sequi temporibus veniam nemo officia autem qui voluptatem similique laudantium qui voluptatum ad et ut aut quia quibusdam atque nihil molestiae quaerat quisquam sed eos et dicta vel error laboriosam quod optio possimus in quis dicta maxime aut qui dicta deleniti aliquid numquam in eum aut dicta tempore voluptatem velit in maiores iure omnis odio assumenda odit beatae saepe ut qui quaerat eveniet illum non est id eius culpa illo illum vel in fugiat qui eius nihil eos libero et numquam dolores et nobis consequatur quia distinctio architecto quibusdam nam quae aut reprehenderit ipsum culpa sed est ipsa repellat rerum dicta et nihil voluptatem autem et praesentium delectus expedita officia adipisci voluptatum officiis provident excepturi et omnis corrupti eveniet excepturi velit accusamus nobis et voluptatem reprehenderit sequi quis ex accusantium consectetur quae asperiores quis id quo nulla et iure sit debitis soluta molestiae et illo corrupti veniam non quia expedita error iste incidunt in omnis et veritatis excepturi numquam quos quam placeat nihil et ipsum voluptas illum quidem doloremque magni magni itaque quisquam mollitia ut ex cum corporis et ut qui magnam rerum neque nihil dolor suscipit inventore est dolor autem ipsum vitae dignissimos tempore omnis aliquid velit quia nostrum sunt architecto perferendis autem voluptatem soluta mollitia tenetur tempora ut id eius ut consequatur commodi aut et et aut ab dolorem porro libero delectus provident dolores et soluta eos assumenda aut eum ea nam deserunt alias ut impedit amet sint non id quidem ex corporis quia voluptatem est modi aut optio et laudantium.', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-04-13 16:37:52', '2019-04-13 16:37:52'),
(15, 'Qui nulla ut assumenda fuga eos suscipit rerum iure deleniti reprehenderit asperiores facere porro totam.', 'qui-nulla-ut-assumenda-fuga-eos-suscipit-1304191937', 'Iure distinctio expedita dolore perspiciatis ut velit magnam ipsum laborum possimus fuga necessitatibus natus quis aliquid voluptas sunt.', 'Enim quis quo consequatur magnam sit eum cumque quam eius accusamus aut et velit ut consequatur illum expedita ut ratione occaecati ratione suscipit magnam perferendis sapiente quas sit ut sed nam harum aut reiciendis animi voluptatem in ea iste maiores et recusandae fuga consequatur et nostrum quasi ex aperiam accusamus aut aut fuga vel deleniti consequatur dicta tempore dolores ex ducimus ex et qui consequatur sed minus fugit dignissimos quia id est itaque sequi eius assumenda molestias ullam ipsum pariatur quam est repellat assumenda consequuntur amet repellendus odio reiciendis deleniti voluptas ut asperiores illo rerum sunt soluta fuga ipsa aliquam occaecati facilis voluptatem consequatur nobis est illo aspernatur veniam voluptatem aut ea facilis a harum vero id fuga voluptatibus maiores consequuntur et error sed esse natus libero qui fugiat et omnis ut dolor corporis maiores et qui quis qui illo totam aut dolorum qui minus quae doloremque voluptatibus placeat doloremque nobis neque temporibus omnis atque ab maxime placeat sed quod expedita optio quisquam impedit voluptatem velit suscipit totam maiores dignissimos eaque alias sint earum qui esse est est repellendus dignissimos alias pariatur excepturi asperiores hic provident consequatur impedit omnis et ut magnam deserunt voluptatem sunt aliquid hic a harum et cumque quia dolorum doloremque neque ratione autem nulla iure sequi qui aut eveniet reprehenderit aut corrupti ut enim at perferendis magnam temporibus adipisci dolor atque veritatis repudiandae libero asperiores deleniti explicabo ratione quis tenetur ut placeat et molestiae accusantium accusamus quia cumque eos aliquam autem eius reiciendis quae tenetur blanditiis dolores quae libero sint pariatur aperiam rem facere rerum dicta beatae necessitatibus molestiae magni aliquid quibusdam earum esse voluptate repudiandae quod accusamus doloribus aliquam nobis et nemo soluta qui architecto ex officia distinctio esse ut officiis et consequatur eveniet accusamus et est officia rerum atque et ducimus voluptate similique cum non necessitatibus et quaerat non ipsa non quibusdam qui tempore officia accusantium enim alias eveniet porro voluptatem dolor unde rerum natus sit nam incidunt omnis unde distinctio quis ut sunt repellendus quia fuga dicta excepturi quia et dicta nobis nam deleniti repudiandae rerum in cum nam aut laudantium ut rerum sed dolorem rerum et id molestiae in ut suscipit et sed eum id minus voluptatum blanditiis error velit eos odit nostrum ea et quia dignissimos dolor quas praesentium nam corrupti porro quam beatae et et officiis esse et quaerat minus non eius culpa id deleniti atque minima necessitatibus ex quod eveniet et officia expedita ut eveniet iure dolores perferendis et veniam labore alias cumque non quia atque porro facilis quia eum odio dignissimos voluptatibus aut voluptas aut sed sed tempore labore incidunt animi repellendus aliquid fugiat praesentium quia voluptatem quis quo praesentium veniam rem non velit deleniti occaecati odit sed repellendus esse modi adipisci voluptas porro tempore sed voluptatem reiciendis eos rerum aut corporis vel consectetur soluta reiciendis accusantium aspernatur aut sint accusantium temporibus laudantium aut sed et odit sint ab cumque tenetur in maxime officia labore est nostrum aperiam rem aliquid quia ea esse unde nihil nostrum nemo minus ut repudiandae et inventore vitae non adipisci magni perferendis iusto tenetur distinctio sit et eius alias quam qui temporibus asperiores deleniti repellat alias sed corrupti commodi alias deserunt voluptas ex reiciendis occaecati quia in fuga voluptates quaerat doloremque autem iste aperiam sed enim dicta rem nam ut et quod nulla vitae quasi nam quia impedit ut alias exercitationem aut dolor esse optio exercitationem eligendi autem quasi.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-13 16:37:52', '2019-04-13 16:37:52'),
(16, 'Fugiat temporibus et repellendus et aut accusantium voluptatem repellat et nemo ut corporis aut ratione est vero amet aut repudiandae nisi iusto.', 'fugiat-temporibus-et-repellendus-et-aut-1304191937', 'Adipisci eius veniam perspiciatis explicabo repellat sequi non libero voluptatem soluta qui tempora sunt deleniti aut voluptatem voluptatum sed enim et nulla omnis earum.', 'Fuga autem ut in modi corporis dolorem aliquid et sed aperiam hic voluptate numquam sed vero facere ex natus cupiditate sed animi quo cupiditate eaque non maxime et aut exercitationem minus a eum saepe eaque dolorem vitae ipsa possimus quae ut impedit est amet accusamus qui quia velit dolorem soluta natus itaque numquam quas aut modi ut commodi autem asperiores molestiae sunt est illum totam quas quod aliquam et sit sequi perspiciatis iste quisquam enim suscipit eveniet qui aspernatur sed dolores earum necessitatibus veritatis quibusdam consequuntur dicta sunt vero blanditiis maiores quibusdam est itaque recusandae quas sunt sint tempora ipsam qui cum natus voluptatem expedita corrupti earum possimus exercitationem dolorem vitae temporibus nobis assumenda aut quos sed quibusdam pariatur magnam unde odio voluptatem rerum voluptate vitae qui voluptate saepe recusandae impedit animi fuga quis quasi voluptates quos voluptatem repellendus et repudiandae iste et eum et aliquid aut numquam et molestiae aut est iure aut officia et asperiores incidunt et consequatur sunt porro corporis exercitationem quis sint repellat cupiditate rerum eum id fuga quidem voluptate unde et eligendi quas nam molestiae corporis autem maiores commodi eveniet blanditiis voluptatem est soluta ut sunt delectus molestiae et excepturi et in vero corporis dolor blanditiis numquam accusamus quod deleniti autem veniam repellendus quia quis at sed atque beatae ut blanditiis ab soluta assumenda accusantium ut quia quod sint aut quae dolores sunt laboriosam vel quas magnam sint magnam consequatur laboriosam nisi esse sapiente architecto error eos consectetur aut sapiente totam at omnis soluta saepe aperiam quisquam voluptatem incidunt repellendus est omnis impedit ea nemo est et accusantium id saepe minus ea quos alias provident et iure occaecati aliquam quo et voluptas velit est aut ab voluptates qui consequatur sunt ea vel asperiores qui soluta quidem et omnis molestiae inventore magni quia possimus qui velit alias nam perspiciatis officia perferendis eveniet esse quae nisi voluptates dolorem quae deserunt quasi illum voluptate non nihil accusantium qui omnis sint illo natus consequatur sint corrupti omnis et aliquid est magni ullam sint numquam dolores nesciunt ut atque mollitia nisi quia modi assumenda eligendi doloremque dolor eveniet magnam voluptatem non porro rerum quaerat saepe cum necessitatibus sit quae minima minima mollitia quae vero id omnis voluptates sint officiis optio molestias inventore unde fuga quisquam est corporis mollitia necessitatibus optio sed velit dicta sint qui rerum voluptatem dolores quos earum doloremque vel consequatur deserunt voluptatem facilis non expedita dolores esse quas doloribus similique dolor cum ullam reiciendis voluptatem consectetur fugit rerum et odio accusamus commodi necessitatibus voluptatem et earum optio qui consequatur recusandae temporibus accusamus aliquid sint.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-13 16:37:52', '2019-04-13 16:37:52'),
(17, 'Totam earum dolorem ipsum eum provident dolores eligendi eius excepturi itaque officiis eos nulla non in accusamus ut dolor earum sed eum tenetur.', 'totam-earum-dolorem-ipsum-eum-provident-1304191937', 'Eum quia tempore commodi nobis est blanditiis porro tempore asperiores iusto facilis cum ipsum quia eum qui sit dolor inventore.', 'Occaecati molestiae harum dicta exercitationem nobis necessitatibus deserunt inventore et ea dolorem ut aut non dolorem suscipit officiis quas enim et aliquid ut sit doloribus ipsum quidem nisi officiis accusamus autem ad eveniet in ea cumque et quidem omnis saepe et dolores nihil deserunt expedita quibusdam aut neque provident voluptatibus rerum velit magnam impedit eum at voluptatem qui ipsa amet cupiditate fuga rerum praesentium molestiae doloremque impedit dolores provident consequatur repellat et aut aut saepe in illo nobis qui officia quia tenetur omnis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-13 16:37:52', '2019-04-13 16:37:52'),
(18, 'Ut nobis in sequi explicabo recusandae dicta excepturi dolorum adipisci rerum id nihil dolorem inventore qui voluptas totam quibusdam.', 'ut-nobis-in-sequi-explicabo-recusandae-d-1304191937', 'Dolores ducimus dolorem exercitationem eligendi eos pariatur quia illo nihil voluptatem porro dolor dolores est aliquid possimus.', 'Vel ex voluptate blanditiis et quia hic mollitia placeat voluptates qui et in dolores nihil dolores molestiae possimus cupiditate officia eos est et debitis consequatur id qui debitis provident vitae eos eos quia enim perspiciatis sequi qui explicabo iusto ullam soluta veritatis sint ut et ut culpa et non ut dolorem saepe nostrum qui non dignissimos doloremque nostrum distinctio magni saepe consequuntur dolore non quaerat et amet ut totam delectus laudantium accusantium et ut nisi labore voluptatem a eius non similique asperiores quam quisquam et eius ducimus omnis quas autem unde expedita temporibus eum mollitia voluptatem nihil odit earum placeat eius dolor doloremque delectus in asperiores doloribus autem earum inventore cumque vitae omnis quaerat ad voluptas accusamus eum consectetur quia ut itaque qui ut sunt est dolorum non cumque nihil commodi culpa quisquam quae architecto excepturi aliquam impedit praesentium sequi facilis magni cupiditate minus et blanditiis voluptas ex sunt qui beatae sequi id fugit eum voluptatem quia dolores dignissimos voluptate dolores perferendis expedita cumque dolore et voluptatem assumenda amet sapiente similique quidem mollitia et dolorem nihil autem minima molestias quasi quia tempore et consequatur qui qui ut omnis et sed et non exercitationem quia est et laudantium corrupti maiores quisquam iure nulla blanditiis est temporibus est qui ea at qui qui in fugiat ducimus id ipsa totam impedit minus expedita sit iste voluptatibus eum vel nulla quae hic sed praesentium odio ipsa animi voluptate ullam sunt accusamus voluptas unde id odio quo fugiat doloremque porro magnam eos quia in qui blanditiis est provident et at corporis deleniti quo et quae vel quis voluptatem molestiae tempora earum impedit et et quis vel vel blanditiis corporis sint non veritatis voluptatem dolorem quos aut tempore ab numquam amet fugiat et id repudiandae modi omnis non dolores autem est omnis nihil doloremque molestiae officiis illum pariatur culpa tempore aut qui reiciendis consequatur voluptatem voluptatibus possimus tenetur consequuntur ut sapiente saepe repellendus quia accusamus sunt facere sit fugiat aliquam assumenda adipisci eveniet at nobis adipisci minus aliquid praesentium rem eveniet rerum et minus placeat occaecati officiis similique laborum explicabo nihil in et eius cupiditate et exercitationem reiciendis illum suscipit modi et voluptates reiciendis labore reprehenderit corrupti quo natus eum modi aut quia odio maxime qui qui sint voluptates voluptatem autem dolore dolor eos non voluptas molestiae quia exercitationem ea vel quibusdam ea vel recusandae iure et perspiciatis distinctio nemo magni placeat aut voluptatem ut labore eius ad.', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-04-13 16:37:52', '2019-04-13 16:37:52'),
(19, 'Necessitatibus tempora neque maiores cumque non nisi necessitatibus qui reprehenderit velit dolor quaerat.', 'necessitatibus-tempora-neque-maiores-cum-1304191937', 'Officia ad nobis totam illum ea libero inventore vel eligendi explicabo sequi consequuntur enim.', 'Accusantium ad repellat et facere id dolores rerum est architecto possimus quod voluptatem officiis hic est earum esse natus nulla rerum tempora quidem fuga accusantium suscipit blanditiis tenetur optio unde qui fugit voluptas dignissimos officia deserunt consequatur excepturi recusandae quidem ut enim sunt quia sit vitae excepturi voluptatem accusantium sapiente suscipit ut reiciendis officia quis doloremque odit voluptatum et eveniet id non distinctio repudiandae at magnam suscipit dolorum veritatis adipisci voluptas qui possimus alias est deleniti fuga a voluptatem et voluptatem qui voluptatem tempora molestiae nisi consectetur aliquam a quia et quam suscipit hic neque sequi adipisci quia in et dolore et aut unde ad doloremque quaerat unde dicta nostrum consequatur est quia molestiae eius laboriosam vitae dolor dolor iure dolor cumque numquam nemo assumenda ullam mollitia nemo quo impedit voluptatem sed aut consectetur porro expedita repudiandae ea itaque in quo commodi delectus.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-13 16:37:52', '2019-04-13 16:37:52'),
(20, 'Architecto itaque non odit ipsam nisi.', 'architecto-itaque-non-odit-ipsam-nisi-1304191937', 'Occaecati voluptatem minus rerum autem magnam rerum sapiente facilis quis doloremque ea voluptatem libero suscipit officia qui excepturi aut voluptate maiores doloremque.', 'Sed sit ducimus veritatis ea ut architecto et sed enim odio vero porro ratione sit voluptas saepe asperiores facere quia aspernatur laborum aut aut illo atque eligendi ut autem quia et quia officiis vitae natus ipsam eos consequatur sint accusantium quidem amet libero vitae omnis et corporis impedit suscipit enim optio omnis ea atque sit possimus maiores deserunt architecto ad aspernatur doloribus voluptatem deserunt eos eveniet sunt nihil quasi expedita quia ex ad nulla nobis culpa odit quod natus qui sunt et atque eveniet consequatur reiciendis velit qui ut omnis ad temporibus et illum velit quae cupiditate officia quia quod ut aperiam maxime qui qui officiis esse voluptate dolore tempora et neque saepe doloremque culpa quia quam unde omnis sint sunt quo nesciunt sunt exercitationem et soluta eius et totam ratione corporis voluptatibus sit sed et quo earum quis excepturi est in consectetur vitae neque voluptatibus est omnis quos expedita quas architecto rem quo nam qui est aut non similique quisquam vitae esse quia explicabo sequi et et quisquam architecto magnam quia quas temporibus cum officia accusantium.', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-04-13 16:37:52', '2019-04-13 16:37:52'),
(21, 'Provident id eum et soluta inventore quia provident.', 'provident-id-eum-et-soluta-inventore-qui-1304191937', 'Molestiae consequatur omnis debitis corrupti quam rerum repellendus dolor nesciunt ut et quo quis natus provident expedita sed.', 'Vel rerum vitae recusandae temporibus porro asperiores ut voluptas corrupti nemo nihil dolores quod quis incidunt ipsa voluptatem perferendis in ut tenetur et recusandae dolor ut quam quod magni autem veniam saepe quia placeat commodi fugit ipsa rerum voluptas et et culpa pariatur numquam dolor fugit non neque eum et error dolores fugiat sint a aliquam maxime et repudiandae beatae molestiae dolores voluptas ut voluptatum explicabo eum voluptates dolorem at aperiam quasi voluptas tempore natus debitis aspernatur in amet et quia et ut minima accusamus nihil eveniet fuga eveniet officiis voluptas vitae aut quidem quia quidem consequatur quo quo enim mollitia accusamus ad accusamus velit eum reprehenderit ad voluptatum veritatis commodi nesciunt quia id dolore eaque odio suscipit voluptatum consequatur molestias nisi corporis quas impedit ex provident expedita enim totam dolores nostrum dolor molestiae et adipisci laudantium rem non ut qui itaque necessitatibus voluptatem eum et ab sapiente eligendi blanditiis itaque id excepturi eligendi ex harum odit temporibus officia cum sed iste facilis iste inventore excepturi laudantium ipsa neque suscipit error aliquid perspiciatis quo ut deleniti corrupti velit illo molestiae qui ipsa recusandae modi quod porro sequi sed minus dolore accusamus tempora omnis eos consequatur rerum ut qui aut ut ducimus dolorum debitis aperiam aut.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2019-04-13 16:37:52', '2019-04-13 16:37:52');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `created_by` tinyint(4) DEFAULT NULL,
  `modified_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `parent_id`, `published`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(2, 'Spain', 'spain', 0, 1, NULL, NULL, '2019-04-12 06:22:41', '2019-04-12 15:45:10'),
(3, 'Italy', 'italy', 0, 1, NULL, NULL, '2019-04-12 06:23:20', '2019-04-12 15:45:02'),
(9, 'England', 'england', 0, 1, NULL, NULL, '2019-04-12 15:09:36', '2019-04-12 15:44:52');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryables`
--

CREATE TABLE `categoryables` (
  `category_id` int(11) NOT NULL,
  `categoryable_id` int(11) NOT NULL,
  `categoryable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categoryables`
--

INSERT INTO `categoryables` (`category_id`, `categoryable_id`, `categoryable_type`) VALUES
(3, 5, 'App\\Article'),
(3, 4, 'App\\Article'),
(2, 3, 'App\\Article'),
(2, 1, 'App\\Article'),
(2, 6, 'App\\Article'),
(2, 7, 'App\\Article'),
(2, 8, 'App\\Article'),
(2, 9, 'App\\Article'),
(2, 10, 'App\\Article'),
(3, 11, 'App\\Article');

-- --------------------------------------------------------

--
-- Структура таблицы `caterories`
--

CREATE TABLE `caterories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `publisher` tinyint(4) DEFAULT NULL,
  `created_by` tinyint(4) DEFAULT NULL,
  `modified_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_04_12_080942_create_caterories_table', 1),
(10, '2019_04_12_095502_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'and', 'alyabjev09@gmail.com', '$2y$10$FfHYixGQkLcbYTEz3cPZ9.KA1wtHAGO3avjeUvNIDbU9eVDYVJgzK', 'bXN9hFBdMUrbOqQicRtI9QXXjhDtTfGfrhlo20VL8iZL43u0uIYwb9cxzeVH', '2019-04-12 08:29:51', '2019-04-12 08:29:51');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `caterories_slug_unique` (`slug`);

--
-- Индексы таблицы `caterories`
--
ALTER TABLE `caterories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `caterories_slug_unique` (`slug`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `caterories`
--
ALTER TABLE `caterories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
