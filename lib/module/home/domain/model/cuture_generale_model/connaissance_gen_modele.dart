// Modèle pour les questions de quiz
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

// Base de données d'exemples de questions Culture Générale
class CultureGeneraleQuestions {
  static List<QuizQuestion> getAllQuestions() {
    return [
      // CONNAISSANCES GÉNÉRALES - FACILE
      QuizQuestion(
        id: 'cg_001',
        question: 'Combien y a-t-il de continents sur Terre ?',
        options: ['5', '6', '7', '8'],
        correctAnswerIndex: 2,
        explanation:
            'Il y a 7 continents : Afrique, Amérique du Nord, Amérique du Sud, Antarctique, Asie, Europe et Océanie.',
        category: 'Culture Générale',
        difficulty: 1,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_002',
        question: 'Quel est l\'état chimique symbolisé H2O ?',
        options: ['Dioxyde de carbone', 'Eau', 'Ammoniac', 'Hydrogène'],
        correctAnswerIndex: 1,
        explanation:
            'H2O est la formule chimique de l\'eau (deux atomes d\'hydrogène et un atome d\'oxygène).',
        category: 'Culture Générale',
        difficulty: 1,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_003',
        question:
            'Quelle couleur domine dans les feuilles contenant de la chlorophylle ?',
        options: ['Rouge', 'Bleu', 'Vert', 'Jaune'],
        correctAnswerIndex: 2,
        explanation:
            'La chlorophylle absorbe la lumière rouge et bleue et reflète la lumière verte, ce qui donne aux feuilles leur couleur verte.',
        category: 'Culture Générale',
        difficulty: 1,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_004',
        question:
            'Quel fleuve est traditionnellement considéré comme le plus long d\'Afrique ?',
        options: ['Le Niger', 'Le Nil', 'Le Congo', 'Le Zambèze'],
        correctAnswerIndex: 1,
        explanation:
            'Le Nil est traditionnellement considéré comme le plus long fleuve d\'Afrique.',
        category: 'Culture Générale',
        difficulty: 1,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_005',
        question: 'Quel océan est le plus étendu en superficie ?',
        options: [
          'Océan Atlantique',
          'Océan Indien',
          'Océan Arctique',
          'Océan Pacifique',
        ],
        correctAnswerIndex: 3,
        explanation:
            'L\'océan Pacifique est le plus vaste océan du monde par superficie.',
        category: 'Culture Générale',
        difficulty: 1,
        theme: 'Connaissances Générales',
      ),

      // ============ MOYEN (10 questions) ============
      QuizQuestion(
        id: 'cg_006',
        question:
            'Quel empire ouest-africain avait pour centre culturel et commercial la ville de Tombouctou ?',
        options: [
          'Empire du Ghana',
          'Empire du Mali',
          'Empire du Kanem-Bornou',
          'Empire du Sine',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'Empire du Mali — et plus largement la région mandingue — fit de Tombouctou un centre religieux et commercial au Moyen Âge.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_007',
        question: 'Quel scientifique a développé la théorie de la relativité ?',
        options: [
          'Isaac Newton',
          'Galilée',
          'Stephen Hawking',
          'Albert Einstein',
        ],
        correctAnswerIndex: 3,
        explanation:
            'Albert Einstein a formulé la théorie de la relativité restreinte en 1905 et générale en 1915.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_008',
        question: 'Qui a écrit "Les Misérables" ?',
        options: [
          'Émile Zola',
          'Victor Hugo',
          'Gustave Flaubert',
          'Marcel Proust',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les Misérables est un roman de Victor Hugo publié en 1862.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_009',
        question:
            'Quelle île de l\'océan Indien, au large de la côte est de l\'Afrique, est connue pour ses lémuriens ?',
        options: ['Maurice', 'Seychelles', 'Madagascar', 'Comores'],
        correctAnswerIndex: 2,
        explanation:
            'Madagascar est célèbre pour sa biodiversité unique, notamment les lémuriens endémiques.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_010',
        question: 'En quelle année a été inventé Internet ?',
        options: ['1969', '1975', '1983', '1990'],
        correctAnswerIndex: 0,
        explanation:
            'ARPANET, précurseur d\'Internet, a été créé en 1969 par le département de la Défense américain.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_011',
        question:
            'Quelle langue est la plus utilisée comme lingua franca en Afrique de l\'Est ?',
        options: ['Arabe', 'Français', 'Swahili', 'Lingala'],
        correctAnswerIndex: 2,
        explanation:
            'Le swahili (kiswahili) est largement utilisé comme lingua franca dans plusieurs pays d\'Afrique de l\'Est.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_012',
        question:
            'Le désert du Sahara se situe principalement dans quelle partie de l\'Afrique ?',
        options: [
          'Afrique australe',
          'Afrique centrale',
          'Afrique du Nord',
          'Afrique de l\'Est',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Le Sahara couvre une grande partie de l\'Afrique du Nord.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_013',
        question: 'Que signifie l\'expression "Il pleut des cordes" ?',
        options: [
          'Il pleut très fort',
          'Il y a de l\'orage',
          'Il pleut peu',
          'Il grêle',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Cette expression signifie qu\'il pleut très fort, intensément.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_014',
        question: 'Complétez le proverbe : "L\'habit ne fait pas..." ?',
        options: ['le bonheur', 'le moine', 'l\'homme', 'la différence'],
        correctAnswerIndex: 1,
        explanation:
            'Le proverbe complet est "L\'habit ne fait pas le moine", signifiant qu\'il ne faut pas juger sur les apparences.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_015',
        question:
            'Quel pays d\'Afrique de l\'Ouest est le premier producteur mondial de cacao ?',
        options: ['Ghana', 'Nigeria', 'Côte d\'Ivoire', 'Cameroon'],
        correctAnswerIndex: 2,
        explanation:
            'La Côte d\'Ivoire (Ivory Coast) est le premier producteur mondial de cacao.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),

      // RECORDS & CHIFFRES - MOYEN/DIFFICILE
      QuizQuestion(
        id: 'cg_016',
        question:
            'En quelle année est tombé le Mur de Berlin, marquant un symbole de la fin de la Guerre froide ?',
        options: ['1987', '1989', '1991', '1993'],
        correctAnswerIndex: 1,
        explanation:
            'Le Mur de Berlin a été ouvert et en grande partie démoli en novembre 1989, symbolisant l\'effondrement des régimes communistes d\'Europe de l\'Est.',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_017',
        question: 'Combien de pays compte l\'Union Européenne en 2024 ?',
        options: ['25', '27', '28', '30'],
        correctAnswerIndex: 1,
        explanation:
            'L\'Union Européenne compte 27 pays membres depuis le Brexit du Royaume-Uni.',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_018',
        question: 'Quelle est la montagne la plus haute du monde ?',
        options: ['K2', 'Mont Blanc', 'Mont Everest', 'Kilimandjaro'],
        correctAnswerIndex: 2,
        explanation: 'L\'Everest culmine à 8 848,86 mètres d\'altitude.',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_019',
        question:
            'Qui fut la première femme à voyager dans l\'espace (vol habité) ?',
        options: ['Sally Ride', 'Valentina Tereshkova', 'Mae Jemison', 'Laika'],
        correctAnswerIndex: 1,
        explanation:
            'Valentina Terechkova (Tereshkova) fut la première femme spatiale, effectuant un vol en 1963 à bord de Vostok 6.',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_020',
        question:
            'Quelle est la capitale actuelle du Kazakhstan (nom officiel) ?',
        options: ['Almaty', 'Astana', 'Nur-Sultan', 'Shymkent'],
        correctAnswerIndex: 1,
        explanation:
            'La capitale du Kazakhstan est Astana (le nom Nur-Sultan a été utilisé de 2019 à 2022, puis le nom Astana a été rétabli).',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_021',
        question: 'Quel élément chimique possède le numéro atomique 26 ?',
        options: ['Cuivre (Cu)', 'Fer (Fe)', 'Nickel (Ni)', 'Plomb (Pb)'],
        correctAnswerIndex: 1,
        explanation:
            'Le fer (Fe) a le numéro atomique 26 dans le tableau périodique.',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_022',
        question: 'Que signifie l\'acronyme "HTTP" utilisé sur Internet ?',
        options: [
          'HyperText Transmission Protocol',
          'HyperText Transfer Protocol',
          'Hyper Transfer Text Protocol',
          'HighText Transfer Protocol',
        ],
        correctAnswerIndex: 1,
        explanation:
            'HTTP signifie HyperText Transfer Protocol, le protocole de communication utilisé pour le World Wide Web.',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_023',
        question:
            'Quelle chaîne de montagnes est généralement considérée comme la plus longue en surface terrestre ?',
        options: ['Himalaya', 'Andes', 'Rocky Mountains', 'Alpes'],
        correctAnswerIndex: 1,
        explanation:
            'Les Andes, en Amérique du Sud, forment la plus longue chaîne de montagnes continentale du monde.',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_024',
        question:
            'Quel est, depuis la partition du Soudan en 2011, le plus grand pays d\'Afrique par superficie ?',
        options: [
          'République démocratique du Congo',
          'Soudan',
          'Algérie',
          'Libye',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Après l\'indépendance du Soudan du Sud (2011), l\'Algérie est devenue le plus grand pays d\'Afrique en superficie (environ 2,38 millions km²).',
        category: 'Afrique - Général',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_025',
        question: 'Quel site est connu comme la "Cité perdue des Incas" ?',
        options: ['Tiahuanaco', 'Machu Picchu', 'Choquequirao', 'Cuzco'],
        correctAnswerIndex: 1,
        explanation:
            'Machu Picchu est célèbre comme site inca situé dans les Andes péruviennes et souvent nommé la "Cité perdue".',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_026',
        question:
            'Quel organisme continental a officiellement remplacé l\'Organisation de l\'unité africaine (OUA) en 2002 ?',
        options: [
          'Union africaine (UA)',
          'Communauté de développement de l\'Afrique australe (SADC)',
          'Marché commun de l\'Afrique orientale et australe (COMESA)',
          'Organisation des États africains (OEA)',
        ],
        correctAnswerIndex: 0,
        explanation:
            'L\'Union africaine (UA) a été créée en 2002 pour remplacer l\'OUA et apporter un nouveau cadre institutionnel pour l\'intégration politique et économique du continent.',
        category: 'Afrique - Général',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_027',
        question:
            'Quelle mer sépare la péninsule Arabique de l\'Afrique nord-est ?',
        options: [
          'Mer Méditerranée',
          'Mer Rouge',
          'Golfe Persique',
          'Mer d\'Arabie',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La Mer Rouge sépare la péninsule Arabique (à l\'est) de l\'Afrique nord-est (à l\'ouest).',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_028',
        question:
            'Quel lac est le plus grand en superficie sur le continent africain ?',
        options: [
          'Lac Tanganyika',
          'Lac Victoria',
          'Lac Malawi (Nyasa)',
          'Lac Tchad',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le lac Victoria est le plus grand lac d\'Afrique par superficie (environ 68 800 km²). Le lac Tanganyika est le plus profond, mais moins étendu en surface.',
        category: 'Afrique - Général',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
      QuizQuestion(
        id: 'cg_029',
        question:
            'Quel traité a officiellement mis fin à la Première guerre italo-éthiopienne en 1896 ?',
        options: [
          'Traité de Wuchale (Uccialli)',
          'Traité d\'Addis-Abeba',
          'Traité de Berlin',
          'Traité de Lausanne',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Après la victoire éthiopienne à la bataille d\'Adwa (1896), l\'Italie signa le Traité d\'Addis-Abeba qui mit fin au conflit et reconnut de facto l\'indépendance éthiopienne. Le traité de Wuchale (1889) était à l\'origine d\'un différend diplomatique entre les deux pays.',
        category: 'Afrique - Général',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_030',
        question:
            'Environ quelle année le roi Mansa Musa de l\'Empire du Mali effectua-t-il son célèbre pèlerinage à La Mecque ?',
        options: ['1204', '1324', '1453', '1526'],
        correctAnswerIndex: 1,
        explanation:
            'Le pèlerinage (hajj) de Mansa Musa eut lieu autour de 1324–1325 et attira l\'attention du monde islamique en raison de la richesse et de la magnificence de sa caravane.',
        category: 'Afrique - Général',
        difficulty: 3,
        theme: 'Connaissances Générales',
      ),
    ];
  }

  // Méthodes utilitaires pour filtrer les questions
  static List<QuizQuestion> getQuestionsByTheme(String theme) {
    return getAllQuestions().where((q) => q.theme == theme).toList();
  }

  static List<QuizQuestion> getQuestionsByDifficulty(int difficulty) {
    return getAllQuestions().where((q) => q.difficulty == difficulty).toList();
  }

  static List<QuizQuestion> getQuestionsByThemeAndDifficulty(
    String theme,
    int difficulty,
  ) {
    return getAllQuestions()
        .where((q) => q.theme == theme && q.difficulty == difficulty)
        .toList();
  }

  static List<QuizQuestion> getRandomQuestions(int count) {
    List<QuizQuestion> allQuestions = getAllQuestions();
    allQuestions.shuffle();
    return allQuestions.take(count).toList();
  }
}

// Modèle pour les résultats de quiz
class QuizResult {
  final String quizId;
  final int score;
  final int totalQuestions;
  final Duration timeSpent;
  final DateTime completedAt;
  final List<UserAnswer> answers;

  QuizResult({
    required this.quizId,
    required this.score,
    required this.totalQuestions,
    required this.timeSpent,
    required this.completedAt,
    required this.answers,
  });

  double get percentage => (score / totalQuestions) * 100;

  String get grade {
    if (percentage >= 90) return 'Excellent';
    if (percentage >= 80) return 'Très bien';
    if (percentage >= 70) return 'Bien';
    if (percentage >= 60) return 'Assez bien';
    if (percentage >= 50) return 'Passable';
    return 'Insuffisant';
  }
}

class UserAnswer {
  final String questionId;
  final int selectedAnswerIndex;
  final bool isCorrect;
  final Duration timeToAnswer;

  UserAnswer({
    required this.questionId,
    required this.selectedAnswerIndex,
    required this.isCorrect,
    required this.timeToAnswer,
  });
}
