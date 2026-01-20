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

class ScienceSanteQuestions {
  static List<QuizQuestion> getAllQuestions() {
    return [
      // ============ FACILE (10 questions) ============
      QuizQuestion(
        id: 'ss_001',
        question: 'Quel organe pompe le sang dans tout le corps ?',
        options: ['Le foie', 'Le rein', 'Le cœur', 'Les poumons'],
        correctAnswerIndex: 2,
        explanation:
            'Le cœur est l\'organe musculaire qui assure la circulation sanguine dans l\'organisme.',
        category: 'Science de la santé',
        difficulty: 1,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_002',
        question:
            'Combien de dents permanentes un adulte possède-t-il normalement (hors dents de sagesse retirées) ?',
        options: ['20', '24', '28', '32'],
        correctAnswerIndex: 2,
        explanation:
            'Un adulte possède généralement 32 dents avec les dents de sagesse ; sans elles on compte souvent 28 dents permanentes.',
        category: 'Science de la santé',
        difficulty: 1,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_003',
        question:
            'Quel nutriment est principalement responsable de la construction et la réparation des tissus ?',
        options: ['Glucides', 'Protéines', 'Lipides', 'Fibres'],
        correctAnswerIndex: 1,
        explanation:
            'Les protéines sont essentielles pour la croissance, la réparation des tissus et la production d\'enzymes et d\'hormones.',
        category: 'Science de la santé',
        difficulty: 1,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_004',
        question:
            'Quelle action aide à prévenir la propagation des infections respiratoires ?',
        options: [
          'Se laver les mains régulièrement',
          'Manger plus de fruits',
          'Porter des chaussures',
          'Dormir plus',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le lavage régulier des mains réduit la transmission de virus et de bactéries responsables d\'infections respiratoires.',
        category: 'Science de la santé',
        difficulty: 1,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_005',
        question:
            'Quelle est la vaccination recommandée pour la prévention du tétanos ?',
        options: ['BCG', 'DTaP / DTP', 'ROR', 'HPV'],
        correctAnswerIndex: 1,
        explanation:
            'Le vaccin DTaP/DTP protège notamment contre le tétanos (et la diphtérie et la coqueluche).',
        category: 'Science de la santé',
        difficulty: 1,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_006',
        question:
            'Quel examen est couramment utilisé pour détecter la grossesse ?',
        options: [
          'Radiographie',
          'Test urinaire de détection d\'hCG',
          'IRM',
          'Électrocardiogramme',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les tests urinaires de grossesse détectent l\'hormone hCG produite après la fécondation et sont largement utilisés.',
        category: 'Science de la santé',
        difficulty: 1,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_007',
        question: 'Quel aliment est une bonne source de vitamine C ?',
        options: ['Pomme de terre', 'Orange', 'Pain', 'Fromage'],
        correctAnswerIndex: 1,
        explanation:
            'Les agrumes comme l\'orange sont riches en vitamine C, importante pour le système immunitaire et la cicatrisation.',
        category: 'Science de la santé',
        difficulty: 1,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_008',
        question:
            'Quel insecte est le vecteur principal du paludisme (malaria) ?',
        options: ['Moustique Anophèle', 'Mouche tse-tse', 'Tique', 'Puces'],
        correctAnswerIndex: 0,
        explanation:
            'Le paludisme est transmis par les femelles des moustiques du genre Anopheles.',
        category: 'Science de la santé',
        difficulty: 1,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_009',
        question:
            'Quel élément est essentiel au transport de l\'oxygène par le sang ?',
        options: ['Calcium', 'Fer', 'Zinc', 'Sodium'],
        correctAnswerIndex: 1,
        explanation:
            'Le fer est un composant de l\'hémoglobine, protéine des globules rouges qui transporte l\'oxygène.',
        category: 'Science de la santé',
        difficulty: 1,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_010',
        question:
            'Quel service de santé publique international coordonne les réponses aux urgences sanitaires à l\'échelle mondiale ?',
        options: [
          'OMS (Organisation mondiale de la santé)',
          'UNICEF',
          'FAO',
          'OMC',
        ],
        correctAnswerIndex: 0,
        explanation:
            'L\'Organisation mondiale de la santé (OMS / WHO) coordonne la santé publique mondiale et la réponse aux épidémies.',
        category: 'Science de la santé',
        difficulty: 1,
        theme: 'Science de la santé',
      ),

      // ============ MOYEN (10 questions) ============
      QuizQuestion(
        id: 'ss_011',
        question:
            'Quelle mesure est la plus efficace pour réduire la mortalité liée au paludisme chez les enfants en zones endémiques ?',
        options: [
          'Utilisation généralisée de moustiquaires imprégnées d\'insecticide',
          'Vaccination par le BCG',
          'Administration d\'antibiotiques de masse',
          'Porter des vêtements légers',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Les moustiquaires imprégnées d\'insecticide et la prévention vectorielle réduisent significativement la mortalité infantile due au paludisme.',
        category: 'Science de la santé',
        difficulty: 2,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_012',
        question:
            'Quel indicateur est couramment utilisé pour mesurer la santé maternelle d\'un pays ?',
        options: [
          'Taux de natalité',
          'Espérance de vie à la naissance',
          'Taux de mortalité maternelle',
          'Taux d\'alphabétisation',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Le taux de mortalité maternelle (décès liés à la grossesse/accouchement pour 100 000 naissances vivantes) est un indicateur clé.',
        category: 'Science de la santé',
        difficulty: 2,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_013',
        question:
            'Quel test sanguin est utilisé pour diagnostiquer le diabète en mesurant la glycémie moyenne sur 2–3 mois ?',
        options: [
          'Glycémie à jeun',
          'HbA1c (hémoglobine glyquée)',
          'Bilan lipidique',
          'PCR',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'HbA1c reflète la glycémie moyenne des 2–3 derniers mois et sert au diagnostic et au suivi du diabète.',
        category: 'Science de la santé',
        difficulty: 2,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_014',
        question: 'Quel virus est à l\'origine du SIDA ?',
        options: ['Influenza', 'HIV', 'Ebola', 'Zika'],
        correctAnswerIndex: 1,
        explanation:
            'Le VIH (virus de l\'immunodéficience humaine) est responsable du SIDA (syndrome d\'immunodéficience acquise).',
        category: 'Science de la santé',
        difficulty: 2,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_015',
        question:
            'Quel antibiotique est inapproprié pour traiter les infections virales comme le rhume ?',
        options: [
          'Amoxicilline',
          'Azithromycine',
          'Acyclovir',
          'Ciprofloxacine',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Les antibiotiques comme l\'amoxicilline ciblent des bactéries ; les infections virales ne répondent pas aux antibiotiques (Acyclovir est antiviral).',
        category: 'Science de la santé',
        difficulty: 2,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_016',
        question:
            'Quelle carence nutritionnelle est la principale cause évitable de cécité chez l\'enfant dans certaines régions du monde ?',
        options: [
          'Déficit en vitamine D',
          'Déficit en vitamine A',
          'Carence en fer',
          'Carence en calcium',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La carence en vitamine A peut provoquer des problèmes oculaires sévères, y compris la cécité chez l\'enfant si non traitée.',
        category: 'Science de la santé',
        difficulty: 2,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_017',
        question:
            'Quel moyen diagnostique est le plus utilisé pour confirmer une tuberculose pulmonaire ?',
        options: [
          'Radiographie thoracique seule',
          'Examen microscopique/culture du prélèvement respiratoire (sputum) ou test moléculaire (GeneXpert)',
          'Test sérologique',
          'ECG',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le diagnostic de tuberculose repose sur l\'examen direct/culture du sputum ou sur des tests moléculaires ; la radiographie aide mais n\'est pas suffisante.',
        category: 'Science de la santé',
        difficulty: 2,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_018',
        question:
            'Quel paramètre vital mesure la pression exercée par le sang sur les parois des artères ?',
        options: [
          'Température',
          'Fréquence respiratoire',
          'Pression artérielle',
          'Saturation en oxygène',
        ],
        correctAnswerIndex: 2,
        explanation:
            'La pression artérielle (exprimée en mmHg) mesure la force du sang sur les parois artérielles, importante pour évaluer le risque cardiovasculaire.',
        category: 'Science de la santé',
        difficulty: 2,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_019',
        question:
            'Quel organisme international a lancé la stratégie "End TB" pour éliminer la tuberculose ?',
        options: [
          'UNICEF',
          'OMS (Organisation mondiale de la santé)',
          'Banque mondiale',
          'FMI',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'OMS a établi des stratégies mondiales pour lutter contre la tuberculose, dont des objectifs d\'élimination.',
        category: 'Science de la santé',
        difficulty: 2,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_020',
        question:
            'Quel type de transmission est principalement concerné par les infections nosocomiales ?',
        options: [
          'Transmission vectorielle',
          'Transmission en milieu hospitalier (personnel/patients/équipements)',
          'Transmission alimentaire',
          'Transmission héréditaire',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les infections nosocomiales sont acquises dans un établissement de santé (hôpital, clinique) et peuvent provenir du personnel, d\'autres patients ou d\'équipements contaminés.',
        category: 'Science de la santé',
        difficulty: 2,
        theme: 'Science de la santé',
      ),

      // ============ DIFFICILE (15 questions) ============
      QuizQuestion(
        id: 'ss_021',
        question:
            'Quelle est la principale stratégie de lutte contre la résistance aux antimicrobiens (RAM) au niveau populationnel ?',
        options: [
          'Augmenter la prescription d\'antibiotiques',
          'Surveiller les résistances, promouvoir l\'utilisation prudente des antibiotiques et renforcer les programmes d\'hygiène et prévention',
          'Interdire tous les antibiotiques',
          'Remplacer les antibiotiques par des antiviraux',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La lutte contre la RAM repose sur une surveillance rigoureuse, l\'antibiothérapie raisonnée, la prévention des infections et la recherche de nouveaux médicaments.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_022',
        question:
            'Quel est le mécanisme principal de la thrombose artérielle provoquant un infarctus du myocarde ?',
        options: [
          'Spasme musculaire seulement',
          'Rupture d\'une plaque d\'athérome suivie de formation d\'un caillot occlusif',
          'Infection bactérienne directe du cœur',
          'Hypotension prolongée',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'infarctus du myocarde est souvent causé par la rupture d\'une plaque d\'athérome et la formation d\'un thrombus qui bloque une artère coronaire.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_023',
        question:
            'Quel marqueur biologique est le plus spécifique pour diagnostiquer une lésion myocardique aiguë ?',
        options: ['CRP', 'Troponine cardiaque', 'Leukocytes', 'ASAT'],
        correctAnswerIndex: 1,
        explanation:
            'La troponine cardiaque (I ou T) est un marqueur sensible et spécifique des lésions myocardiques aiguës.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_024',
        question:
            'Quelle est la principale voie de transmission du virus Ebola lors des flambées humaines ?',
        options: [
          'Transmission aérienne soutenue',
          'Contact direct avec les fluides biologiques d\'une personne infectée ou cadavre, ou contact avec des fomites contaminés',
          'Transmission par l\'eau potable',
          'Transmission par les aliments cuits',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Ebola se transmet principalement par contact direct avec le sang, vomissements, selles ou autres fluides corporels d\'une personne malade ou d\'un cadavre, ainsi que par objets contaminés.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_025',
        question:
            'Quel est le principe de la PCR (réaction en chaîne par polymérase) utilisée en virologie ?',
        options: [
          'Détection d\'anticorps',
          'Amplification d\'un fragment d\'ADN/ARN spécifique pour détecter la présence d\'un agent infectieux',
          'Mesure de la pression sanguine',
          'Analyse histologique',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La PCR permet d\'amplifier des séquences d\'ADN (ou ARN après transcription inverse) afin de détecter la présence d\'un agent infectieux avec grande sensibilité.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_026',
        question:
            'Quel est l\'avantage principal d\'un vaccin vivant atténué par rapport à un vaccin inactivé ?',
        options: [
          'Moins immunogène',
          'Donne souvent une réponse immunitaire plus forte et durable (avec parfois une dose unique)',
          'Ne nécessite aucune chaîne du froid',
          'Ne provoque jamais d\'effets secondaires',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les vaccins vivants atténués stimulent souvent une réponse immunitaire plus robuste et durable, proche de l\'infection naturelle, mais nécessitent des précautions (immunosuppression, grossesse).',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_027',
        question:
            'Quelle est la définition principale de l\'incidence en épidémiologie ?',
        options: [
          'Nombre total de cas accumulés jamais observés',
          'Nombre de nouveaux cas sur une période donnée par unité de population',
          'Proportion de cas guéris',
          'Nombre de morts uniquement',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'incidence mesure l\'apparition de nouveaux cas d\'une maladie pendant une période donnée dans une population à risque.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_028',
        question:
            'Quel facteur augmente le plus le risque de développer une résistance aux antipaludiques chez Plasmodium ?',
        options: [
          'Utilisation correcte des médicaments selon protocole',
          'Automédication incomplète, usage irrégulier et monothérapie répétée',
          'Distribution de moustiquaires imprégnées',
          'Vaccination de masse',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'usage irrégulier, les schémas incomplets et la monothérapie favorisent l\'émergence de résistances chez les parasites comme Plasmodium.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_029',
        question:
            'Dans le contexte obstétrical, que désigne la "pré-éclampsie" ?',
        options: [
          'Une infection urinaire pendant la grossesse',
          'Une hypertension artérielle de la mère associée à une protéinurie après 20 semaines de gestation',
          'Un accouchement prématuré',
          'Une anomalie fœtale',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La pré-éclampsie est caractérisée par une élévation de la pression artérielle et de la protéinurie après 20 semaines de grossesse et peut mettre en danger mère et enfant.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_030',
        question:
            'Quel marqueur microbiologique est utilisé pour surveiller la qualité de l\'eau potable au regard de la contamination fécale ?',
        options: [
          'Présence d\'E. coli ou coliformes fécaux',
          'Présence d\'algues vertes',
          'Présence de chlore',
          'Présence d\'oxygène dissous',
        ],
        correctAnswerIndex: 0,
        explanation:
            'La détection d\'E. coli ou de coliformes fécaux est un indicateur standard de contamination fécale de l\'eau potable.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_031',
        question:
            'Quelle stratégie de dépistage de masse a été largement utilisée pour contenir la COVID-19 dans les phases initiales ?',
        options: [
          'Dépistage ciblé uniquement sur les personnes symptomatiques',
          'Tests PCR généralisés, traçage des contacts et isolement des cas positifs',
          'Vaccination uniquement',
          'Utilisation exclusive d\'antibiotiques préventifs',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les stratégies efficaces incluaient le dépistage par PCR, le traçage des contacts et l\'isolement rapide des cas afin de limiter la transmission.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
      ),
      QuizQuestion(
        id: 'ss_032',
        question:
            'Quel est l\'objectif principal des programmes de vaccination de routine pédiatrique en santé publique ?',
        options: [
          'Protéger uniquement l\'enfant individuel',
          'Éliminer toutes les maladies infectieuses',
          'Atteindre une couverture suffisante pour protéger la population (immunité collective) et prévenir épidémies',
          'Faire fonctionner les cliniques',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Les programmes vaccinaux visent à protéger individuellement et collectivement la population en réduisant la circulation des agents infectieux et en prévenant les épidémies.',
        category: 'Science de la santé',
        difficulty: 3,
        theme: 'Science de la santé',
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
