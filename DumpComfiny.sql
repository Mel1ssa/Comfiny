--
-- Database: `comfiny`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--
DROP TABLE IF EXISTS post;
CREATE SEQUENCE post_seq;
CREATE TABLE IF NOT EXISTS post (
  id         INT      NOT NULL DEFAULT NEXTVAL ('post_seq') PRIMARY KEY,
  title      VARCHAR(255) NOT NULL UNIQUE,
  content    LONGTEXT     NOT NULL UNIQUE,
  slug       VARCHAR(255) NOT NULL,
  isDraft    SMALLINT            DEFAULT NULL,
  createdAt  TIMESTAMP(0)     NOT NULL,
  modifiedAt TIMESTAMP(0)     NOT NULL,
  tags       VARCHAR(255)          DEFAULT NULL,
);

--
-- Dumping data for table `post`
--

INSERT INTO post (id, title, content, slug, isDraft, createdAt, modifiedAt, tags) VALUES
  (7, 'Tarte au citron meringuée',
   '<h4>Ingrédients (6 personnes)</h4>rnrn<h5>Pour la crème au citron</h5>rn<ul>rn<li>4 càs de maïzena</li>rn        rn<li>25g de beurre</li>rn        rn<li>140g de sucre</li>rn        rn<li>4 jaunes d"œufs</li>rn        rn<li>30 cl d'eau</li>rn        rn<li>Le jus de 4 citrons</li>rn</ul>rn    rn<h4>Pour la pâte sablée</h4>rn<ul >rn <li> 1jaune d"œuf</li>rn        rn<li>1 pincée de sel</li>rn        rn<li>1 sachet de sucre vanillé</li>rn        rn<li>80g de sucre</li>rn        rn<li> 140g de beurre un peu mou</li>rn<li>240g de farine  </li>rn</ul>rn    rn<h4>Pour la meringue française</h4>rn<ul>rn        rn<li>1 pincée de sel</li>rn        rn<li>240g de sucre</li>rnrn<li>4blancs d"œufs</li>rn</ul>rn <br/><br/>rnDans un bol, m&eacute;langer les jaunes d'&oelig;ufs et le sucre. Dans une casserole, mettre l'eau, le jus de citron et la ma&iuml;zena. Faire chauffer la pr&eacute;paration &agrave; petit feu et en m&eacute;langeant avec une cuill&egrave;re en bois.</p><p>Lorsque celui-ci commence &agrave; chauffer, verser petit &agrave; petit ce m&eacute;lange sur le m&eacute;lange oeuf-sucre tout en m&eacute;langeant avec la cuill&egrave;re.</p><p>Remettre le tout dans la casserole et cuire &agrave; petit feu en remuant le m&eacute;lange. La cr&egrave;me est pr&ecirc;te lorsque celle-ci nappe la cuill&egrave;re. Retirer la casserole du feu, laisser refroidir quelques instants puis ajouter le beurre. Bien m&eacute;langer. R&eacute;server. La cr&egrave;me est pr&ecirc;te !</p>             <br/><br/>rnrn<strong>Pr&eacute;paration de la p&acirc;te sabl&eacute;e</strong></p><p>Pr&eacute;chauffer le four &agrave; 180&deg;C. Dans un r&eacute;cipient, mettre la farine, les sucres et la pinc&eacute;e de sel. M&eacute;langer le tout. Ajouter le beurre en d&eacute;s. Bien m&eacute;langer. La pr&eacute;paration est au stade sabl&eacute;e. Ajouter le jaune d'&oelig;uf. Bien m&eacute;langer pour pouvoir obtenir une p&acirc;te. Sur une feuille de cuisson, &eacute;taler cette p&acirc;te &agrave; l'aide d'un rouleau pour environ 9mm d'&eacute;paisseur. Ensuite disposez la sur votre moule &agrave; tarte classique sans enlever la feuille de cuisson).</p><p>Couper les bords &agrave; ras le bord du moule. Piquer la p&acirc;te &agrave; l'aide d'une fourchette et mettre par dessus une autre feuille de cuisson. Mettre des poids au milieu, des graines s&eacute;ch&eacute;es, ou du gros sel pour &eacute;viter que le fond de la p&acirc;te ne soit difforme. Enfourner au four toujours &agrave; 180&deg;C pendant 20 min. Au bout de 20 min, retirer la feuille de cuisson avec les poids (ou autre) et remettre au four pour 10 min de plus avec une feuille de cuisson par dessus pour ne pas que celle-ci reprenne de la couleur. Laisser refroidir. La fond de tarte est pr&ecirc;t !</p><br/><br/>rnVerser la cr&egrave;me au citron sur le fond de tarte. Avec une spatule, caresser la cr&egrave;me pour que le dessus soit bien r&eacute;gulier.</p><p>&nbsp;</p><br/><br/>     rnrn<strong>Pr&eacute;paration de la meringue fran&ccedil;aise</strong></p><p>Dans un bol, mettre les blanc d'oeufs avec la pinc&eacute;e de sel. Monter le tout en neige tr&egrave;s ferme. Puis ajouter, tout en m&eacute;langeant, le sucre petit &agrave; petit pour que la meringue soit homog&egrave;ne. La meringue est pr&ecirc;te lorsqu'elle est satin&eacute;e. Remplir une poche &agrave; douille avec cette pr&eacute;paration (avec l'embout de votre choix) et laissez libre cours &agrave; votre imagination (en pointe, en spirale, ...).</p><br/><br/>     rnrnrn<p>A l'aide d'un chalumeau, faites prendre des couleurs &agrave; la meringue.</p><p>Si vous n'avez pas de chalumeau, rallumer le four sur la position grill et &agrave; chaleur fixe &agrave; basse temp&eacute;rature. Remettre votre tarte au four pendant 2-3 min.Les extr&eacute;mit&eacute;s de la meringue seront color&eacute;es. La tarte est pr&ecirc;te !</p>rn<br/><br/>rnrn<i> Recette proposée par <a href="http://www.750g.com/tarte-au-citron-meringuee-r94186.htm">750g.com</a></i>',
   'tarte-au-citron-meringuee', NULL, '2017-12-13 23:28:42', '2017-12-13 23:28:42', NULL),
  (8, 'Pain au chocolat VS chcolatîne',
   'Vous, vous savez comment on doit appeler la fameuse viennoiserie. Mais pourquoi choisissez-vous tel ou tel mot ? <br/><br/>rnrnA l’occasion de la parution de mon Atlas du français de nos régions, réalisé à partir des travaux publiés sur mon blog, je me suis penché sur le problème. <br/><br/>rnrnC’est une question qui a fait pas mal de bruit sur le web depuis les fameuses sorties de Jean‑François Copé. Outre le tollé politique qu’ont soulevé ces paroles, elles ont été à l’origine de nombreuses querelles linguistiques, relatives à la dénomination de cette délicieuse viennoiserie dans laquelle le boulanger glisse une barre de chocolat.<br/><br/>rnrnrnDepuis, la question fait régulièrement le buzz sur les médias sociaux : des lycéens de Montauban adressent même en janvier 2017 une lettre au Président de la République pour que chocolatine entre dans le dictionnaire. <br/><br/>rnrnEn février 2017 la photo d’une chocolatine au Japon est partagée des milliers de fois sur les réseaux sociaux… Sur Facebook, il existe même un Comité de défense de la chocolatine. <br/><br/>rnrnPour conclure, voici la réponse d'un linguiste lorsque nous lui avons posé la question:<br/><br/>rn<cite>rnQuand on me demande quelle variante de mot, de prononciation ou de phrase est la plus correcte, je réponds qu’il n’y a pas une variante qui est correcte, mais plusieurs. En tant que linguiste, je reste persuadé que ce sont les locuteurs qui définissent la norme, et non l’inverse. Dès lors, il existe autant de normes qu’il existe de régions… ou d’usages dominants !rn</cite>rn<br/><br/>rn<i>Article de <a href="http://www.sudouest.fr/2017/10/19/pain-au-chocolat-vs-chocolatine-fight-3879298-10275.php">SudOuest</a></i>',
'pain-au-chocolat-vs-chcolatine', NULL, '2017-12-13 23:38:08', '2017-12-26 21:10:33', NULL),
(12, 'DIY : USTENSILES DE CUISINE DÉCORÉS',
'<strong>MATÉRIEL :</strong>rn<br/>rn<ul>rn<li>ustensiles de cuisine en bois</li>rn<br/>rn<li>un marqueur noir indélébile et non toxique bien sûr (perso j’ai utilisé un feutre à porcelaine)</li>rn<br/>rn<li>(facultatif : si vous possédez un piro-graveur, c’est le top, utilisez le à la place du marqueur)</li>rn</ul>rn<br/>rn<br/>rn<strong>TUTORIEL:</strong>rn<ol>rn<li>Vérifiez que votre ustensile soit bien propre et sec.</li>rn<br/>rn<li>Commencez à dessiner, n&rsquo;appuyez pas trop fort car le bois absorbe l&rsquo;encre qui va d&rsquo;elle même s&rsquo;étaler un peu plus largement que ce que vous pensiez.</li>rn<br/>rn<li>Je vous conseille de dessiner davantage sur le manche de l&rsquo;ustensile que sur la partie destinée à être en contact avec les aliments, mieux vaut être prudent.</li>rn<br/>rn<li>Laissez libre cours à votre imagination ! Essayez les formes géométriques (lignes, ronds, pois&#8230;), des symboles (flèches&#8230;) et tout ce qui vous passe par la tête ! Vous pouvez aussi varier les couleurs, l&rsquo;épaisseur des traits de vos marqueurs pour des résultats différents.</li>rn</ol>rn<br/><br/>rnrnrnA vous de jouer ! Et puis, qui refuserait d’avoir des objets utiles mais en plus de ça, esthétiques dans sa cuisine ? A disposer de toute urgence dans un joli pot, à la vue de tous. La petite astuce supplémentaire ? Évidemment, vous pouvez réaliser ce DIY pour vous mais vous pouvez très bien aussi transformer ça en idée cadeau ! Pour un cuisinier/pâtissier, pour quelqu'un qui aime ça ou tout simplement pour quelqu'un qui aime la décoration et les jolies choses. rnrn<br/><br/>rn<i>Article de <a href="https://gateauxetharmonieblog.wordpress.com/2017/02/20/diy-ustensiles-de-cuisine-redecores/">gateauxetharmonieblog</a>',
'diy-ustensiles-de-cuisine-decores', NULL, '2017-12-21 15:55:04', '2017-12-21 16:01:21', NULL),
(13, 'Le meilleur pâtissier du monde !',
'Le "meilleur pâtissier du monde" est français. C'est <b>Pierre Hermé</b> qui a été désigné par le classement des "World's 50 Best Restaurants". À 54 ans et 40 ans de carrière, il a bâti son empire sucré sur ses macarons aux associations de saveurs inédites, plébiscités par les gourmets à Paris, Tokyo ou Dubaï. Issu d'une lignée de quatre générations de boulangers-pâtissiers alsaciens, celui que la presse a surnommé "le Picasso de la pâtisserie" ou "le Dior des desserts" pour sa créativité règne sur 47 boutiques dans 12 pays. Cette figure de proue de la haute pâtisserie française a désormais sa statue en cire au musée Grévin à Paris et son nom dans le dictionnaire Larousse.rn<br/>rn<br/>rnSi ce pâtissier amateur d'art et de design propose des collections de chocolats, tartes et cakes sans cesse renouvelées, il est surtout associé au macaron, un petit gâteau dont le corps est formé de deux biscuits à la poudre d'amande et le cœur d'une crème parfumée, qui se vend 2,10 euros l'unité. Une douceur que Pierre Hermé, qui a commencé sa carrière à 14 ans auprès de Gaston Lenôtre, en 1976, avant de rejoindre Fauchon quelques années plus tard, n'aimait pas au départ. "Je trouvais ça trop sucré", dit-il. "Ce qui m'a donné envie de travailler le macaron, c'est qu'il n'y avait alors pas grand-chose, juste café, chocolat, vanille. Je me suis dit qu'il y avait vraiment un champ de créativité à explorer", raconte-t-il à l'AFP, dans son bureau lumineux près du parc Monceau.rnrn<br/>rn<br/>rnDans les années 1980, il se lance dans d'inventives associations de saveurs, "pour rendre le goût du macaron plus ludique". Leur goût est d'autant plus intense que la garniture est généreuse, explique le pâtissier, qui a également travaillé chez Ladurée, maison réputée elle aussi pour ce petit gâteau. Pour Pierre Hermé, qui a créé son entreprise en 1997 avec Charles Znaty, inaugurant l'année suivante sa première boutique au Japon avant d'ouvrir en France, le sucre doit être dosé "comme un assaisonnement". Parmi ses associations de saveurs à succès, le macaron huile d'olive et vanille, le Mogador (chocolat au lait et fruit de la passion), ou encore l'Ispahan, un best-seller alliant framboise, litchi et rose. Ses sources d'inspiration ? "Ce peut être un produit que j'ai goûté, une lecture, une image", dit Pierre Hermé, qui commence toujours par dessiner et écrire la recette, avant de la soumettre à une équipe de chefs pâtissiers chargés de réaliser les essais.rnrn<br/>rn<br/>rnPierre Hermé se réjouit de constater l'engouement actuel pour la pâtisserie haut de gamme, auquel il "ne pense pas être complètement étranger". "Il y a de plus en plus de pâtissiers de talent qui font parler d'eux, ouvrent des boutiques, font des choses exceptionnelles dans les hôtels, les restaurants... La profession est très vivante, plein de jeunes veulent apprendre ce métier, je trouve cela formidable." "Il y a 20 ans, quand on voulait être pâtissier, les gens vous disaient Ah bon ?", raconte le quinquagénaire à la silhouette ronde. "Moi, dès l'âge de 9 ans j'ai voulu être pâtissier. Ma mère a essayé de m'en dissuader mais ça n'a pas marché !"rn<br/><br/>rn<i>Article du  <a href="http://www.lepoint.fr/gastronomie/pierre-herme-sacre-meilleur-patissier-du-monde-14-06-2016-2046470_82.php">Point.fr</a></i>',
   'le-meilleur-patissier-du-monde', NULL, '2017-12-21 15:48:04', '2017-12-21 15:48:04', NULL),
  (14, 'Recettes de fin d'année',
   'Voici une selections de bûches classées de la plus simple à la plus sophistiquée :rn<br/>rnrn<ul>rnrn<li> <a href="--" > <b> l’acidulée </b> </a> : sablé breton au citron,  mousse légère sans œufs chocolat au lait citron, gelée de citron,  cake au citron. </li>rn<br/>rn<li> <a href="#"> <b> Toute en douceur</b></a> :  biscuit aux noisettes, crémeux caramel vanille, praliné croustillant, mousse ivoire vanille caramel.</li>rn<br/>rn<li><a href="#"><b>Cylan à la manière de Philippe Conticini </b></a>: croustillant duja,  confit de citron jaune,  biscuit au citron, crémeux au thé, dacquoise,  mousse au chocolat blanc acidulée.</li>rn<br/>rn<li><a href="#"><b>Bûche facile à faire avec les enfants</b> </a>: pain de Gênes , ganache montée parfums au choix..</li>rn</ul>rn<br/>rnSans oublier les entremets à monter sous forme de bûches ...rn<br/>rnLa charlotte marrons myrtilles, la charlotte au framboises, la charlotte aux fruits rouges, l’entremets cassis passion, l’entremets cumbava et bien d’autre encore à retrouver <a href="#">ici </a>rn<br/><br/>rn<i>Article de <a href="https://www.mercotte.fr/2010/12/08/selection-de-recettes-de-fete-et-quelques-explications-pour-vous-guider/">Mercotte</a></i>',
'recettes-de-fin-d-annee', NULL, '2017-12-14 00:06:04', '2017-12-26 23:06:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id`                    INT(11)      NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username`              VARCHAR(180) NOT NULL,
  `username_canonical`    VARCHAR(180) NOT NULL UNIQUE,
  `email`                 VARCHAR(180) NOT NULL,
  `email_canonical`       VARCHAR(180) NOT NULL UNIQUE,
  `enabled`               TINYINT(1)   NOT NULL,
  `salt`                  VARCHAR(255)          DEFAULT NULL,
  `password`              VARCHAR(255) NOT NULL,
  `last_login`            DATETIME              DEFAULT NULL,
  `confirmation_token`    VARCHAR(180)          DEFAULT NULL UNIQUE,
  `password_requested_at` DATETIME              DEFAULT NULL,
  `roles`                 LONGTEXT     NOT NULL
  COMMENT '(DC2Type:array)'
) DEFAULT CHARSET = utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`)
VALUES
  (1, 'Melissa', 'melissa', 'melissa.mekaoui@gmail.com', 'melissa.mekaoui@gmail.com', 1, NULL,
      '$2y$13$mLYOH2s8HyVsDhjhRnIedOL2apyKse6uyEcNizPwsqAOPzov4j40a', '2017-12-27 01:23:09', NULL, NULL,
   'a:1:{i:0;s:10:\"ROLE_ADMIN\";}'),
  (3, 'admin', 'admin', 'admin@admin.fr', 'admin@admin.fr', 1, NULL,
      '$2y$13$oNS/hJqTmteHY8tIKlbXQu7yV7GnJ/XyYkILb0Xt8UTvQjhXXdyZ.', '2017-12-14 16:51:14', NULL, NULL,
   'a:1:{i:0;s:10:\"ROLE_ADMIN\";}'),
  (6, 'Fati', 'blabla', 'fati@blabla.fr', 'blabla@blabla.fr', 1, NULL,
      '$2y$13$YjP0ouz0L9dxVljAE7JSDe0pzGslS7bWdJ0.agxE20kHqMRAgj3MC', '2017-12-14 17:30:06', NULL, NULL, 'a:0:{}');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
