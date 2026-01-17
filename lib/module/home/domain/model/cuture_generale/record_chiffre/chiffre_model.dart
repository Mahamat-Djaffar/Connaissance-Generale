// Questions — Chiffres & Records (avec quelques références africaines)
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

class ChiffresRecordsQuestions {
  static List<QuizQuestion> getAllQuestions() {
    return [
      // ============ FACILE (10 questions) ============
      QuizQuestion(
        id: 'cr_001',
        question: 'Combien de jours comporte une année non bissextile ?',
        options: ['360', '365', '366', '364'],
        correctAnswerIndex: 1,
        explanation:
            'Une année non bissextile compte 365 jours ; une année bissextile en compte 366.',
        category: 'Chiffres & Records',
        difficulty: 1,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_002',
        question: 'Quel est l\'océan le plus étendu en superficie ?',
        options: [
          'Océan Atlantique',
          'Océan Indien',
          'Océan Pacifique',
          'Océan Arctique',
        ],
        correctAnswerIndex: 2,
        explanation:
            'L\'Océan Pacifique est le plus vaste océan du monde par superficie.',
        category: 'Chiffres & Records',
        difficulty: 1,
        theme: 'Record et Chiffre',
      ),
      QuizQuestion(
        id: 'cr_003',
        question: 'Combien de minutes contient une heure ?',
        options: ['30', '60', '90', '120'],
        correctAnswerIndex: 1,
        explanation: 'Une heure contient 60 minutes.',
        category: 'Chiffres & Records',
        difficulty: 1,
        theme: 'Record et Chiffre',
      ),
      QuizQuestion(
        id: 'cr_004',
        question:
            'Quel est le plus petit État indépendant du monde en superficie ?',
        options: ['Monaco', 'Nauru', 'Vatican', 'San Marino'],
        correctAnswerIndex: 2,
        explanation:
            'Le Vatican (Saint-Siège) est le plus petit État indépendant du monde par superficie.',
        category: 'Chiffres & Records',
        difficulty: 1,
        theme: 'Record et Chiffre',
      ),
      QuizQuestion(
        id: 'cr_005',
        question:
            'Quel pays abrite le gratte‑ciel le plus haut du monde (Burj Khalifa) ?',
        options: [
          'Arabie Saoudite',
          'Émirats arabes unis',
          'États-Unis',
          'Chine',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le Burj Khalifa (828 m) se trouve à Dubaï, aux Émirats arabes unis.',
        category: 'Chiffres & Records',
        difficulty: 1,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_006',
        question:
            'Combien y a-t-il de continents sur Terre, traditionnellement ?',
        options: ['5', '6', '7', '8'],
        correctAnswerIndex: 2,
        explanation:
            'La classification la plus courante compte 7 continents : Afrique, Amérique du Nord, Amérique du Sud, Antarctique, Asie, Europe, Océanie.',
        category: 'Chiffres & Records',
        difficulty: 1,
        theme: 'Record et Chiffre',
      ),
      QuizQuestion(
        id: 'cr_007',
        question: 'Quel pays africain est le plus peuplé ?',
        options: [
          'Égypte',
          'Éthiopie',
          'Nigeria',
          'République démocratique du Congo',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Le Nigeria est le pays le plus peuplé d\'Afrique (plus de 200 millions d\'habitants).',
        category: 'Chiffres & Records',
        difficulty: 1,
        theme: 'Record et Chiffre',
      ),
      QuizQuestion(
        id: 'cr_008',
        question:
            'Quelle est la langue la plus parlée dans le monde en nombre de locuteurs natifs ?',
        options: ['Anglais', 'Espagnol', 'Hindi', 'Mandarin (chinois)'],
        correctAnswerIndex: 3,
        explanation:
            'Le mandarin (chinois) est la langue comptant le plus grand nombre de locuteurs natifs.',
        category: 'Chiffres & Records',
        difficulty: 1,
        theme: 'Record et Chiffre',
      ),
      QuizQuestion(
        id: 'cr_009',
        question:
            'Quel est, en règle générale, le plus grand organe du corps humain en surface ?',
        options: ['Le foie', 'La peau', 'Le cœur', 'Les poumons'],
        correctAnswerIndex: 1,
        explanation:
            'La peau est le plus grand organe du corps humain en surface.',
        category: 'Chiffres & Records',
        difficulty: 1,
        theme: 'Record et Chiffre',
      ),
      QuizQuestion(
        id: 'cr_010',
        question: 'Quel pays d\'Afrique a la plus grande superficie (km²) ?',
        options: [
          'Soudan',
          'Algérie',
          'République démocratique du Congo',
          'Libye',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Depuis la sécession du Soudan du Sud, l\'Algérie est le plus grand pays d\'Afrique par superficie (≈2,38 millions km²).',
        category: 'Chiffres & Records',
        difficulty: 1,
        theme: 'Record et Chiffre',
      ),
      // ============ MOYEN (12 questions) ============
      QuizQuestion(
        id: 'cr_011',
        question: 'Quelle est la superficie approximative de l\'Algérie ?',
        options: [
          '1,5 million km²',
          '2,38 millions km²',
          '3,1 millions km²',
          '900 000 km²',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'Algérie couvre environ 2,38 millions de kilomètres carrés, ce qui en fait le plus grand pays d\'Afrique.',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),
      QuizQuestion(
        id: 'cr_012',
        question:
            'Quelle est la profondeur approximative de la fosse des Mariannes (Challenger Deep) ?',
        options: ['~2 000 m', '~6 500 m', '~11 000 m', '~20 000 m'],
        correctAnswerIndex: 2,
        explanation:
            'La fosse des Mariannes atteint environ 11 000 mètres au point le plus profond (Challenger Deep).',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_013',
        question: 'Quel est le plus grand lac d\'Afrique par superficie ?',
        options: ['Lac Tanganyika', 'Lac Malawi', 'Lac Tchad', 'Lac Victoria'],
        correctAnswerIndex: 3,
        explanation:
            'Le lac Victoria est le plus grand lac d\'Afrique par superficie (~68 800 km²).',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_014',
        question:
            'En quelle année l\'Organisation des Nations unies (ONU) a-t-elle été fondée ?',
        options: ['1919', '1939', '1945', '1950'],
        correctAnswerIndex: 2,
        explanation:
            'L\'ONU a été créée en 1945, après la Seconde Guerre mondiale, avec la signature de la Charte des Nations unies.',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_015',
        question:
            'Combien d\'États membres compte l\'Union européenne depuis le Brexit (2024) ?',
        options: ['25', '26', '27', '28'],
        correctAnswerIndex: 2,
        explanation:
            'Depuis le départ du Royaume-Uni, l\'Union européenne compte 27 États membres.',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_016',
        question:
            'Quel fleuve africain a le plus grand débit moyen (volume d\'eau) ?',
        options: ['Nil', 'Congo', 'Niger', 'Zambèze'],
        correctAnswerIndex: 1,
        explanation:
            'Le Congo (ou Zaïre) a le débit moyen le plus élevé d\'Afrique, fournissant un volume d\'eau très important.',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_017',
        question:
            'Quelle est la population approximative de l\'Afrique (ordre de grandeur, années 2020–2024) ?',
        options: [
          '~600 millions',
          '~1,4 milliard',
          '~2,5 milliards',
          '~3,5 milliards',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'Afrique compte environ 1,3–1,4 milliard d\'habitants (ordres de grandeur récents).',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_018',
        question:
            'Quel pays est souvent considéré comme la première économie d\'Afrique en PIB nominal ?',
        options: ['Afrique du Sud', 'Égypte', 'Algérie', 'Nigeria'],
        correctAnswerIndex: 3,
        explanation:
            'Le Nigeria est généralement considéré comme la première économie d\'Afrique en termes de PIB nominal, en raison notamment de son secteur pétrolier et de son marché intérieur.',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_019',
        question: 'Quel est le plus haut sommet d\'Afrique ?',
        options: ['Mont Kenya', 'Mont Meru', 'Mont Kilimandjaro', 'Ruwenzori'],
        correctAnswerIndex: 2,
        explanation:
            'Le mont Kilimandjaro (Tanzanie) est le plus haut sommet d\'Afrique (≈5 895 m).',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_020',
        question:
            'Quelle est la longueur approximative du fleuve Nil (traditionnellement) ?',
        options: ['~3 000 km', '~6 650 km', '~9 500 km', '~12 000 km'],
        correctAnswerIndex: 1,
        explanation:
            'Le Nil est traditionnellement estimé à environ 6 650 km, bien que la longueur précise fasse parfois l\'objet de débats.',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),
      QuizQuestion(
        id: 'cr_021',
        question:
            'Quelle ville est souvent citée comme la plus peuplée d\'Afrique (aire métropolitaine) ?',
        options: ['Le Caire', 'Lagos', 'Kinshasa', 'Johannesburg'],
        correctAnswerIndex: 1,
        explanation:
            'Lagos (Nigeria) est souvent considérée comme la plus grande agglomération d\'Afrique en population.',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_022',
        question: 'Combien d\'États membres compte l\'Union africaine (UA) ?',
        options: ['49', '52', '55', '57'],
        correctAnswerIndex: 2,
        explanation:
            'L\'Union africaine regroupe 55 États membres (tous les États africains reconnus internationalement sauf quelques cas particuliers historiques).',
        category: 'Chiffres & Records',
        difficulty: 2,
        theme: 'Record et Chiffre',
      ),

      // ============ DIFFICILE (12 questions) ============
      QuizQuestion(
        id: 'cr_023',
        question: 'Quel est le lac le plus profond d\'Afrique ?',
        options: ['Lac Victoria', 'Lac Tchad', 'Lac Tanganyika', 'Lac Malawi'],
        correctAnswerIndex: 2,
        explanation:
            'Le lac Tanganyika est le lac le plus profond d\'Afrique (plusieurs centaines de mètres, jusqu\'à ~1 470 m de profondeur maximale).',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_024',
        question:
            'Quelle est la hauteur officielle du Burj Khalifa (le plus haut gratte‑ciel du monde) ?',
        options: ['632 m', '828 m', '1 002 m', '711 m'],
        correctAnswerIndex: 1,
        explanation:
            'Le Burj Khalifa, à Dubaï, mesure officiellement 828 mètres de hauteur.',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_025',
        question:
            'Quelle est la superficie approximative de la Russie, le plus grand pays du monde ?',
        options: [
          '≈9 millions km²',
          '≈17 millions km²',
          '≈22 millions km²',
          '≈5 millions km²',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La Russie a une superficie d\'environ 17,1 millions de kilomètres carrés, ce qui en fait le plus grand pays du monde.',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_026',
        question:
            'Quelle est la profondeur approximative du point le plus profond connu des océans (Challenger Deep) ?',
        options: ['~4 000 m', '~7 500 m', '~11 000 m', '~20 000 m'],
        correctAnswerIndex: 2,
        explanation:
            'Le Challenger Deep (fosse des Mariannes) atteint environ 11 000 mètres, ce qui en fait le point océanique le plus profond connu.',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_027',
        question:
            'Quelle métropole compte parmi les plus grandes aires urbaines du monde, avec environ 37 millions d\'habitants (estimation pour l\'aire métropolitaine) ?',
        options: ['New York', 'Tokyo', 'Shanghai', 'Mumbai'],
        correctAnswerIndex: 1,
        explanation:
            'L\'aire métropolitaine de Tokyo est souvent citée comme la plus peuplée du monde, avec autour de 36–38 millions d\'habitants selon les estimations.',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_028',
        question:
            'Quel pays d\'Afrique a souvent le PIB par habitant (nominal) le plus élevé, en raison d\'un faible nombre d\'habitants et d\'activités rentables comme le tourisme ?',
        options: ['Seychelles', 'Nigeria', 'Éthiopie', 'Kenya'],
        correctAnswerIndex: 0,
        explanation:
            'Les Seychelles figurent fréquemment en tête des pays africains pour le PIB par habitant (nominal), en raison de leur petite population et d\'un secteur touristique très développé.',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_029',
        question:
            'Quel pays africain possède l\'une des plus longues côtes parmi les nations insulaires de l\'Afrique (≈4 800 km) ?',
        options: ['Somalie', 'Madagascar', 'Afrique du Sud', 'Égypte'],
        correctAnswerIndex: 1,
        explanation:
            'Madagascar, grande île de l\'océan Indien, possède une très longue côte (approximativement 4 800 km).',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_030',
        question:
            'Quel pays africain a la plus grande population arabophone (en nombre de locuteurs d\'arabe) ?',
        options: ['Maroc', 'Algérie', 'Égypte', 'Tunisie'],
        correctAnswerIndex: 2,
        explanation:
            'L\'Égypte est le pays arabe d\'Afrique le plus peuplé, avec la plus grande population de locuteurs arabophones sur le continent.',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_031',
        question:
            'Quelle est la masse estimée de la Terre (ordre de grandeur) ?',
        options: [
          '≈6 × 10^21 kg',
          '≈6 × 10^24 kg',
          '≈6 × 10^27 kg',
          '≈6 × 10^30 kg',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La masse de la Terre est d\'environ 5,97 × 10^24 kg (approximativement 6 × 10^24 kg).',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_032',
        question:
            'Environ combien de langues sont parlées sur le continent africain (ordre de grandeur) ?',
        options: ['~200', '~500', '~2 000', '~10 000'],
        correctAnswerIndex: 2,
        explanation:
            'On estime qu\'environ 1 500 à 2 000 langues sont parlées en Afrique selon les classifications linguistiques; ~2 000 est un ordre de grandeur souvent cité.',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_033',
        question:
            'Quelle est la hauteur approximative de la plus haute chute d\'eau du monde (Angel Falls, Venezuelа) ?',
        options: ['≈200 m', '≈500 m', '≈979 m', '≈1 600 m'],
        correctAnswerIndex: 2,
        explanation:
            'Les chutes d\'Angel (Salto Ángel) ont une hauteur totale d\'environ 979 mètres, souvent citées comme les plus hautes du monde.',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
      ),

      QuizQuestion(
        id: 'cr_034',
        question:
            'Quelle est la superficie approximative du Groenland, la plus grande île non continentale du monde ?',
        options: [
          '≈570 000 km²',
          '≈2,17 millions km²',
          '≈6 millions km²',
          '≈1,2 million km²',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le Groenland a une superficie d\'environ 2,166 millions km², ce qui en fait la plus grande île du monde (non continentale).',
        category: 'Chiffres & Records',
        difficulty: 3,
        theme: 'Record et Chiffre',
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
