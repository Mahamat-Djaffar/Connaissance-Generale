class QuizQuestion {
  final String id;
  final String question;
  final List<String> options;
  final int correctAnswerIndex;
  final String explanation;
  final String category;
  final int difficulty; // 1: Facile, 2: Moyen, 3: Difficile
  final String theme;

  QuizQuestion({
    required this.id,
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
    required this.explanation,
    required this.category,
    required this.difficulty,
    required this.theme,
  });
}

class InformatiqueTechnologieQuestions {
  static List<QuizQuestion> getAllQuestions() {
    return [
      // ============ FACILE (10 questions) ============
      QuizQuestion(
        id: 'it_001',
        question: 'Que signifie l\'acronyme "CPU" en informatique ?',
        options: [
          'Unité centrale de traitement',
          'Mémoire vive',
          'Disque dur',
          'Carte graphique',
        ],
        correctAnswerIndex: 0,
        explanation:
            'CPU = Central Processing Unit, en français "unité centrale de traitement", c\'est le processeur qui exécute les instructions.',
        category: 'Informatique & Technologie',
        difficulty: 1,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_002',
        question: 'Quel langage est utilisé pour structurer une page web ?',
        options: ['Python', 'HTML', 'SQL', 'C++'],
        correctAnswerIndex: 1,
        explanation:
            'HTML (HyperText Markup Language) sert à structurer le contenu d\'une page web.',
        category: 'Informatique & Technologie',
        difficulty: 1,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_003',
        question: 'Que fait un navigateur web (browser) ?',
        options: [
          'Éditer des photos',
          'Compiler du code',
          'Afficher des pages web à partir d\'URLs',
          'Gérer la mémoire du système',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Un navigateur (Chrome, Firefox, Safari...) récupère et affiche des pages web à partir d\'URLs via HTTP/HTTPS.',
        category: 'Informatique & Technologie',
        difficulty: 1,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_004',
        question: 'Qu\'est-ce qu\'une URL ?',
        options: [
          'Un type de base de données',
          'Adresse permettant de localiser une ressource sur le web',
          'Un protocole de chiffrement',
          'Un langage de programmation',
        ],
        correctAnswerIndex: 1,
        explanation:
            'URL = Uniform Resource Locator : adresse permettant d\'accéder à une ressource sur Internet.',
        category: 'Informatique & Technologie',
        difficulty: 1,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_005',
        question: 'Que signifie "Wi‑Fi" communément ?',
        options: [
          'Wireless Fidelity',
          'Wide Fiber',
          'Wireless File',
          'Wide Fidelity',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Wi‑Fi est couramment décrit comme "Wireless Fidelity", terme marketing pour les réseaux sans fil.',
        category: 'Informatique & Technologie',
        difficulty: 1,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_006',
        question:
            'Quel service mobile populaire, né au Kenya, a transformé les paiements mobiles en Afrique ?',
        options: ['MobilePay', 'M-Pesa', 'PayPal', 'Venmo'],
        correctAnswerIndex: 1,
        explanation:
            'M-Pesa, lancé au Kenya par Safaricom, a révolutionné les services de paiement mobile en Afrique.',
        category: 'Informatique & Technologie',
        difficulty: 1,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_007',
        question:
            'Quel système d\'exploitation est open-source et largement utilisé sur les serveurs ?',
        options: ['Windows', 'macOS', 'Linux', 'iOS'],
        correctAnswerIndex: 2,
        explanation:
            'Linux est un système d\'exploitation libre et open-source très répandu sur les serveurs.',
        category: 'Informatique & Technologie',
        difficulty: 1,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_008',
        question: 'En informatique, que désigne un "bug" ?',
        options: [
          'Un virus informatique',
          'Un problème ou défaut dans un programme',
          'Un périphérique externe',
          'Un antivirus',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Un bug est une erreur, un défaut ou un comportement inattendu dans un logiciel ou un système.',
        category: 'Informatique & Technologie',
        difficulty: 1,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_009',
        question:
            'Quelle mémoire est volatile (perd son contenu à l\'extinction) ?',
        options: ['SSD', 'HDD', 'RAM', 'ROM'],
        correctAnswerIndex: 2,
        explanation:
            'La RAM (mémoire vive) est volatile : son contenu est perdu lorsque l\'alimentation est coupée.',
        category: 'Informatique & Technologie',
        difficulty: 1,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_010',
        question:
            'Quelle technologie permet la connexion sans fil entre un téléphone et un casque sur courte distance ?',
        options: ['Ethernet', 'Bluetooth', 'GPS', 'NFC'],
        correctAnswerIndex: 1,
        explanation:
            'Le Bluetooth est une technologie de communication sans fil courte portée couramment utilisée pour les périphériques audio.',
        category: 'Informatique & Technologie',
        difficulty: 1,
        theme: 'Informatique et Technologie',
      ),

      // ============ MOYEN (15 questions) ============
      QuizQuestion(
        id: 'it_011',
        question: 'Quelle est la différence principale entre HTTP et HTTPS ?',
        options: [
          'HTTPS est plus lent',
          'HTTPS chiffre les données échangées (sécurité)',
          'HTTP fonctionne uniquement sur mobile',
          'HTTP exige un mot de passe',
        ],
        correctAnswerIndex: 1,
        explanation:
            'HTTPS utilise TLS/SSL pour chiffrer la communication entre client et serveur, assurant confidentialité et intégrité.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_012',
        question:
            'Quel service traductionnel transforme un nom de domaine (example.com) en adresse IP ?',
        options: ['DHCP', 'DNS', 'FTP', 'SMTP'],
        correctAnswerIndex: 1,
        explanation:
            'Le DNS (Domain Name System) résout les noms de domaine en adresses IP pour localiser des services sur Internet.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_013',
        question: 'Que signifie "API" ?',
        options: [
          'Application Programming Interface',
          'Automatic Process Integration',
          'Advanced Pixel Interface',
          'Application Protocol Internet',
        ],
        correctAnswerIndex: 0,
        explanation:
            'API = Application Programming Interface : interface permettant à des logiciels de communiquer entre eux.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_014',
        question: 'Qu\'est-ce que le "cloud computing" ?',
        options: [
          'Un type de disque dur externe',
          'Exécution de services (stockage, calcul) sur des serveurs distants accessibles via Internet',
          'Un programme anti-virus',
          'Un langage de programmation',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le cloud computing fournit ressources et services informatiques (stockage, calcul) à la demande via Internet.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_015',
        question: 'Que signifie "IoT" (Internet of Things) ?',
        options: [
          'Internet of Things : objets connectés communiquant entre eux',
          'Input/output Transfer',
          'Internal operating Tools',
          'International online Transactions',
        ],
        correctAnswerIndex: 0,
        explanation:
            'IoT regroupe des objets physiques (capteurs, appareils) connectés et échangeant des données via Internet.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_016',
        question:
            'Quel système de contrôle de versions est le plus utilisé aujourd\'hui par les développeurs ?',
        options: ['SVN', 'Mercurial', 'Git', 'CVS'],
        correctAnswerIndex: 2,
        explanation:
            'Git est le système de gestion de versions distribué le plus utilisé, notamment via GitHub/GitLab/Bitbucket.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_017',
        question:
            'Quel paradigme de programmation met l\'accent sur les objets et leurs interactions ?',
        options: [
          'Programmation fonctionnelle',
          'Programmation impérative',
          'Programmation orientée objet (POO)',
          'Programmation logique',
        ],
        correctAnswerIndex: 2,
        explanation:
            'La POO (programmation orientée objet) modélise le code autour d\'objets et de classes avec encapsulation, héritage et polymorphisme.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_018',
        question:
            'Quel est le rôle principal d\'une base de données relationnelle (SQL) ?',
        options: [
          'Stocker et organiser des données structurées avec des relations entre tables',
          'Créer des interfaces graphiques',
          'Gérer la mémoire système',
          'Transmettre des e-mails',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Les bases de données relationnelles stockent des données structurées et permettent de les interroger via SQL.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_019',
        question:
            'Quel acronyme désigne la méthode de chiffrement asymétrique utilisée pour échanger une clé secrète ?',
        options: ['AES', 'RSA', 'SHA', 'MD5'],
        correctAnswerIndex: 1,
        explanation:
            'RSA est un algorithme de chiffrement asymétrique souvent utilisé pour l\'échange de clés et la signature numérique.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_020',
        question: 'Que mesure la latence dans un réseau ?',
        options: [
          'La capacité totale du réseau',
          'Le délai de transmission entre deux points',
          'Le nombre d\'utilisateurs connectés',
          'La puissance du signal',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La latence est le délai (temps de réponse) nécessaire pour qu\'un paquet parcoure le réseau entre deux points.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_021',
        question:
            'Quelle société est à l\'origine du développement initial du système Android (avant acquisition) ?',
        options: ['Apple', 'Google', 'Android Inc.', 'Microsoft'],
        correctAnswerIndex: 2,
        explanation:
            'Android a été développé à l\'origine par la startup Android Inc., puis acquis par Google en 2005.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_022',
        question: 'Qu\'est-ce qu\'un CAPTCHA sert à empêcher ?',
        options: [
          'Les attaques physiques',
          'Les accès non autorisés par human hacking',
          'Les interactions automatisées (bots)',
          'La perte de données',
        ],
        correctAnswerIndex: 2,
        explanation:
            'CAPTCHA (Completely Automated Public Turing test to tell Computers and Humans Apart) filtre les interactions automatisées pour protéger services web.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_023',
        question: 'Que représente la notation "O(n)" (Big O) en informatique ?',
        options: [
          'L\'espace disque requis',
          'La complexité en temps (ordre de grandeur) d\'un algorithme',
          'La vitesse en GHz',
          'La taille d\'un fichier',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La notation Big O décrit la croissance de la complexité (temps ou espace) d\'un algorithme en fonction de la taille de l\'entrée.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_024',
        question: 'Quelle est la longueur en bits d\'une adresse IPv4 ?',
        options: ['32 bits', '64 bits', '128 bits', '16 bits'],
        correctAnswerIndex: 0,
        explanation:
            'Une adresse IPv4 est codée sur 32 bits (ex : 192.168.0.1). IPv6 utilise 128 bits.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_025',
        question:
            'Quel outil est couramment utilisé pour créer et collaborer sur du code en ligne (hébergement Git) ?',
        options: ['Docker', 'Kubernetes', 'GitHub', 'Jenkins'],
        correctAnswerIndex: 2,
        explanation:
            'GitHub (et GitLab, Bitbucket) permet d\'héberger des dépôts Git et de collaborer sur le code via pull requests.',
        category: 'Informatique & Technologie',
        difficulty: 2,
        theme: 'Informatique et Technologie',
      ),

      // ============ DIFFICILE (15 questions) ============
      QuizQuestion(
        id: 'it_026',
        question:
            'Quel théorème formalise l\'impossibilité d\'un consensus en présence de processus défaillants asynchrones (Byzantine) ?',
        options: [
          'Théorème CAP',
          'Problème de l\'année 2000',
          'Problème des généraux byzantins (Byzantine Generals Problem)',
          'Théorème de Pythagore',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Le "Byzantine Generals Problem" illustre les difficultés d\'obtenir un consensus fiable en présence d\'acteurs défaillants ou malveillants dans un système distribué.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_027',
        question:
            'Le théorème CAP en systèmes distribués énonce trois propriétés : Consistency, Availability, Partition tolerance. On peut garantir au maximum combien simultanément ?',
        options: ['1', '2', '3', '0'],
        correctAnswerIndex: 1,
        explanation:
            'Le théorème CAP indique qu\'un système distribué ne peut garantir que deux des trois propriétés simultanément (Consistency, Availability, Partition tolerance).',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_028',
        question:
            'Quel algorithme est utilisé pour ordinairement signer et vérifier l\'intégrité dans les blockchains publiques ?',
        options: ['RSA', 'ECDSA (courbes elliptiques)', 'AES', 'SHA-1 seul'],
        correctAnswerIndex: 1,
        explanation:
            'De nombreuses blockchains publiques (ex.: Bitcoin, Ethereum avant certains changements) utilisent la cryptographie à courbes elliptiques (ECDSA) pour les signatures numériques.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_029',
        question:
            'Quelle propriété ACID d\'une base de données garantit que les transactions sont durables même après panne ?',
        options: [
          'Atomicité',
          'Cohérence (Consistency)',
          'Isolation',
          'Durabilité (Durability)',
        ],
        correctAnswerIndex: 3,
        explanation:
            'Durability signifie que les effets d\'une transaction validée persistent même après une panne système.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_030',
        question:
            'Qu\'est‑ce qu\'une "attaque par injection SQL" cible principalement ?',
        options: [
          'Le système d\'exploitation',
          'La couche réseau',
          'La base de données via des requêtes construites de manière non sécurisée',
          'Un périphérique USB',
        ],
        correctAnswerIndex: 2,
        explanation:
            'L\'injection SQL exploite des failles dans la construction de requêtes SQL pour exécuter des commandes non prévues sur la base de données.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_031',
        question:
            'Quelle structure de données est utilisée pour vérifier efficacement l\'intégrité de blocs dans des systèmes distribués (ex: Git, blockchain) ?',
        options: [
          'Table de hachage simple',
          'Liste chaînée',
          'Arbre de Merkle',
          'Pile (stack)',
        ],
        correctAnswerIndex: 2,
        explanation:
            'L\'arbre de Merkle (Merkle tree) permet de vérifier l\'intégrité de grandes structures de données via des hachages combinés.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_032',
        question:
            'Qu\'est‑ce que "homomorphic encryption" permet théoriquement de faire ?',
        options: [
          'Chiffrer sans clé',
          'Exécuter des calculs sur des données chiffrées sans les déchiffrer',
          'Remplacer le chiffrement asymétrique',
          'Compresser des données chiffrées',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le chiffrement homomorphe permet d\'effectuer certaines opérations sur des données chiffrées et d\'obtenir, après déchiffrement, le même résultat que si les opérations avaient été faites sur les données en clair.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_033',
        question: 'Quel est l\'objectif principal du protocole OAuth ?',
        options: [
          'Chiffrer les emails',
          'Déléguer une autorisation d\'accès à une ressource sans divulguer les identifiants',
          'Transférer des fichiers',
          'Gérer les certificats SSL',
        ],
        correctAnswerIndex: 1,
        explanation:
            'OAuth permet à une application d\'obtenir une autorisation limitée pour accéder à des ressources au nom d\'un utilisateur, sans partager son mot de passe.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_034',
        question:
            'Quelle loi empirique (observation) énoncée par Gordon Moore concerne l\'évolution des microprocesseurs ?',
        options: [
          'Le nombre de transistors sur une puce double tous les 18–24 mois',
          'La vitesse des processeurs diminue chaque année',
          'La consommation d\'énergie des puces est nulle',
          'Les puces deviennent imperméables',
        ],
        correctAnswerIndex: 0,
        explanation:
            'La "loi de Moore" observe que le nombre de transistors sur une puce a tendance à doubler environ tous les 18–24 mois (observation historique, tendance long terme).',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_035',
        question:
            'Quel concept décrit un système où les données sont réparties sur plusieurs serveurs et dont la cohérence peut être éventuelle (eventual consistency) ?',
        options: [
          'Système centralisé',
          'Système monolithique',
          'Système distribué avec cohérence éventuelle (eventual consistency)',
          'Système hors ligne',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Dans de nombreux systèmes distribués (ex: certains magasins NoSQL), la cohérence est éventuelle : les mises à jour se propagent et la forme cohérente arrive avec le temps.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_036',
        question:
            'Quel protocole réseau est conçu pour traduire les noms de domaine en adresses IP et est sensible aux attaques de "cache poisoning" ?',
        options: ['BGP', 'DNS', 'DHCP', 'SMTP'],
        correctAnswerIndex: 1,
        explanation:
            'Le DNS peut être la cible d\'attaques de "cache poisoning" (empoisonnement du cache) visant à renvoyer de fausses adresses IP pour un nom de domaine.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_037',
        question:
            'Quel algorithme de tri a une complexité moyenne O(n log n) et est souvent utilisé en pratique (même si son pire cas peut être O(n^2) sans précautions) ?',
        options: [
          'Tri par insertion',
          'Tri à bulles',
          'Quicksort',
          'Tri par sélection',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Quicksort a une complexité moyenne O(n log n) ; son pire cas O(n^2) peut être évité par un bon choix de pivot ou techniques d\'optimisation.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_038',
        question:
            'Quelle technologie a permis l\'essor des applications "serverless" en cloud (ex: fonctions à la demande) ?',
        options: [
          'Conteneurs (Docker) et systèmes d\'orchestration + services FaaS cloud',
          'Disques durs mécaniques',
          'Réseaux 2G',
          'Processeurs 8 bits',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Les conteneurs, l\'orchestration (Kubernetes) et les offres cloud FaaS (Functions as a Service) ont contribué au développement des architectures serverless.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_039',
        question:
            'Quel est l\'enjeu principal de l’utilisation d\'intelligence artificielle en santé en Afrique ?',
        options: [
          'Remplacer complètement les médecins',
          'Améliorer le diagnostic et l\'accès aux soins tout en gérant les biais de données et l\'infrastructure limitée',
          'Rendre les soins payants',
          'Interdire les téléconsultations',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'IA peut améliorer diagnostics et accès, mais il faut gérer qualité des données, biais, protection des données et limitations d\'infrastructure.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),

      QuizQuestion(
        id: 'it_040',
        question:
            'Quelle pratique DevOps accélère le déploiement continu et la qualité : CI/CD signifie ?',
        options: [
          'Continuous Integration / Continuous Delivery (ou Deployment)',
          'Centralized Infrastructure / Continuous Data',
          'Code Inspection / Continuous Debugging',
          'Client Integration / Customer Delivery',
        ],
        correctAnswerIndex: 0,
        explanation:
            'CI/CD (Intégration continue / Livraison continue) automatise tests et déploiements pour livrer du code de manière fiable et rapide.',
        category: 'Informatique & Technologie',
        difficulty: 3,
        theme: 'Informatique et Technologie',
      ),
    ];
  }

  // Méthodes utilitaires
  static List<QuizQuestion> getQuestionsByDifficulty(int difficulty) {
    return getAllQuestions().where((q) => q.difficulty == difficulty).toList();
  }

  static List<QuizQuestion> getRandomQuestions(int count) {
    final all = getAllQuestions();
    all.shuffle();
    return all.take(count).toList();
  }

  static List<QuizQuestion> getQuestionsByThemeAndDifficulty(
    String theme,
    int difficulty,
  ) {
    return getAllQuestions()
        .where((q) => q.theme == theme && q.difficulty == difficulty)
        .toList();
  }
}
