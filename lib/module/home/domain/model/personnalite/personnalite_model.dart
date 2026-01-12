// Modèle pour les questions de quiz
class QuizQuestion {
  final String id;
  final String question;
  final List<String> options;
  final int correctAnswerIndex;
  final String explanation;
  final String category;
  final int difficulty;
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
        id: 'af_001',
        question:
            'Qui fut le premier président de l\'Afrique du Sud post-apartheid (1994) ?',
        options: [
          'F. W. de Klerk',
          'Nelson Mandela',
          'Thabo Mbeki',
          'Desmond Tutu',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Nelson Mandela devint président de l\'Afrique du Sud en 1994 après la fin de l\'apartheid.',
        category: 'Personnalités Africaines',
        difficulty: 1,
        theme: 'Histoire',
      ),

      QuizQuestion(
        id: 'af_002',
        question:
            'Quel chef éthiopien est célèbre pour avoir résisté à l\'invasion italienne et avoir été empereur ?',
        options: [
          'Menelik II',
          'Haile Selassie',
          'Meles Zenawi',
          'Tewodros II',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Haile Selassie fut empereur d\'Éthiopie et une figure symbolique de la résistance à l\'invasion italienne.',
        category: 'Personnalités Africaines',
        difficulty: 1,
        theme: 'Histoire',
      ),

      QuizQuestion(
        id: 'af_003',
        question: 'Quel écrivain nigérian a écrit "Things Fall Apart" ?',
        options: [
          'Chinua Achebe',
          'Wole Soyinka',
          'Chimamanda Ngozi Adichie',
          'Ngũgĩ wa Thiong\'o',
        ],
        correctAnswerIndex: 0,
        explanation:
            '"Things Fall Apart" (1958) est l\'œuvre la plus connue de Chinua Achebe.',
        category: 'Personnalités Africaines',
        difficulty: 1,
        theme: 'Littérature',
      ),

      QuizQuestion(
        id: 'af_004',
        question:
            'Qui est le célèbre footballeur égyptien jouant pour Liverpool ?',
        options: [
          'Mohamed Salah',
          'Samuel Eto\'o',
          'Didier Drogba',
          'Yaya Touré',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Mohamed Salah, attaquant égyptien, joue/à jouer pour Liverpool et est l\'un des meilleurs buteurs africains récents.',
        category: 'Personnalités Africaines',
        difficulty: 1,
        theme: 'Sport',
      ),

      QuizQuestion(
        id: 'af_005',
        question:
            'Qui fut la première femme africaine à recevoir le prix Nobel de la paix (pour ses efforts écologiques) ?',
        options: [
          'Leymah Gbowee',
          'Wangari Maathai',
          'Ellen Johnson Sirleaf',
          'Nadine Gordimer',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Wangari Maathai, militante kényane, reçut le prix Nobel de la paix en 2004 pour son travail environnemental.',
        category: 'Personnalités Africaines',
        difficulty: 1,
        theme: 'Militantisme',
      ),

      QuizQuestion(
        id: 'af_006',
        question:
            'Quel leader ghanéen est connu comme l\'un des pères de l\'indépendance africaine et fut premier président du Ghana ?',
        options: [
          'Kwame Nkrumah',
          'Jomo Kenyatta',
          'Patrice Lumumba',
          'Modibo Keïta',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Kwame Nkrumah fut le premier président du Ghana et une figure majeure du panafricanisme.',
        category: 'Personnalités Africaines',
        difficulty: 1,
        theme: 'Politique',
      ),

      QuizQuestion(
        id: 'af_007',
        question:
            'Qui est la célèbre chanteuse sud-africaine surnommée "Mama Africa" ?',
        options: [
          'Yvonne Chaka Chaka',
          'Miriam Makeba',
          'Angélique Kidjo',
          'Grace Jones',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Miriam Makeba, chanteuse sud-africaine, était surnommée "Mama Africa".',
        category: 'Personnalités Africaines',
        difficulty: 1,
        theme: 'Musique',
      ),

      QuizQuestion(
        id: 'af_008',
        question:
            'Quel auteur nigérian a remporté le prix Nobel de littérature en 1986 ?',
        options: [
          'Chinua Achebe',
          'Wole Soyinka',
          'Ngũgĩ wa Thiong\'o',
          'Buchi Emecheta',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Wole Soyinka devint en 1986 le premier Africain anglophone à recevoir le prix Nobel de littérature.',
        category: 'Personnalités Africaines',
        difficulty: 1,
        theme: 'Littérature',
      ),

      QuizQuestion(
        id: 'af_009',
        question:
            'Qui était le leader révolutionnaire et président du Burkina Faso assassiné en 1987 ?',
        options: [
          'Blaise Compaoré',
          'Houphouët-Boigny',
          'Thomas Sankara',
          'Samuel K. Doe',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Thomas Sankara, surnommé le "Che Guevara africain", fut tué lors d\'un coup d\'État en 1987.',
        category: 'Personnalités Africaines',
        difficulty: 1,
        theme: 'Politique',
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
        id: 'af_011',
        question:
            'Qui fut le premier ministre congolais assassiné en 1961, symbole des luttes pour l\'indépendance ?',
        options: [
          'Mobutu Sese Seko',
          'Patrice Lumumba',
          'Joseph Kasa-Vubu',
          'Laurent-Désiré Kabila',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Patrice Lumumba fut le premier Premier ministre de la République démocratique du Congo et assassiné en 1961.',
        category: 'Personnalités Africaines',
        difficulty: 2,
        theme: 'Histoire',
      ),

      QuizQuestion(
        id: 'af_012',
        question:
            'Quelle poétesse et première présidente du Sénégal était aussi un homme politique et poète (a contribué à la négritude) ?',
        options: [
          'Aminata Sow Fall',
          'Alda Conty',
          'Léopold Sédar Senghor',
          'Mariama Bâ',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Léopold Sédar Senghor, poète et homme politique sénégalais, fut l\'un des principaux représentants du mouvement de la négritude et président du Sénégal.',
        category: 'Personnalités Africaines',
        difficulty: 2,
        theme: 'Culture & Politique',
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
        id: 'af_014',
        question:
            'Qui fut le premier secrétaire général africain des Nations unies (2001-2006) ?',
        options: [
          'Kofi Annan',
          'Boutros Boutros-Ghali',
          'Amadou Toumani Touré',
          'Joaquim Chissano',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Kofi Annan, originaire du Ghana, fut secrétaire général de l\'ONU et co-lauréat du prix Nobel de la paix en 2001.',
        category: 'Personnalités Africaines',
        difficulty: 2,
        theme: 'Diplomatie',
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
        id: 'af_016',
        question:
            'Qui était "Mama Sarah Obama" par lien familial et figure respectée au Kenya ?',
        options: [
          'La grand-mère de Barack Obama',
          'La première dame du Kenya',
          'Une activiste kenyane',
          'Un membre du Parlement kenyan',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Sarah Obama est la grand-mère du président américain Barack Obama (famille kenyane) et une figure respectée localement.',
        category: 'Personnalités Africaines',
        difficulty: 2,
        theme: 'Personnalités contemporaines',
      ),

      QuizQuestion(
        id: 'pc_017',
        question: 'Qui a écrit "Le Petit Prince" ?',
        options: [
          'Jules Verne',
          'Jean de La Fontaine',
          'Charles Perrault',
          'Antoine de Saint-Exupéry',
        ],
        correctAnswerIndex: 3,
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
          'Une princesse grecque',
          'Une impératrice romaine',
          'La dernière reine d\'Égypte',
        ],
        correctAnswerIndex: 3,
        explanation:
            'Cléopâtre VII était la dernière reine d\'Égypte de la dynastie ptolémaïque.',
        category: 'Personnalités Célèbres',
        difficulty: 2,
        theme: 'Personnalités Célèbres',
      ),

      QuizQuestion(
        id: 'af_021',
        question:
            'Quel chef zoulou du début du XIXe siècle est célèbre pour avoir unifié de nombreuses tribus disposées en royaume ?',
        options: ['Shaka Zulu', 'Cetshwayo', 'Dingane', 'Mpande'],
        correctAnswerIndex: 0,
        explanation:
            'Shaka Zulu est connu pour avoir transformé et unifié les Zoulous en un puissant royaume au début du XIXe siècle.',
        category: 'Personnalités Africaines',
        difficulty: 2,
        theme: 'Histoire',
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
        question:
            'Quel président du Niger fut renversé lors du coup d\'État militaire du 15 avril 1974 ?',
        options: [
          'Seyni Kountché',
          'Mamadou Tandja',
          'Hamani Diori',
          'Mahamadou Issoufou',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Hamani Diori fut le premier président du Niger (1960–1974). Il a été renversé le 15 avril 1974 par un coup d\'État dirigé par le lieutenant-colonel Seyni Kountché.',
        category: 'Pays & Histoire',
        difficulty: 2,
        theme: 'Niger',
      ),

      QuizQuestion(
        id: 'pc_025',
        question:
            'Quel président du Tchad est mort des suites de blessures reçues au front en avril 2021 alors qu\'il combattait des rebelles ?',
        options: [
          'Idriss Déby Itno',
          'Hissène Habré',
          'Goukouni Oueddei',
          'Félix Malloum',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Idriss Déby Itno, au pouvoir depuis 1990, est mort le 20 avril 2021 après avoir été blessé lors de combats contre un groupe rebelle à la frontière tchadienne ; son décès a conduit à la mise en place d\'un Conseil militaire de transition présidé par son fils, Mahamat Idriss Déby.',
        category: 'Pays & Histoire',
        difficulty: 2,
        theme: 'Tchad',
      ),

      // ============ NIVEAU DIFFICILE (20 questions) ============
      QuizQuestion(
        id: 'pc_026',
        question:
            'Qui était Mansa Musa, célèbre pour sa richesse et son pèlerinage à La Mecque au XIVe siècle ?',
        options: [
          'Un sultan du Maroc',
          'Un empereur du Mali',
          'Un calife d\'Égypte',
          'Un roi du Zimbabwe',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Mansa Musa fut empereur de l\'Empire du Mali et devint célèbre pour la splendeur et la richesse de son pèlerinage à La Mecque au XIVe siècle.',
        category: 'Personnalités Africaines',
        difficulty: 3,
        theme: 'Histoire médiévale',
      ),

      QuizQuestion(
        id: 'pc_027',
        question:
            'Qui fonda l\'Empire du Mali et est le héros de l\'épopée mandingue "Sundiata" ?',
        options: [
          'Sundiata Keïta',
          'Mansa Musa',
          'Soundiata Toure',
          'Suleiman',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Sundiata Keïta (aussi orthographié Sundiata) est le fondateur légendaire de l\'Empire du Mali. L\'épopée de Sundiata est un texte fondateur en Afrique de l\'Ouest.',
        category: 'Personnalités Africaines',
        difficulty: 3,
        theme: 'Histoire médiévale',
      ),

      QuizQuestion(
        id: 'pc_028',
        question:
            'Quel architecte d\'origine irakienne devint célèbre mondialement et réalisa des projets iconiques (prix Pritzker) mais a aussi travaillé en Afrique ?',
        options: ['Zaha Hadid', 'Le Corbusier', 'Frank Gehry', 'Norman Foster'],
        correctAnswerIndex: 0,
        explanation:
            'Zaha Hadid, architecte irako-britannique, est lauréate du prix Pritzker (2004) et a des projets et influences internationales, y compris en Afrique.',
        category: 'Personnalités Africaines',
        difficulty: 3,
        theme: 'Architecture & Culture',
      ),

      QuizQuestion(
        id: 'pc_029',
        question:
            'Quel souverain du royaume de Kongo négocia avec les Portugais au XVIe siècle et est souvent évoqué dans l\'histoire précoloniale ?',
        options: [
          'Nzinga Mbande',
          'Afonso I du Kongo',
          'Mansa Musa',
          'Sundiata Keïta',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Afonso I (Mvemba a Nzinga) fut roi du Kongo au début du XVIe siècle et entretint des relations diplomatiques et religieuses avec le Portugal.',
        category: 'Personnalités Africaines',
        difficulty: 3,
        theme: 'Histoire précoloniale',
      ),

      QuizQuestion(
        id: 'pc_030',
        question: 'Qui était Ibn Battuta dans le contexte africain ?',
        options: [
          'Un roi marocain',
          'Un marchand soudanais',
          'Un explorateur arabe qui voyagea en Afrique',
          'Un poète égyptien',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Ibn Battuta était un voyageur marocain du XIVe siècle qui parcourut une grande partie de l\'Afrique, de l\'Afrique du Nord à l\'Afrique de l\'Ouest et au-delà.',
        category: 'Personnalités Africaines',
        difficulty: 3,
        theme: 'Exploration & Histoire',
      ),

      QuizQuestion(
        id: 'pc_031',
        question:
            'Quel leader ivoirien a marqué le football africain par ses performances en club et en sélection (notamment à Chelsea) ?',
        options: ['Yaya Touré', 'Didier Zokora', 'Didier Drogba', 'Gervinho'],
        correctAnswerIndex: 2,
        explanation:
            'Didier Drogba, attaquant ivoirien, est célèbre pour sa carrière à Chelsea et ses contributions à la sélection de Côte d\'Ivoire.',
        category: 'Personnalités Africaines',
        difficulty: 3,
        theme: 'Sport',
      ),

      QuizQuestion(
        id: 'af_032',
        question:
            'Quel leader révolutionnaire zimbabwéen mena la lutte pour l\'indépendance et devint président en 1980 ?',
        options: [
          'Ian Smith',
          'Joshua Nkomo',
          'Morgan Tsvangirai',
          'Robert Mugabe',
        ],
        correctAnswerIndex: 3,
        explanation:
            'Robert Mugabe fut une figure dominante du Zimbabwe après l\'indépendance en 1980, bien que son héritage soit controversé.',
        category: 'Personnalités Africaines',
        difficulty: 3,
        theme: 'Politique',
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
        question:
            'Quel souverain ancien d\'Égypte est célèbre pour son buste découvert au XIXe siècle et son rôle dans l\'art et la culture égyptienne (épouse d\'Akhenaton) ?',
        options: ['Nefertiti', 'Hatshepsout', 'Cléopâtre', 'Merneptah'],
        correctAnswerIndex: 0,
        explanation:
            'Le buste de Nefertiti est l\'un des artefacts égyptiens les plus célèbres; elle fut épouse royale d\'Akhenaton.',
        category: 'Personnalités Africaines',
        difficulty: 3,
        theme: 'Histoire antique',
      ),

      QuizQuestion(
        id: 'pc_037',
        question:
            'Quel poète et homme d\'État sénégalais fut l\'un des fondateurs de la négritude et premier président du Sénégal ?',
        options: [
          'Léopold Sédar Senghor',
          'Aimé Césaire',
          'Alioune Diop',
          'Senghor Diallo',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Léopold Sédar Senghor fut poète, théoricien de la négritude et premier président du Sénégal (1960-1980).',
        category: 'Personnalités Africaines',
        difficulty: 3,
        theme: 'Littérature & Politique',
      ),

      QuizQuestion(
        id: 'pc_038',
        question:
            'Quel ancien président tchadien, au pouvoir de 1982 à 1990, a été condamné en 2016 pour crimes contre l\'humanité et tortures ?',
        options: [
          'Goukouni Oueddei',
          'Hissène Habré',
          'Idriss Déby Itno',
          'Félix Malloum',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Hissène Habré, président du Tchad de 1982 à 1990, fut condamné en 2016 par un tribunal spécial à Dakar pour crimes contre l\'humanité, torture et disparitions forcées.',
        category: 'Pays & Histoire',
        difficulty: 3,
        theme: 'Tchad',
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
