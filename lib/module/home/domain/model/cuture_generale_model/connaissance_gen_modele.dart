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
        question: 'Quelle est la capitale de la France ?',
        options: ['Lyon', 'Paris', 'Marseille', 'Bordeaux'],
        correctAnswerIndex: 1,
        explanation: 'Paris est la capitale et la plus grande ville de France.',
        category: 'Culture Générale',
        difficulty: 1,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_002',
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
        id: 'cg_003',
        question: 'Quel animal est le symbole de la sagesse ?',
        options: ['Le renard', 'La chouette', 'Le loup', 'L\'aigle'],
        correctAnswerIndex: 1,
        explanation:
            'La chouette est traditionnellement associée à la sagesse, notamment dans la mythologie grecque.',
        category: 'Culture Générale',
        difficulty: 1,
        theme: 'Connaissances Générales',
      ),

      // PERSONNALITÉS CÉLÈBRES - MOYEN
      QuizQuestion(
        id: 'cg_004',
        question: 'Qui a peint "La Joconde" ?',
        options: [
          'Pablo Picasso',
          'Vincent van Gogh',
          'Léonard de Vinci',
          'Michel-Ange',
        ],
        correctAnswerIndex: 2,
        explanation:
            'La Joconde a été peinte par Léonard de Vinci entre 1503 et 1519.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Connaissances Générales',
      ),

      QuizQuestion(
        id: 'cg_005',
        question: 'Quel scientifique a développé la théorie de la relativité ?',
        options: [
          'Isaac Newton',
          'Albert Einstein',
          'Galilée',
          'Stephen Hawking',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Albert Einstein a formulé la théorie de la relativité restreinte en 1905 et générale en 1915.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'cg_006',
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
        theme: 'Personnalités Célèbres',
      ),

      // INVENTIONS & DÉCOUVERTES - MOYEN
      QuizQuestion(
        id: 'cg_007',
        question: 'Qui a inventé l\'ampoule électrique ?',
        options: [
          'Nikola Tesla',
          'Thomas Edison',
          'Alexander Graham Bell',
          'Benjamin Franklin',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Thomas Edison a breveté la première ampoule électrique pratique en 1879.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),

      QuizQuestion(
        id: 'cg_008',
        question: 'En quelle année a été inventé Internet ?',
        options: ['1969', '1975', '1983', '1990'],
        correctAnswerIndex: 0,
        explanation:
            'ARPANET, précurseur d\'Internet, a été créé en 1969 par le département de la Défense américain.',
        category: 'Culture Générale',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),

      // ART & LITTÉRATURE - DIFFICILE
      QuizQuestion(
        id: 'cg_009',
        question: 'Quel mouvement artistique Pablo Picasso a-t-il cofondé ?',
        options: [
          'L\'impressionnisme',
          'Le surréalisme',
          'Le cubisme',
          'Le fauvisme',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Pablo Picasso a cofondé le mouvement cubiste avec Georges Braque vers 1907.',
        category: 'Culture Générale',
        difficulty: 1,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'cg_010',
        question: 'Qui a écrit "1984" ?',
        options: [
          'Aldous Huxley',
          'Ray Bradbury',
          'George Orwell',
          'H.G. Wells',
        ],
        correctAnswerIndex: 2,
        explanation:
            '1984 est un roman dystopique de George Orwell publié en 1949.',
        category: 'Culture Générale',
        difficulty: 1,
        theme: 'Art & Littérature',
      ),

      // EXPRESSIONS & PROVERBES - FACILE/MOYEN
      QuizQuestion(
        id: 'cg_011',
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
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      QuizQuestion(
        id: 'cg_012',
        question: 'Complétez le proverbe : "L\'habit ne fait pas..." ?',
        options: ['le bonheur', 'le moine', 'l\'homme', 'la différence'],
        correctAnswerIndex: 1,
        explanation:
            'Le proverbe complet est "L\'habit ne fait pas le moine", signifiant qu\'il ne faut pas juger sur les apparences.',
        category: 'Culture Générale',
        difficulty: 1,
        theme: 'Expressions & Proverbes',
      ),

      // RECORDS & CHIFFRES - MOYEN/DIFFICILE
      QuizQuestion(
        id: 'cg_013',
        question: 'Quel est l\'océan le plus profond ?',
        options: [
          'Océan Atlantique',
          'Océan Indien',
          'Océan Pacifique',
          'Océan Arctique',
        ],
        correctAnswerIndex: 2,
        explanation:
            'L\'océan Pacifique est le plus profond, avec la fosse des Mariannes atteignant plus de 11 000 mètres.',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Records & Chiffres',
      ),

      QuizQuestion(
        id: 'cg_014',
        question: 'Combien de pays compte l\'Union Européenne en 2024 ?',
        options: ['25', '27', '28', '30'],
        correctAnswerIndex: 1,
        explanation:
            'L\'Union Européenne compte 27 pays membres depuis le Brexit du Royaume-Uni.',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Records & Chiffres',
      ),

      QuizQuestion(
        id: 'cg_015',
        question: 'Quelle est la montagne la plus haute du monde ?',
        options: ['K2', 'Mont Blanc', 'Mont Everest', 'Kilimandjaro'],
        correctAnswerIndex: 2,
        explanation: 'L\'Everest culmine à 8 848,86 mètres d\'altitude.',
        category: 'Culture Générale',
        difficulty: 3,
        theme: 'Records & Chiffres',
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
