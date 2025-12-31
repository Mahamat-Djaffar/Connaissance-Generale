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

// Base de données de questions sur les Personnalités Célèbres
class PersonnalitesCelebresQuestions {
  static List<QuizQuestion> getAllQuestions() {
    return [
      // ============ NIVEAU FACILE (10 questions) ============
      QuizQuestion(
        id: 'pc_001',
        question: 'Qui était le premier président des États-Unis ?',
        options: [
          'Thomas Jefferson',
          'George Washington',
          'John Adams',
          'Benjamin Franklin',
        ],
        correctAnswerIndex: 1,
        explanation:
            'George Washington a été le premier président des États-Unis de 1789 à 1797.',
        category: 'Personnalités Célèbres',
        difficulty: 1,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_002',
        question: 'Qui a inventé le téléphone ?',
        options: [
          'Thomas Edison',
          'Alexander Graham Bell',
          'Nikola Tesla',
          'Benjamin Franklin',
        ],
        correctAnswerIndex: 1,
        explanation: 'Alexander Graham Bell a breveté le téléphone en 1876.',
        category: 'Personnalités Célèbres',
        difficulty: 1,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_003',
        question: 'Qui a écrit "Roméo et Juliette" ?',
        options: [
          'Charles Dickens',
          'William Shakespeare',
          'Oscar Wilde',
          'George Orwell',
        ],
        correctAnswerIndex: 1,
        explanation:
            'William Shakespeare a écrit cette tragédie vers 1594-1596.',
        category: 'Personnalités Célèbres',
        difficulty: 1,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_004',
        question: 'Qui a composé "La 9ème Symphonie" ?',
        options: [
          'Wolfgang Amadeus Mozart',
          'Ludwig van Beethoven',
          'Johann Sebastian Bach',
          'Franz Schubert',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La 9ème Symphonie de Beethoven, aussi appelée "Hymne à la joie", a été composée en 1824.',
        category: 'Personnalités Célèbres',
        difficulty: 1,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_005',
        question: 'Qui était surnommé "Le Roi du Rock" ?',
        options: [
          'Michael Jackson',
          'Elvis Presley',
          'Chuck Berry',
          'Little Richard',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Elvis Presley était surnommé "The King of Rock and Roll".',
        category: 'Personnalités Célèbres',
        difficulty: 1,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_006',
        question: 'Qui a dirigé la France pendant la Seconde Guerre mondiale ?',
        options: [
          'Charles de Gaulle',
          'Philippe Pétain',
          'Winston Churchill',
          'Franklin Roosevelt',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Charles de Gaulle a dirigé la Résistance française et le gouvernement français libre.',
        category: 'Personnalités Célèbres',
        difficulty: 1,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_007',
        question: 'Qui a créé la marque Apple ?',
        options: ['Bill Gates', 'Steve Jobs', 'Mark Zuckerberg', 'Larry Page'],
        correctAnswerIndex: 1,
        explanation: 'Steve Jobs a co-fondé Apple avec Steve Wozniak en 1976.',
        category: 'Personnalités Célèbres',
        difficulty: 1,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_008',
        question: 'Qui a peint "La Nuit étoilée" ?',
        options: [
          'Pablo Picasso',
          'Vincent van Gogh',
          'Claude Monet',
          'Salvador Dalí',
        ],
        correctAnswerIndex: 1,
        explanation: 'Vincent van Gogh a peint "La Nuit étoilée" en 1889.',
        category: 'Personnalités Célèbres',
        difficulty: 1,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_009',
        question: 'Qui était Nelson Mandela ?',
        options: [
          'Un musicien sud-africain',
          'Le premier président noir d\'Afrique du Sud',
          'Un écrivain',
          'Un sportif',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Nelson Mandela a été le premier président noir d\'Afrique du Sud de 1994 à 1999.',
        category: 'Personnalités Célèbres',
        difficulty: 1,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_010',
        question: 'Qui a découvert l\'Amérique en 1492 ?',
        options: [
          'Vasco de Gama',
          'Christophe Colomb',
          'Magellan',
          'Marco Polo',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Christophe Colomb a atteint les Amériques le 12 octobre 1492.',
        category: 'Personnalités Célèbres',
        difficulty: 1,
        theme: 'Personnalités Célèbres',
      ),

      // ============ NIVEAU MOYEN (15 questions) ============
      QuizQuestion(
        id: 'pc_011',
        question: 'Qui a écrit "À la recherche du temps perdu" ?',
        options: [
          'Marcel Proust',
          'André Gide',
          'Jean-Paul Sartre',
          'Albert Camus',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Marcel Proust a écrit cette œuvre monumentale publiée entre 1913 et 1927.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_012',
        question: 'Qui était Marie Curie ?',
        options: [
          'Une mathématicienne',
          'Une physicienne et chimiste',
          'Une biologiste',
          'Une astronome',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Marie Curie était physicienne et chimiste, première femme à recevoir le prix Nobel.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_013',
        question:
            'Quel empereur français a été exilé sur l\'île de Sainte-Hélène ?',
        options: [
          'Louis XIV',
          'Napoléon Bonaparte',
          'Napoléon III',
          'Charlemagne',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Napoléon Bonaparte a été exilé sur l\'île de Sainte-Hélène en 1815.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_014',
        question: 'Qui a réalisé le film "Citizen Kane" ?',
        options: [
          'Alfred Hitchcock',
          'Orson Welles',
          'John Ford',
          'Frank Capra',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Orson Welles a réalisé et interprété "Citizen Kane" en 1941.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_015',
        question: 'Qui était Gandhi ?',
        options: [
          'Un leader politique indien',
          'Un philosophe chinois',
          'Un écrivain britannique',
          'Un roi indien',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Mahatma Gandhi était un leader politique indien qui prônait la non-violence.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_016',
        question: 'Qui a créé la psychanalyse ?',
        options: [
          'Carl Jung',
          'Sigmund Freud',
          'Alfred Adler',
          'Wilhelm Wundt',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Sigmund Freud est considéré comme le père de la psychanalyse.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_017',
        question: 'Qui a écrit "Le Petit Prince" ?',
        options: [
          'Jules Verne',
          'Antoine de Saint-Exupéry',
          'Jean de La Fontaine',
          'Charles Perrault',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Antoine de Saint-Exupéry a publié "Le Petit Prince" en 1943.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_018',
        question: 'Qui était Winston Churchill ?',
        options: [
          'Premier ministre britannique',
          'Président américain',
          'Général français',
          'Roi d\'Angleterre',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Winston Churchill était Premier ministre britannique pendant la Seconde Guerre mondiale.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_019',
        question: 'Qui a fondé Microsoft ?',
        options: ['Steve Jobs', 'Bill Gates', 'Larry Ellison', 'Michael Dell'],
        correctAnswerIndex: 1,
        explanation: 'Bill Gates a co-fondé Microsoft avec Paul Allen en 1975.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_020',
        question: 'Qui était Cléopâtre ?',
        options: [
          'Une déesse égyptienne',
          'La dernière reine d\'Égypte',
          'Une princesse grecque',
          'Une impératrice romaine',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Cléopâtre VII était la dernière reine d\'Égypte de la dynastie ptolémaïque.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_021',
        question: 'Qui a composé "Les Quatre Saisons" ?',
        options: [
          'Johann Sebastian Bach',
          'Antonio Vivaldi',
          'Wolfgang Amadeus Mozart',
          'Ludwig van Beethoven',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Antonio Vivaldi a composé "Les Quatre Saisons" vers 1720.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_022',
        question: 'Qui était Martin Luther King Jr. ?',
        options: [
          'Un pasteur et militant des droits civiques',
          'Un président américain',
          'Un chanteur de gospel',
          'Un écrivain',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Martin Luther King Jr. était pasteur et leader du mouvement des droits civiques aux États-Unis.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_023',
        question: 'Qui a peint "Guernica" ?',
        options: [
          'Salvador Dalí',
          'Pablo Picasso',
          'Joan Miró',
          'Francisco Goya',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Pablo Picasso a peint "Guernica" en 1937 pour dénoncer les horreurs de la guerre.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_024',
        question: 'Qui était Joséphine Baker ?',
        options: [
          'Une danseuse et chanteuse',
          'Une aviatrice',
          'Une scientifique',
          'Une écrivaine',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Joséphine Baker était danseuse, chanteuse et résistante franco-américaine.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_025',
        question: 'Qui a découvert la pénicilline ?',
        options: [
          'Louis Pasteur',
          'Alexander Fleming',
          'Marie Curie',
          'Joseph Lister',
        ],
        correctAnswerIndex: 1,
        explanation: 'Alexander Fleming a découvert la pénicilline en 1928.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      // ============ NIVEAU DIFFICILE (20 questions) ============
      QuizQuestion(
        id: 'pc_026',
        question: 'Qui était Srinivasa Ramanujan ?',
        options: [
          'Un philosophe indien',
          'Un mathématicien indien',
          'Un physicien indien',
          'Un astronome indien',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Srinivasa Ramanujan était un mathématicien indien autodidacte, génie des mathématiques.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_027',
        question: 'Qui était Hypatia d\'Alexandrie ?',
        options: [
          'Une impératrice romaine',
          'Une mathématicienne et philosophe',
          'Une poétesse grecque',
          'Une prêtresse égyptienne',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Hypatia était une mathématicienne, astronome et philosophe grecque du 4ème siècle.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_028',
        question: 'Qui a écrit "Le Nom de la rose" ?',
        options: [
          'Italo Calvino',
          'Umberto Eco',
          'Roberto Saviano',
          'Elena Ferrante',
        ],
        correctAnswerIndex: 1,
        explanation: 'Umberto Eco a publié "Le Nom de la rose" en 1980.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_029',
        question: 'Qui était Emmy Noether ?',
        options: [
          'Une mathématicienne allemande',
          'Une physicienne autrichienne',
          'Une chimiste suisse',
          'Une biologiste française',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Emmy Noether était une mathématicienne allemande, pionnière de l\'algèbre abstraite.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_030',
        question: 'Qui a composé "Le Sacre du printemps" ?',
        options: [
          'Claude Debussy',
          'Igor Stravinsky',
          'Maurice Ravel',
          'Béla Bartók',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Igor Stravinsky a composé "Le Sacre du printemps" en 1913.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_031',
        question: 'Qui était Rosalind Franklin ?',
        options: [
          'Une biologiste moléculaire',
          'Une chimiste physique',
          'Une crystallographe',
          'Toutes ces réponses',
        ],
        correctAnswerIndex: 3,
        explanation:
            'Rosalind Franklin était cristallographe et sa recherche a été cruciale pour découvrir la structure de l\'ADN.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_032',
        question: 'Qui était Akira Kurosawa ?',
        options: [
          'Un réalisateur japonais',
          'Un écrivain japonais',
          'Un peintre japonais',
          'Un musicien japonais',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Akira Kurosawa était un réalisateur japonais, maître du cinéma mondial.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_033',
        question: 'Qui était Ibn Khaldun ?',
        options: [
          'Un historien et sociologue arabe',
          'Un médecin persan',
          'Un mathématicien andalou',
          'Un philosophe syrien',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Ibn Khaldun était un historien, sociologue et économiste arabe du 14ème siècle.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_034',
        question: 'Qui a écrit "Cent ans de solitude" ?',
        options: [
          'Jorge Luis Borges',
          'Gabriel García Márquez',
          'Mario Vargas Llosa',
          'Octavio Paz',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Gabriel García Márquez a publié "Cent ans de solitude" en 1967.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_035',
        question: 'Qui était Barbara McClintock ?',
        options: [
          'Une généticienne américaine',
          'Une botaniste britannique',
          'Une zoologiste canadienne',
          'Une microbiologiste française',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Barbara McClintock était une généticienne américaine, prix Nobel pour ses travaux sur les gènes mobiles.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_036',
        question: 'Qui était Tadeusz Reichstein ?',
        options: [
          'Un chimiste suisse-polonais',
          'Un physicien allemand',
          'Un biologiste autrichien',
          'Un mathématicien tchèque',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Tadeusz Reichstein était un chimiste suisse-polonais, prix Nobel pour ses travaux sur les hormones.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_037',
        question: 'Qui était Wangari Maathai ?',
        options: [
          'Une militante écologiste kenyane',
          'Une femme politique ghanéenne',
          'Une écrivaine nigériane',
          'Une scientifique sud-africaine',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Wangari Maathai était une militante écologiste kenyane, prix Nobel de la paix 2004.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_038',
        question: 'Qui a créé la méthode Montessori ?',
        options: [
          'Maria Montessori',
          'Rudolf Steiner',
          'Friedrich Fröbel',
          'Jean Piaget',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Maria Montessori était une médecin et pédagogue italienne qui a développé cette méthode éducative.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_039',
        question: 'Qui était Chien-Shiung Wu ?',
        options: [
          'Une physicienne chinoise-américaine',
          'Une mathématicienne japonaise',
          'Une chimiste coréenne',
          'Une biologiste taiwanaise',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Chien-Shiung Wu était une physicienne sino-américaine spécialisée dans la physique nucléaire.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_040',
        question: 'Qui était Frida Kahlo ?',
        options: [
          'Une peintre mexicaine',
          'Une sculptrice argentine',
          'Une photographe brésilienne',
          'Une céramiste péruvienne',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Frida Kahlo était une peintre mexicaine célèbre pour ses autoportraits et sa vie tumultueuse.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_041',
        question: 'Qui était Al-Kindi ?',
        options: [
          'Un philosophe et mathématicien arabe',
          'Un médecin persan',
          'Un astronome andalou',
          'Un poète syrien',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Al-Kindi était un philosophe, mathématicien, musicien et scientifique arabe du 9ème siècle.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_042',
        question: 'Qui était Dorothy Hodgkin ?',
        options: [
          'Une cristallographe britannique',
          'Une chimiste américaine',
          'Une physicienne française',
          'Une biologiste allemande',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Dorothy Hodgkin était une cristallographe britannique, prix Nobel de chimie en 1964.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_043',
        question: 'Qui était Rabindranath Tagore ?',
        options: [
          'Un poète et philosophe indien',
          'Un musicien bengali',
          'Un peintre indien',
          'Toutes ces réponses',
        ],
        correctAnswerIndex: 3,
        explanation:
            'Rabindranath Tagore était poète, écrivain, compositeur, peintre et philosophe indien, prix Nobel de littérature 1913.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_044',
        question: 'Qui était Katherine Johnson ?',
        options: [
          'Une mathématicienne de la NASA',
          'Une ingénieure aéronautique',
          'Une physicienne spatiale',
          'Une astronaute',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Katherine Johnson était une mathématicienne afro-américaine qui a contribué aux programmes spatiaux américains.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'pc_045',
        question: 'Qui était Zaha Hadid ?',
        options: [
          'Une architecte irakienne-britannique',
          'Une urbaniste libanaise',
          'Une designer syrienne',
          'Une ingénieure jordanienne',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Zaha Hadid était une architecte irakienne-britannique, première femme à recevoir le prix Pritzker d\'architecture.',
        category: 'Personnalités Célèbres',
        difficulty: 3,
        theme: 'Personnalités Célèbres',
      ),
    ];
  }

  // Méthodes utilitaires pour filtrer les questions
  static List<QuizQuestion> getQuestionsByDifficulty(int difficulty) {
    return getAllQuestions().where((q) => q.difficulty == difficulty).toList();
  }

  static List<QuizQuestion> getRandomQuestions(int count) {
    List<QuizQuestion> allQuestions = getAllQuestions();
    allQuestions.shuffle();
    return allQuestions.take(count).toList();
  }

  static List<QuizQuestion> getQuestionsByDifficultyRange(
    int minDifficulty,
    int maxDifficulty,
  ) {
    return getAllQuestions()
        .where(
          (q) => q.difficulty >= minDifficulty && q.difficulty <= maxDifficulty,
        )
        .toList();
  }
}
// Méthodes utilitaires pour filtrer les questions
//   static List<QuizQuestion> getQuestionsByTheme(String theme) {
//     return getAllQuestions().where((q) => q.theme == theme).toList();
//   }

//   static List<QuizQuestion> getQuestionsByDifficulty(int difficulty) {
//     return getAllQuestions().where((q) => q.difficulty == difficulty).toList();
//   }

//   static List<QuizQuestion> getQuestionsByThemeAndDifficulty(
//     String theme,
//     int difficulty,
//   ) {
//     return getAllQuestions()
//         .where((q) => q.theme == theme && q.difficulty == difficulty)
//         .toList();
//   }

//   static List<QuizQuestion> getRandomQuestions(int count) {
//     List<QuizQuestion> allQuestions = getAllQuestions();
//     allQuestions.shuffle();
//     return allQuestions.take(count).toList();
//   }
// }

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
