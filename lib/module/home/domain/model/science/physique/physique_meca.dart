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

// Questions — Physique & Mécanique
// NOTE: Ce fichier suppose que la classe `QuizQuestion` est définie ailleurs dans votre projet.

class PhysiqueMecaniqueQuestions {
  static List<QuizQuestion> getAllQuestions() {
    return [
      // ============ FACILE (10 questions) ============
      QuizQuestion(
        id: 'ph_001',
        question:
            'Quelle est la deuxième loi de Newton (relation fondamentale) ?',
        options: ['F = m / a', 'F = m × a', 'a = F / m', 'E = m c²'],
        correctAnswerIndex: 1,
        explanation:
            'La deuxième loi de Newton s\'écrit F = m × a (force = masse × accélération).',
        category: 'Physique & Mécanique',
        difficulty: 1,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_002',
        question: 'Quelle est l\'unité SI de la force ?',
        options: ['Newton (N)', 'Pascal (Pa)', 'Joule (J)', 'Watt (W)'],
        correctAnswerIndex: 0,
        explanation: 'L\'unité SI de la force est le newton (N).',
        category: 'Physique & Mécanique',
        difficulty: 1,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_003',
        question:
            'Approximativement, quelle est la vitesse de la lumière dans le vide ?',
        options: [
          '3 × 10^6 m/s',
          '3 × 10^8 m/s',
          '3 × 10^10 m/s',
          '3 × 10^3 m/s',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La vitesse de la lumière dans le vide est ≈ 3 × 10^8 mètres par seconde.',
        category: 'Physique & Mécanique',
        difficulty: 1,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_004',
        question: 'Quel instrument mesure la température ?',
        options: ['Baromètre', 'Thermomètre', 'Voltmètre', 'Anémomètre'],
        correctAnswerIndex: 1,
        explanation: 'Le thermomètre est utilisé pour mesurer la température.',
        category: 'Physique & Mécanique',
        difficulty: 1,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_005',
        question:
            'Quelle grandeur physique représente l\'énergie transférée par unité de temps ?',
        options: ['Énergie', 'Puissance', 'Travail', 'Force'],
        correctAnswerIndex: 1,
        explanation:
            'La puissance est l\'énergie transférée ou le travail effectué par unité de temps (Watt, J/s).',
        category: 'Physique & Mécanique',
        difficulty: 1,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_006',
        question: 'Quel symbole représente la masse en physique classique ?',
        options: ['m', 'v', 'F', 't'],
        correctAnswerIndex: 0,
        explanation: 'La masse est généralement notée "m".',
        category: 'Physique & Mécanique',
        difficulty: 1,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_007',
        question:
            'Quel état de la matière a une forme propre et un volume propre ?',
        options: ['Gaz', 'Liquide', 'Solide', 'Plasma'],
        correctAnswerIndex: 2,
        explanation:
            'Un solide a une forme et un volume définis ; un liquide a volume défini mais pas de forme propre.',
        category: 'Physique & Mécanique',
        difficulty: 1,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_008',
        question: 'Quel phénomène est mesuré en Hertz (Hz) ?',
        options: ['La vitesse', 'La fréquence', 'L\'énergie', 'La masse'],
        correctAnswerIndex: 1,
        explanation:
            'Le Hertz (Hz) est l\'unité de fréquence (cycles par seconde).',
        category: 'Physique & Mécanique',
        difficulty: 1,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_009',
        question:
            'Quelle est la formule du travail mécanique (force constante) ?',
        options: ['W = F + d', 'W = F × d', 'W = m × a', 'W = F / d'],
        correctAnswerIndex: 1,
        explanation:
            'Le travail est W = F × d (force × déplacement, dans la direction de la force).',
        category: 'Physique & Mécanique',
        difficulty: 1,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_010',
        question: 'Quel est le nom de l\'unité de pression en SI ?',
        options: ['Pascal (Pa)', 'Newton (N)', 'Joule (J)', 'Tesla (T)'],
        correctAnswerIndex: 0,
        explanation: 'La pression est mesurée en pascals (Pa) : 1 Pa = 1 N/m².',
        category: 'Physique & Mécanique',
        difficulty: 1,
        theme: 'Physique',
      ),

      // ============ MOYEN (15 questions) ============
      QuizQuestion(
        id: 'ph_011',
        question:
            'Quelle loi décrit la relation entre pression, volume et température d\'un gaz idéal ?',
        options: [
          'Loi de Hooke',
          'Loi d\'Ohm',
          'Loi de Planck',
          'Équation d\'état des gaz parfaits PV = nRT',
        ],
        correctAnswerIndex: 3,
        explanation:
            'L\'équation d\'état des gaz parfaits est PV = nRT (P pression, V volume, n quantité de matière, R constante des gaz, T température).',
        category: 'Physique & Mécanique',
        difficulty: 2,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_012',
        question:
            'Quel principe explique la portance permettant à un avion de voler (de façon simplifiée) ?',
        options: [
          'Loi de Coulomb',
          'Effet photoélectrique',
          'Principe de Bernoulli (différence de pression autour des ailes)',
          'Principe d\'incertitude',
        ],
        correctAnswerIndex: 2,
        explanation:
            'La portance est liée à la variation de pression autour de l\'aile ; le principe de Bernoulli explique partiellement ce phénomène.',
        category: 'Physique & Mécanique',
        difficulty: 2,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_013',
        question: 'Quelle relation relie énergie cinétique et masse/ vitesse ?',
        options: ['Ec = m × v', 'Ec = 1/2 m v²', 'Ec = m / v²', 'Ec = m + v²'],
        correctAnswerIndex: 1,
        explanation:
            'L\'énergie cinétique d\'un objet de masse m et vitesse v est Ec = 1/2 m v².',
        category: 'Physique & Mécanique',
        difficulty: 2,
        theme: 'Physique',
      ),
      // QuizQuestion(
      //   id: 'ph_014',
      //   question: 'Quel phénomène correspond à la diffraction des ondes ?',
      //   options: [
      //     'Réflexion sur une surface lisse',
      //     'Courbure et dispersion d\'une onde après avoir rencontré un obstacle ou une ouverture',
      //     'Augmentation d\'amplitude',
      //     'Absorption totale',
      //   ],
      //   correctAnswerIndex: 1,
      //   explanation:
      //       'La diffraction est la déviation des ondes lorsqu\'elles passent autour d\'un obstacle ou par une ouverture comparable à leur longueur d\'onde.',
      //   category: 'Physique & Mécanique',
      //   difficulty: 2,
      //   theme: 'Physique',
      // ),
      QuizQuestion(
        id: 'ph_015',
        question:
            'En mécanique, quel est le moment d\'une force par rapport à un point (torque) ?',
        options: [
          'Produit scalaire F · d',
          'Produit vectoriel r × F (distance × force perpendiculaire)',
          'Somme des forces',
          'Division de la force par la distance',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le moment (torque) est donné par le produit vectoriel du vecteur position r et de la force F : τ = r × F.',
        category: 'Physique & Mécanique',
        difficulty: 2,
        theme: 'Physique',
      ),
      // QuizQuestion(
      //   id: 'ph_016',
      //   question:
      //       'Quelle grandeur physique reste conservée dans un système isolé sans forces externes ?',
      //   options: [
      //     'Énergie uniquement',
      //     'Quantité de mouvement (momentum) et énergie totale',
      //     'Seule la masse',
      //     'Rien n\'est conservé',
      //   ],
      //   correctAnswerIndex: 1,
      //   explanation:
      //       'Dans un système isolé, la quantité de mouvement et l\'énergie totale (et aussi le moment cinétique selon symétries) sont conservées en l\'absence d\'interactions externes.',
      //   category: 'Physique & Mécanique',
      //   difficulty: 2,
      //   theme: 'Physique',
      // ),
      QuizQuestion(
        id: 'ph_017',
        question:
            'Quel est l\'effet Joule dans un conducteur parcouru par un courant ?',
        options: [
          'Production d\'un champ magnétique',

          'Augmentation de la tension',
          'Chauffage par dissipation d\'énergie électrique (P = I²R)',
          'Réduction de la résistance',
        ],
        correctAnswerIndex: 2,
        explanation:
            'L\'effet Joule correspond à la dissipation d\'énergie électrique en chaleur dans un conducteur, proportionnelle à I²R.',
        category: 'Physique & Mécanique',
        difficulty: 2,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_018',
        question:
            'Quel est le principe de base d\'un levier de premier ordre ?',
        options: [
          'La force et la charge sont du même côté',
          'Le levier n\'a pas de point d\'appui',
          'Le levier change la masse',
          'Le point d\'appui se situe entre la charge et la force motrice',
        ],
        correctAnswerIndex: 3,
        explanation:
            'Dans un levier de premier ordre, le point d\'appui est entre la force motrice et la charge (ex : balançoire).',
        category: 'Physique & Mécanique',
        difficulty: 2,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_019',
        question:
            'Quel est le rôle principal d\'un condensateur dans un circuit électrique ?',
        options: [
          'Stocker de l\'énergie sous forme de champ électrique',
          'Augmenter la résistance',
          'Générer du courant continu',
          'Mesurer la température',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Un condensateur stocke l\'énergie électrique sous forme de champ électrique entre ses armatures.',
        category: 'Physique & Mécanique',
        difficulty: 2,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_020',
        question:
            'En acoustique, quelle grandeur est liée à la hauteur perçue d\'un son ?',
        options: ['Amplitude', 'Fréquence', 'Phase', 'Vitesse du son'],
        correctAnswerIndex: 1,
        explanation:
            'La fréquence d\'une onde sonore détermine la hauteur (pitch) perçue ; plus la fréquence est élevée, plus le son est aigu.',
        category: 'Physique & Mécanique',
        difficulty: 2,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_021',
        question:
            'Quelle est la conséquence d\'une force centripète sur un objet en mouvement circulaire ?',
        options: [
          'Elle pousse l\'objet vers l\'extérieur',
          'Elle maintient l\'objet dirigé vers le centre, modifiant la direction de la vitesse',
          'Elle augmente la masse',
          'Elle supprime la vitesse',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La force centripète agit vers le centre et fait changer la direction (mais pas nécessairement la norme) de la vitesse d\'un objet en mouvement circulaire.',
        category: 'Physique & Mécanique',
        difficulty: 2,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_022',
        question:
            'Quel principe est utilisé dans un microscope optique pour grossir une image ?',
        options: [
          'Diffraction des électrons',
          'Effet photoélectrique',
          'Réfraction et lentilles optiques combinées (objectif + oculaire)',
          'Résonance magnétique',
        ],
        correctAnswerIndex: 2,
        explanation:
            'Le microscope optique utilise des lentilles (objectif et oculaire) qui réfractent la lumière pour obtenir un grand grossissement.',
        category: 'Physique & Mécanique',
        difficulty: 2,
        theme: 'Physique',
      ),
      // QuizQuestion(
      //   id: 'ph_023',
      //   question:
      //       'Quel est le principe de conservation lié à la symétrie de translation dans le temps (théorème de Noether) ?',
      //   options: [
      //     'Conservation de la charge électrique',
      //     'Conservation de l\'énergie',
      //     'Conservation de la masse',
      //     'Conservation du moment angulaire',
      //   ],
      //   correctAnswerIndex: 1,
      //   explanation:
      //       'Le théorème de Noether relie une symétrie continue (ici translation dans le temps) à une loi de conservation (énergie).',
      //   category: 'Physique & Mécanique',
      //   difficulty: 2,
      //   theme: 'Physique',
      // ),

      // ============ DIFFICILE (15 questions) ============

      // QuizQuestion(
      //   id: 'ph_024',
      //   question:
      //       'Quelle est la forme différentielle simplifiée de l\'équation d\'onde 1D pour une onde se propageant à vitesse c ?',
      //   options: [
      //     '∂²ψ/∂t² = c² ∂²ψ/∂x²',
      //     '∂ψ/∂t = c ∂ψ/∂x',
      //     '∂²ψ/∂x² = 0',
      //     '∂ψ/∂t² = -c² ψ',
      //   ],
      //   correctAnswerIndex: 0,
      //   explanation:
      //       'L\'équation d\'onde 1D est ∂²ψ/∂t² = c² ∂²ψ/∂x² pour une variable d\'onde ψ(x,t).',
      //   category: 'Physique & Mécanique',
      //   difficulty: 3,
      //   theme: 'Physique',
      // ),
      QuizQuestion(
        id: 'ph_025',
        question: 'Quelle est l\'interprétation physique de l\'inertie ?',
        options: [
          'Tendance d\'un corps à changer rapidement de position',
          'Tendance d\'un corps à résister à tout changement de mouvement (variation de vitesse)',
          'Capacité à absorber l\'énergie',
          'Relation entre force et pression',
        ],
        correctAnswerIndex: 1,
        explanation:
            'L\'inertie est la propriété d\'un corps qui le rend résistant aux changements de sa vitesse (quantifiée par la masse).',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_026',
        question:
            'Quelle est la conséquence relativiste principale quand un objet approche la vitesse de la lumière ?',
        options: [
          'Sa masse diminue fortement',
          'Le temps mesuré pour l\'objet s\'écoule plus lentement (dilatation du temps)',
          'La gravité devient nulle',
          'La charge électrique change',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La relativité restreinte prédit la dilatation du temps : les horloges en mouvement apparaissent plus lentes pour un observateur externe.',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_027',
        question:
            'Quel est le principe de superposition en mécanique quantique ?',
        options: [
          'Deux particules ne peuvent jamais être au même endroit',
          'Un système peut exister simultanément dans une combinaison linéaire d\'états propres',
          'La masse est quantifiée',
          'L\'énergie n\'est pas conservée',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La superposition permet à un état quantique d\'être une combinaison linéaire d\'états propres (jusqu\'à la mesure).',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_028',
        question:
            'Dans un pendule simple, quelle grandeur dépend approximativement de la racine carrée de la longueur ?',
        options: [
          'La période (T) qui ~ 2π √(L/g)',
          'L\'amplitude',
          'La masse du pendule',
          'La fréquence angulaire n\'a pas de lien',
        ],
        correctAnswerIndex: 0,
        explanation:
            'La période d\'un petit pendule simple est T = 2π √(L/g), proportionnelle à √L.',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_029',
        question:
            'Quel concept décrit la résistance d\'un fluide à l\'écoulement (p.ex. miel vs eau) ?',
        options: [
          'Viscosité',
          'Turbulence',
          'Viscosité cinématique',
          'Tension de surface',
        ],
        correctAnswerIndex: 0,
        explanation:
            'La viscosité est la propriété qui mesure la résistance d\'un fluide à l\'écoulement (miel est plus visqueux que l\'eau).',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique  ',
      ),
      QuizQuestion(
        id: 'ph_030',
        question:
            'Quelle grandeur caractérise l\'efficacité énergétique d\'un cycle thermique idéal de Carnot ?',
        options: [
          'η = 1 - (Tc/Th) (températures en Kelvin)',
          'η = Th - Tc',
          'η = Tc / Th',
          'η = Th × Tc',
        ],
        correctAnswerIndex: 0,
        explanation:
            'L\'efficacité maximale d\'un moteur thermique (cycle de Carnot) est η = 1 - (Tc/Th) avec Tc température froide et Th chaude en Kelvin.',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_031',
        question:
            'Quel est le moment d\'inertie d\'un disque solide de masse m et rayon R autour d\'un axe central perpendiculaire au plan ?',
        options: ['I = 1/2 m R²', 'I = m R²', 'I = 1/4 m R²', 'I = 2/3 m R²'],
        correctAnswerIndex: 0,
        explanation:
            'Le moment d\'inertie d\'un disque plein autour de son axe central est I = 1/2 m R².',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_032',
        question:
            'Quel résultat expérimental a conduit à la quantification de l\'énergie des niveaux atomiques (spectre de l\'hydrogène) ?',
        options: [
          'Expérience de Young',
          'Spectre d\'émission de l\'hydrogène expliqué par le modèle de Bohr',
          'Effet Doppler',
          'Loi de Stefan-Boltzmann',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le modèle de Bohr et l\'analyse du spectre d\'émission de l\'hydrogène ont montré des niveaux d\'énergie quantifiés.',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_033',
        question:
            'Quelle est la signification physique du symbole µ (mu) en électromagnétisme dans le vide ?',
        options: [
          'Permittivité du vide',
          'Perméabilité magnétique du vide (µ0)',
          'Coefficient de friction',
          'Champ électrique',
        ],
        correctAnswerIndex: 1,
        explanation:
            'µ0 représente la perméabilité magnétique du vide, une constante physique importante en électromagnétisme.',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_034',
        question:
            'Quel critère dimensionnel aide à vérifier la cohérence d\'une équation physique ?',
        options: [
          'Analyse dimensionnelle (unités homogènes des deux côtés)',
          'Estimation numérique',
          'Test expérimental uniquement',
          'Aucune méthode',
        ],
        correctAnswerIndex: 0,
        explanation:
            'L\'analyse dimensionnelle vérifie que les unités (dimensions) sont cohérentes de part et d\'autre d\'une équation.',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique',
      ),
      QuizQuestion(
        id: 'ph_035',
        question:
            'Dans le contexte africain, quel grand projet radioastronomique a placé l\'Afrique du Sud (et d\'autres pays africains) au centre de la recherche astrophysique moderne ?',
        options: [
          'SKA (Square Kilometre Array)',
          'Hubble Space Telescope',
          'CERN LHC',
          'Voyager',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le projet SKA (dont une partie est située en Afrique du Sud) est un observatoire radioastronomique international majeur.',
        category: 'Physique & Mécanique',
        difficulty: 3,
        theme: 'Physique',
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
