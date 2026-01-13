// Questions — Expressions & Proverbes (avec quelques références africaines)
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

class ExpressionsProverbesQuestions {
  static List<QuizQuestion> getAllQuestions() {
    return [
      // ============ FACILE (10 questions) ============
      QuizQuestion(
        id: 'ep_001',
        question: 'Que signifie l\'expression "Il pleut des cordes" ?',
        options: [
          'Il pleut très fort',
          'Il y a une tornade',
          'Il fait très chaud',
          'Il neige',
        ],
        correctAnswerIndex: 0,
        explanation:
            'L\'expression signifie qu\'il pleut abondamment, très fort.',
        category: 'Expressions & Proverbes',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_002',
        question: 'Complétez le proverbe : "L\'habit ne fait pas..." ?',
        options: ['le roi', 'le moine', 'le soldat', 'le philosophe'],
        correctAnswerIndex: 1,
        explanation:
            'Le proverbe complet est "L\'habit ne fait pas le moine", signifiant qu\'il ne faut pas juger sur les apparences.',
        category: 'Expressions & Proverbes',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_003',
        question: 'Que veut dire "avoir la tête dans les nuages" ?',
        options: [
          'Être distrait',
          'Être malade',
          'Être content',
          'Être en colère',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Cette expression signifie être rêveur ou distrait, peu concentré sur la réalité.',
        category: 'Expressions & Proverbes',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_004',
        question: 'Que signifie "mettre la main à la pâte" ?',
        options: [
          'Tricher',
          'Participer et aider',
          'Cacher quelque chose',
          'Cuisiner seul',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Mettre la main à la pâte signifie participer activement à une tâche ou aider.',
        category: 'Expressions & Proverbes',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_005',
        question:
            'Que veut dire l\'expression africaine "Quand les racines d\'un arbre sont profondes, le vent ne le fait pas tomber" ?',
        options: [
          'La nature est puissante',
          'Les traditions solides résistent aux épreuves',
          'Les arbres sont immortels',
          'Le vent n\'est pas dangereux',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Ce proverbe signifie que des bases solides (culturelles, familiales, morales) permettent de résister aux difficultés.',
        category: 'Expressions & Proverbes',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_006',
        question: 'Que veut dire "appeler un chat un chat" ?',
        options: [
          'Nommer un animal',
          'Être direct et franc',
          'Donner un surnom',
          'Faire preuve d\'humour',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Cette expression signifie parler franchement et nommer les choses telles qu\'elles sont.',
        category: 'Expressions & Proverbes',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_007',
        question: 'Que signifie "qui vivra verra" ?',
        options: [
          'On doit prédire l\'avenir',
          'Le temps révélera ce qui va se passer',
          'Vivre longtemps assure le succès',
          'Il faut regarder la télé',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le sens est que le temps permettra de savoir comment les choses évolueront.',
        category: 'Expressions & Proverbes',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_008',
        question:
            'Que veut dire "la goutte d\'eau qui fait déborder le vase" ?',
        options: [
          'Une pluie fine',
          'Un événement mineur mais final qui provoque une réaction',
          'Une réparation',
          'Un miracle',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Expression utilisée pour dire qu\'un petit événement supplémentaire provoque une réaction après une accumulation.',
        category: 'Expressions & Proverbes',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_009',
        question:
            'Que signifie le proverbe swahili "Haraka haraka haina baraka" (couramment utilisé en Afrique de l\'Est) ?',
        options: [
          'La vitesse apporte la bénédiction',
          'La hâte n\'a pas de bénédiction',
          'La patience n\'est pas importante',
          'Il faut courir pour réussir',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le proverbe signifie que la précipitation est rarement bénéfique ; il vaut mieux faire les choses correctement.',
        category: 'Expressions & Proverbes',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_010',
        question: 'Que veut dire "poser un lapin" à quelqu\'un (familier) ?',
        options: [
          'Offrir un animal',
          'Ne pas venir à un rendez-vous sans prévenir',
          'Faire une blague',
          'Donner un cadeau en retard',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Poser un lapin signifie manquer un rendez-vous sans prévenir la personne.',
        category: 'Expressions & Proverbes',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      // ============ MOYEN (12 questions) ============
      QuizQuestion(
        id: 'ep_011',
        question:
            'Que signifie le proverbe africain "Un seul doigt ne peut pas attraper un pou" ?',
        options: [
          'On peut attraper un pou seul',
          'La solidarité permet de résoudre les problèmes',
          'Les doigts sont inutiles',
          'Il faut avoir des outils',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le proverbe insiste sur l\'importance de la coopération et de la solidarité.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_012',
        question:
            'Quelle est la signification de "mettre les points sur les i" ?',
        options: [
          'Relier des points',
          'Clarifier et préciser une situation',
          'Dessiner',
          'Ignorer les détails',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'expression signifie clarifier, préciser les détails importants.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_013',
        question:
            'Que signifie le proverbe "Tel est pris qui croyait prendre" ?',
        options: [
          'Le malfaiteur est plus malin',
          'Celui qui voulait tromper est finalement trompé',
          'La prise est facile',
          'Il faut toujours capturer',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Ce proverbe dit que celui qui voulait tromper quelqu\'un se retrouve souvent trompé à son tour.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_014',
        question: 'Que veut dire "faire d\'une pierre deux coups" ?',
        options: [
          'Lancer une pierre',
          'Obtenir deux résultats avec une seule action',
          'Casser deux objets',
          'Se blesser en aidant',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Réussir à atteindre deux objectifs avec une seule action ou effort.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_015',
        question:
            'Dans le proverbe wolof sénégalais "Nit nitay garabam" (litt. l\'homme est la cure de l\'homme), quel sens se dégage principalement ?',
        options: [
          'Les remèdes sont meilleurs que les hommes',
          'Les hommes se guérissent mutuellement par la solidarité et le soutien',
          'Les hommes sont ennemis',
          'Les hommes sont médecins',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le proverbe souligne l\'entraide et le soutien humain comme source de guérison et d\'équilibre social.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_016',
        question: 'Que signifie "prendre le taureau par les cornes" ?',
        options: [
          'Fuir',
          'Affronter directement une difficulté',
          'Soigner un animal',
          'Reporter un problème',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Affronter un problème ou une situation difficile avec détermination et sans détour.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_017',
        question: 'Que veut dire "ne pas être né de la dernière pluie" ?',
        options: [
          'Être naïf',
          'Être expérimenté et averti',
          'Être jeune',
          'Avoir peur de la pluie',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Expression signifiant que quelqu\'un n\'est pas naïf ; il a de l\'expérience ou du discernement.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_018',
        question:
            'Que signifie le proverbe swahili "Mti hauanguki kwa mbali bila sababu" (l\'arbre ne tombe pas sans raison) ?',
        options: [
          'Les arbres sont immortels',
          'Il y a toujours une cause à un événement',
          'Les vents sont toujours coupables',
          'La nature est aléatoire',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Ce proverbe veut dire qu\'un événement a presque toujours une cause ou une explication sous-jacente.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_019',
        question: 'Que signifie "ramener sa fraise" (familier) ?',
        options: [
          'Cueillir des fraises',
          'Donner son avis sans y être invité',
          'Offrir un fruit',
          'Chanter',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Expression familière qui signifie intervenir et donner son opinion, parfois de manière inopportune.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_020',
        question:
            'Que veut dire le proverbe "Un voyage de mille lieues commence toujours par un premier pas" (attribué à Lao-Tseu) ?',
        options: [
          'Ne pas voyager',
          'Tout grand projet commence par une petite action',
          'Les voyages sont longs',
          'Il faut courir pour réussir',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Il insiste sur l\'importance de commencer, même par une petite étape, pour accomplir de grandes choses.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_021',
        question: 'Que veut dire "mettre la charrue avant les bœufs" ?',
        options: [
          'Organiser correctement',
          'Faire les choses dans le désordre',
          'Aimer les animaux',
          'Cultiver la terre',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Faire les choses dans le mauvais ordre, anticiper les étapes nécessaires.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_022',
        question:
            'Quel est le sens du proverbe africain "Lorsque les éléphants se battent, ce sont les herbes qui souffrent" ?',
        options: [
          'Les herbes sont dangereuses',
          'Les conflits entre puissants pénalisent les plus vulnérables',
          'Les éléphants ont peur',
          'Lutte écologique',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Il signifie que les populations civiles ou les plus faibles payent le prix des conflits entre puissants.',
        category: 'Expressions & Proverbes',
        difficulty: 2,
        theme: 'Expressions & Proverbes',
      ),

      // ============ DIFFICILE (12 questions) ============
      QuizQuestion(
        id: 'ep_023',
        question:
            'Quel est le sens figuré du proverbe bambara (Mali) "Kanu ye fila kelen" (litt. "la parole est comme un bâton") ?',
        options: [
          'La parole est courte',
          'La parole peut corriger et guider, elle a du pouvoir',
          'On utilise toujours un bâton en parlant',
          'Il faut frapper quand on parle',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Ce proverbe souligne le pouvoir de la parole pour guider, corriger ou punir, comme un bâton symbolique.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_024',
        question:
            'Que signifie l\'expression française ancienne "noyer le poisson" ?',
        options: [
          'Noircir un aliment',
          'Dissimuler ou embrouiller une affaire pour éviter la vérité',
          'Pêcher en eaux profondes',
          'Préparer un plat de poisson',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Noyer le poisson signifie embrouiller volontairement une affaire pour éviter d\'y voir clair.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_025',
        question:
            'Dans le proverbe yoruba "Ọmọ tí a kò kọ́, ní yóò gbé ilé tí a kọ́" (un enfant non instruit profitera de la maison qu\'on a bâtie), quel enseignement est mis en avant ?',
        options: [
          'L\'importance de l\'éducation pour garantir la prospérité future',
          'Les enfants sont ingrats',
          'Construire une maison suffit',
          'Ne pas instruire les enfants',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le proverbe met l\'accent sur la nécessité d\'éduquer les enfants pour qu\'ils puissent bénéficier et entretenir l\'héritage familial.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_026',
        question: 'Que signifie "tenir la chandelle" dans une conversation ?',
        options: [
          'Allumer une bougie',
          'Être la troisième personne présente lorsque deux autres sont intimes',
          'Organiser une fête',
          'Offrir un luminaire',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Tenir la chandelle signifie être présent en tant que tiers gênant entre deux personnes intimes.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_027',
        question:
            'Que veut dire le proverbe haoussa "Komai nisan dare ga gari" (litt. "tout dépend de la proximité de la ville") dans un sens métaphorique ?',
        options: [
          'La distance physique ne compte pas',
          'Les opportunités et perceptions changent selon le contexte et la proximité des centres de pouvoir/économie',
          'Il ne faut pas voyager la nuit',
          'La ville est dangereuse',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le proverbe souligne que les opportunités ou comportements varient selon la proximité des centres économiques ou sociaux.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_028',
        question: 'Quel sens donne-t-on à l\'expression "sauver les meubles" ?',
        options: [
          'Réparer des meubles cassés',
          'Sauver l\'essentiel dans une situation compromise',
          'Déménager des meubles',
          'Faire un inventaire',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Sauver les meubles signifie préserver ce qui reste de précieux lorsqu\'une situation tourne mal.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_029',
        question:
            'Le proverbe peul "Njaari woni, boni hakkunde" (litt. "Le cœur a ses raisons") rapproche-t-il plutôt l\'idée de :',
        options: [
          'Raisons logiques',
          'Affections et émotions qui échappent à la logique',
          'La faim',
          'La justice',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Ce proverbe met en évidence que les émotions et les affections peuvent guider des choix indépendamment de la raison froide.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_030',
        question: 'Que signifie "faire la fine bouche" ?',
        options: [
          'Manger rapidement',
          'Refuser quelque chose par délicatesse ou être difficile',
          'Manger avec élégance',
          'Parler trop',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Faire la fine bouche signifie être difficile, refuser quelque chose par délicatesse ou snobisme.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_031',
        question: 'Que veut dire l\'expression "tirer les vers du nez" ?',
        options: [
          'Extraire des vers',
          'Faire parler quelqu\'un pour obtenir une information difficile à obtenir',
          'Se plaindre',
          'Raconter une histoire',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Expression signifiant faire parler quelqu\'un avec habileté pour lui soutirer des informations.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_032',
        question:
            'Quel est le sens du proverbe éthiopien "The one who learns, teaches" (litt. "Celui qui apprend, enseigne") dans un contexte communautaire ?',
        options: [
          'L\'apprentissage est individuel',
          'La connaissance doit être partagée pour bénéficier à la communauté',
          'Il faut garder la connaissance',
          'Les enseignants sont inutiles',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Ce proverbe valorise le partage des savoirs : apprendre implique la transmission à la communauté.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_033',
        question:
            'Que signifie l\'expression "mettre de l\'eau dans son vin" ?',
        options: [
          'Diluer du vin',
          'Modérer ses exigences, tempérer ses positions',
          'Boire moins',
          'Préparer une boisson',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'expression veut dire modérer son propos ou ses exigences pour éviter les conflits.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'ep_034',
        question:
            'Que signifie le proverbe sénégalais "Le sapin ne cache pas la forêt" (variante locale) ?',
        options: [
          'Un arbre cache la forêt',
          'Un élément visible ne doit pas faire ignorer le contexte plus vaste',
          'La forêt est petite',
          'Il faut planter des sapins',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le proverbe rappelle de ne pas se focaliser sur un détail visible au point d\'oublier le contexte global.',
        category: 'Expressions & Proverbes',
        difficulty: 3,
        theme: 'Expressions & Proverbes',
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
