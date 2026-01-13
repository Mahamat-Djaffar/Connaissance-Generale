// Questions — Art & Littérature (avec quelques références africaines)
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

class ArtLitteratureQuestions {
  static List<QuizQuestion> getAllQuestions() {
    return [
      // ============ FACILE (7 questions) ============
      QuizQuestion(
        id: 'al_001',
        question: 'Qui a peint "La Joconde" (Mona Lisa) ?',
        options: [
          'Pablo Picasso',
          'Vincent van Gogh',
          'Léonard de Vinci',
          'Michel-Ange',
        ],
        correctAnswerIndex: 2,
        explanation:
            'La "Joconde" (Mona Lisa) a été peinte par Léonard de Vinci au début du XVIᵉ siècle.',
        category: 'Art & Littérature',
        difficulty: 1,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_002',
        question: 'Qui a écrit "Le Petit Prince" ?',
        options: [
          'Antoine de Saint-Exupéry',
          'Victor Hugo',
          'Marcel Proust',
          'Albert Camus',
        ],
        correctAnswerIndex: 0,
        explanation:
            '"Le Petit Prince" est une œuvre d’Antoine de Saint-Exupéry, publiée en 1943.',
        category: 'Art & Littérature',
        difficulty: 1,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_003',
        question:
            'La kora, instrument à cordes traditionnel, est principalement associée à quel pays ?',
        options: ['Kenya', 'Mali', 'Égypte', 'Afrique du Sud'],
        correctAnswerIndex: 1,
        explanation:
            'La kora est un instrument de la tradition mandingue, très lié au Mali (et régions voisines).',
        category: 'Art & Littérature',
        difficulty: 1,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_004',
        question: 'Qui a écrit "Les Misérables" ?',
        options: [
          'Émile Zola',
          'Victor Hugo',
          'Gustave Flaubert',
          'Honoré de Balzac',
        ],
        correctAnswerIndex: 1,
        explanation:
            '"Les Misérables" est un roman de Victor Hugo publié en 1862.',
        category: 'Art & Littérature',
        difficulty: 1,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_005',
        question:
            'Quel poète sénégalais fut également le premier président du Sénégal ?',
        options: [
          'Aimé Césaire',
          'Léopold Sédar Senghor',
          'Sékou Touré',
          'Ousmane Sembène',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Léopold Sédar Senghor était poète et devint le premier président du Sénégal en 1960.',
        category: 'Art & Littérature',
        difficulty: 1,
        theme: 'Art & Littérature',
      ),

      // ============ MOYEN (10 questions) ============
      QuizQuestion(
        id: 'al_006',
        question:
            'Qui a écrit "Americanah", roman contemporain important sur la diaspora africaine ?',
        options: [
          'Chinua Achebe',
          'Chimamanda Ngozi Adichie',
          'Teju Cole',
          'Ngũgĩ wa Thiong\'o',
        ],
        correctAnswerIndex: 1,
        explanation:
            '"Americanah" (2013) est un roman de Chimamanda Ngozi Adichie, auteure nigériane.',
        category: 'Art & Littérature',
        difficulty: 2,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_007',
        question:
            'Quel écrivain africain a reçu le prix Nobel de littérature en 1986 ?',
        options: [
          'Chinua Achebe',
          'Ngũgĩ wa Thiong\'o',
          'Wole Soyinka',
          'Naguib Mahfouz',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Wole Soyinka, dramaturge et écrivain nigérian, obtint le prix Nobel de littérature en 1986.',
        category: 'Art & Littérature',
        difficulty: 2,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_008',
        question:
            'Quel écrivain sud-africain a reçu le prix Nobel de littérature en 2003 ?',
        options: [
          'Nadine Gordimer',
          'J. M. Coetzee',
          'Alan Paton',
          'Desmond Tutu',
        ],
        correctAnswerIndex: 1,
        explanation:
            'J. M. Coetzee, romancier sud-africain, fut lauréat du prix Nobel de littérature en 2003.',
        category: 'Art & Littérature',
        difficulty: 2,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_009',
        question:
            'Quel musicien malien est célèbre pour être un maître contemporain de la kora ?',
        options: [
          'Ali Farka Touré',
          'Salif Keïta',
          'Toumani Diabaté',
          'Habib Koité',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Toumani Diabaté est un koraïste malien renommé internationalement.',
        category: 'Art & Littérature',
        difficulty: 2,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_010',
        question:
            'Tombouctou (Timbuktu) est célèbre pour quel type de patrimoine ?',
        options: [
          'Manuscrits anciens',
          'Fresques romaines',
          'Temples bouddhistes',
          'Châteaux médiévaux',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Tombouctou est renommée pour ses manuscrits médiévaux et ses centres d\'apprentissage islamique.',
        category: 'Art & Littérature',
        difficulty: 2,
        theme: 'Art & Littérature',
      ),
      QuizQuestion(
        id: 'al_011',
        question:
            'Quel romancier égyptien a obtenu le prix Nobel de littérature en 1988 ?',
        options: [
          'Tayeb Salih',
          'Assia Djebar',
          'Nawal El Saadawi',
          'Naguib Mahfouz',
        ],
        correctAnswerIndex: 3,
        explanation:
            'Naguib Mahfouz, écrivain égyptien, a reçu le Nobel de littérature en 1988.',
        category: 'Art & Littérature',
        difficulty: 2,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_012',
        question: 'Quel poète a cofondé le mouvement de la "négritude" ?',
        options: [
          'Aimé Césaire',
          'Édouard Glissant',
          'Jacques Prévert',
          'Paul Valéry',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Aimé Césaire (avec Léopold Sédar Senghor et Léon-Gontran Damas) fut l’un des fondateurs du mouvement de la négritude.',
        category: 'Art & Littérature',
        difficulty: 2,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_013',
        question:
            'Ali Farka Touré est un musicien célèbre originaire de quel pays ?',
        options: ['Sénégal', 'Côte d\'Ivoire', 'Mali', 'Burkina Faso'],
        correctAnswerIndex: 2,
        explanation:
            'Ali Farka Touré était un guitariste et chanteur malien, connu pour son lien entre blues et musique malienne.',
        category: 'Art & Littérature',
        difficulty: 2,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_014',
        question: 'Quel pays est la patrie de l\'écrivain Chinua Achebe ?',
        options: ['Ghana', 'Nigéria', 'Kenya', 'Soudan'],
        correctAnswerIndex: 1,
        explanation:
            'Chinua Achebe est un écrivain nigérian, auteur de "Things Fall Apart".',
        category: 'Art & Littérature',
        difficulty: 2,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_015',
        question:
            'Qui a écrit "Season of Migration to the North" ("La Saison de la migration vers le Nord") ?',
        options: [
          'Tayeb Salih',
          'Naguib Mahfouz',
          'Chinua Achebe',
          'Ngũgĩ wa Thiong\'o',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Tayeb Salih, écrivain soudanais, est l\'auteur de "Season of Migration to the North" (1966).',
        category: 'Art & Littérature',
        difficulty: 2,
        theme: 'Art & Littérature',
      ),

      // ============ DIFFICILE (12 questions) ============
      QuizQuestion(
        id: 'al_016',
        question:
            'Les "griots" (conteurs-musiciens) sont surtout associés à quelle région culturelle ?',
        options: [
          'Afrique de l\'Ouest',
          'Afrique australe',
          'Afrique du Nord',
          'Afrique de l\'Est',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Les griots sont des traditionnels dépositaires de l\'histoire orale dans de nombreuses sociétés d\'Afrique de l\'Ouest (Mali, Sénégal, Guinée, etc.).',
        category: 'Art & Littérature',
        difficulty: 3,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_017',
        question:
            'Quel écrivain ghanéen est l\'auteur de "The Beautyful Ones Are Not Yet Born" (1968) ?',
        options: [
          'Ayi Kwei Armah',
          'Chinua Achebe',
          'Wole Soyinka',
          'Ama Ata Aidoo',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Ayi Kwei Armah est un romancier ghanéen connu pour ce roman majeur sur la société postindépendance.',
        category: 'Art & Littérature',
        difficulty: 3,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_018',
        question:
            'Le site de "Great Zimbabwe" est principalement attribué à quel peuple historique ?',
        options: ['Les Zoulous', 'Les Shona', 'Les San', 'Les Xhosa'],
        correctAnswerIndex: 1,
        explanation:
            'Le complexe de Great Zimbabwe est associé aux peuples Shona et témoigne d\'un royaume médiéval en Afrique australe.',
        category: 'Art & Littérature',
        difficulty: 3,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_019,',
        question:
            'Qui est considéré comme le fondateur légendaire de l\'Empire du Mali, héros de l\'épopée mandingue ?',
        options: [
          'Mansa Musa',
          'Sundiata Keïta',
          'Soundiata Touré',
          'Suleiman I',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Sundiata Keïta (aussi orthographié Soundiata) est le fondateur légendaire de l\'Empire du Mali et héros de l\'épopée mandingue.',
        category: 'Art & Littérature',
        difficulty: 3,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_020',
        question:
            'Quel écrivain sud-africain a écrit "Cry, the Beloved Country" (1948) ?',
        options: [
          'Nadine Gordimer',
          'Alan Paton',
          'J. M. Coetzee',
          'Andre Brink',
        ],
        correctAnswerIndex: 1,
        explanation:
            '"Cry, the Beloved Country" est un roman d\'Alan Paton traitant des tensions raciales en Afrique du Sud avant l\'apartheid institutionnalisé.',
        category: 'Art & Littérature',
        difficulty: 3,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_021',
        question:
            'Quel musicien nigérian est le créateur et figure majeure de l\'afrobeat ?',
        options: [
          'Fela Kuti',
          'King Sunny Adé',
          'Salif Keïta',
          'Youssou N\'Dour',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Fela Kuti a inventé et popularisé l\'afrobeat, un genre mêlant musique africaine, funk et jazz.',
        category: 'Art & Littérature',
        difficulty: 3,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_022',
        question:
            'En quelle année "Things Fall Apart" de Chinua Achebe a-t-il été publié ?',
        options: ['1948', '1958', '1968', '1978'],
        correctAnswerIndex: 1,
        explanation:
            '"Things Fall Apart" a été publié en 1958 et est devenu un classique de la littérature africaine moderne.',
        category: 'Art & Littérature',
        difficulty: 3,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_023',
        question:
            'Quel établissement célèbre pour son rôle dans l\'enseignement islamique était situé à Tombouctou ?',
        options: [
          'Université Al-Qarawiyyin',
          'Université d\'Al-Azhar',
          'Université Sankoré',
          'Université de Cordoue',
        ],
        correctAnswerIndex: 2,
        explanation:
            'L\'Université (ou école) de Sankoré à Tombouctou fut un important centre d\'études et d\'apprentissage islamique médiéval.',
        category: 'Art & Littérature',
        difficulty: 3,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_024',
        question:
            'Quel cinéaste sénégalais est souvent considéré comme le "père du cinéma africain" et auteur de "La Noire de..." et "Mandabi" ?',
        options: [
          'Ousmane Sembène',
          'Djibril Diop Mambéty',
          'Abderrahmane Sissako',
          'Mahmoud Ben Mahmoud',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Ousmane Sembène est un romancier et réalisateur sénégalais reconnu comme une figure majeure du cinéma africain.',
        category: 'Art & Littérature',
        difficulty: 3,
        theme: 'Art & Littérature',
      ),

      QuizQuestion(
        id: 'al_025',
        question:
            'Quel sculpteur sénégalais est célèbre pour ses sculptures monumentales en matériaux mixtes et a eu une grande reconnaissance internationale ?',
        options: [
          'Ousmane Sow',
          'El Anatsui',
          'Abdoulaye Seye',
          'Serge Attukwei Clottey',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Ousmane Sow, sculpteur sénégalais, est renommé pour ses grandes sculptures souvent en bronze et matériaux composites.',
        category: 'Art & Littérature',
        difficulty: 3,
        theme: 'Art & Littérature',
      ),
    ];
  }

  // Utilitaires
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
