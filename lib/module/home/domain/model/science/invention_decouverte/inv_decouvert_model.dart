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

class InventionDecouvertQuestions {
  static List<QuizQuestion> getAllQuestions() {
    return [
      // ============ FACILE (10 questions) ============
      QuizQuestion(
        id: 'id_001',
        question: 'Qui a inventé l\'ampoule électrique pratique en 1879 ?',
        options: [
          'Nikola Tesla',
          'Thomas Edison',
          'Alexander Graham Bell',
          'James Watt',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Thomas Edison a breveté une ampoule électrique pratique en 1879 (améliorations et commercialisation).',
        category: 'Inventions & Découvertes',
        difficulty: 1,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_002',
        question: 'Quel inventeur est associé à l\'invention du téléphone ?',
        options: [
          'Guglielmo Marconi',
          'Alexander Graham Bell',
          'Tim Berners-Lee',
          'Samuel Morse',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Alexander Graham Bell est reconnu pour l\'invention du téléphone (brevet en 1876).',
        category: 'Inventions & Découvertes',
        difficulty: 1,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_003',
        question:
            'Quel procédé permet d\'imprimer des textes massivement en Europe au XVe siècle ?',
        options: [
          'Photocopie',
          'Typographie (presse) de Gutenberg',
          'Impression 3D',
          'Lithographie',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La presse à imprimer de Gutenberg (vers 1440) a révolutionné la diffusion des textes en Europe.',
        category: 'Inventions & Découvertes',
        difficulty: 1,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_004',
        question:
            'Qui est considéré comme l\'inventeur du vaccin contre la variole (première vaccination) ?',
        options: [
          'Edward Jenner',
          'Louis Pasteur',
          'Alexander Fleming',
          'Jonas Salk',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Edward Jenner est connu pour la vaccination antivarolique à la fin du XVIIIᵉ siècle (1796).',
        category: 'Inventions & Découvertes',
        difficulty: 1,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_005',
        question: 'Quel scientifique a découvert la pénicilline en 1928 ?',
        options: [
          'Alexander Fleming',
          'Louis Pasteur',
          'Robert Koch',
          'Joseph Lister',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Alexander Fleming découvrit la pénicilline en 1928, ouvrant l\'ère des antibiotiques.',
        category: 'Inventions & Découvertes',
        difficulty: 1,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_006',
        question:
            'Quel inventeur est généralement associé à la création du World Wide Web ?',
        options: [
          'Vint Cerf',
          'Tim Berners-Lee',
          'Marc Andreessen',
          'Larry Page',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Tim Berners-Lee a proposé le World Wide Web en 1989 et développé les premiers serveurs et navigateurs web.',
        category: 'Inventions & Découvertes',
        difficulty: 1,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_007',
        question:
            'Quel objet est essentiellement utilisé pour stocker des données de façon portable (années 1990-2000) ?',
        options: [
          'Floppy disk (disquette)',
          'CD-ROM',
          'Cartouche NES',
          'Tube cathodique',
        ],
        correctAnswerIndex: 0,
        explanation:
            'La disquette (floppy disk) fut largement utilisée pour le stockage portable avant les USB sticks et CD-ROMs.',
        category: 'Inventions & Découvertes',
        difficulty: 1,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_008',
        question:
            'Quelle invention a permis la communication sans fil à longue distance au début du XXᵉ siècle ?',
        options: [
          'Télégraphe',
          'Radio (Marconi)',
          'Téléphone filaire',
          'Télévision',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Guglielmo Marconi développa la radio sans fil et reçut le prix Nobel pour ses travaux en radiotélégraphie.',
        category: 'Inventions & Découvertes',
        difficulty: 1,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_009',
        question:
            'Quel inventeur est associé à la machine à vapeur améliorée (XVIIIᵉ siècle) ?',
        options: [
          'James Watt',
          'Thomas Edison',
          'Nikola Tesla',
          'George Stephenson',
        ],
        correctAnswerIndex: 0,
        explanation:
            'James Watt améliora considérablement les machines à vapeur au XVIIIᵉ siècle, favorisant la révolution industrielle.',
        category: 'Inventions & Découvertes',
        difficulty: 1,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_010',
        question:
            'Quel service mobile lancé au Kenya a transformé les paiements mobiles en Afrique ?',
        options: ['M-Pesa', 'MobilePay', 'Orange Money', 'MTN MobileMoney'],
        correctAnswerIndex: 0,
        explanation:
            'M-Pesa, lancé par Safaricom au Kenya, est un service pionnier de paiements et transferts mobiles en Afrique.',
        category: 'Inventions & Découvertes',
        difficulty: 1,
        theme: 'Inventions & Découvertes',
      ),

      // ============ MOYEN (20 questions) ============
      QuizQuestion(
        id: 'id_011',
        question:
            'En quelle année l\'homme a-t-il posé le premier pas sur la Lune (mission Apollo 11) ?',
        options: ['1965', '1969', '1972', '1959'],
        correctAnswerIndex: 1,
        explanation:
            'La mission Apollo 11 atterrit sur la Lune en juillet 1969 ; Neil Armstrong fut le premier humain à poser le pied sur la Lune.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_012',
        question:
            'Qui a inventé le premier moteur à combustion interne pratique ?',
        options: [
          'Nikolaus Otto',
          'Rudolf Diesel',
          'Gottlieb Daimler',
          'Karl Benz',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Nikolaus Otto développa le moteur à quatre temps (cycle d\'Otto) au XIXᵉ siècle.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_013',
        question:
            'Quel scientifique a formulé la théorie de la relativité restreinte en 1905 ?',
        options: [
          'Isaac Newton',
          'Albert Einstein',
          'James Clerk Maxwell',
          'Niels Bohr',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Albert Einstein publia en 1905 la théorie de la relativité restreinte, modifiant la conception de l\'espace et du temps.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_014',
        question:
            'Quel inventeur est crédité pour l\'invention du procédé photographique pratique (daguerréotype) au XIXᵉ siècle ?',
        options: [
          'Louis Daguerre',
          'Nicéphore Niépce',
          'George Eastman',
          'Ansel Adams',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Louis Daguerre développa le daguerréotype (procédé photographique) au début du XIXᵉ siècle (en collaboration avec Niépce).',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_015',
        question:
            'Qui a développé la théorie germinale des maladies et contribué au développement des vaccins (XIXᵉ siècle) ?',
        options: [
          'Robert Koch',
          'Louis Pasteur',
          'Edward Jenner',
          'Alexander Fleming',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Louis Pasteur contribua à la théorie des germes et développa des vaccins et procédés de pasteurisation.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_016',
        question:
            'Quel dispositif permet la conversion d\'énergie solaire en électricité ?',
        options: [
          'Turbine éolienne',
          'Panneau photovoltaïque',
          'Générateur thermique',
          'Pile à combustible',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les panneaux photovoltaïques convertissent l\'énergie lumineuse en électricité via l\'effet photovoltaïque.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_017',
        question:
            'Quel est le nom du premier ordinateur électronique généraliste ( souvent cité ) achevé en 1945 ?',
        options: ['ENIAC', 'UNIVAC', 'Z3', 'Colossus'],
        correctAnswerIndex: 0,
        explanation:
            'ENIAC (Electronic Numerical Integrator and Computer) fut l\'un des premiers ordinateurs électroniques généraux, terminé en 1945.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_018',
        question:
            'Qui a mis au point le vaccin antipolio utilisé massivement (années 1950) ?',
        options: [
          'Albert Sabin',
          'Jonas Salk',
          'Edward Jenner',
          'Louis Pasteur',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Jonas Salk a développé le vaccin antipoliomyélitique inactivé (années 1950).',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_019',
        question:
            'Quel inventeur est associé à l\'invention du transistor (1947) ?',
        options: [
          'Bardeen, Brattain et Shockley',
          'Edison et Tesla',
          'Bell et Marconi',
          'Turing et von Neumann',
        ],
        correctAnswerIndex: 0,
        explanation:
            'John Bardeen, Walter Brattain et William Shockley inventèrent le transistor en 1947 chez Bell Labs.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_020',
        question:
            'Quel inventeur est à l\'origine de la base du web : HTTP et HTML ?',
        options: [
          'Tim Berners-Lee',
          'Vint Cerf',
          'Robert Cailliau',
          'Marc Andreessen',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Tim Berners-Lee a proposé HTTP, HTML et le premier serveur/éditeur web en 1989–1990.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_021',
        question:
            'Quelle invention a profondément facilité l\'irrigation et l\'agriculture dans plusieurs régions d\'Afrique au XXᵉ siècle ?',
        options: [
          'Moteur à vapeur',
          'Pompe à eau et motopompe',
          'Télégraphe',
          'Imprimante 3D',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les pompes à eau motorisées et motopompes ont permis d\'irriguer et d\'accroître la productivité agricole dans de nombreuses régions.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_022',
        question:
            'Qui a breveté le moteur diesel (Rudolf Diesel) et quand approximativement ?',
        options: ['Années 1760', 'Années 1890', 'Années 1950', 'Années 1820'],
        correctAnswerIndex: 1,
        explanation:
            'Rudolf Diesel développa et breveta le moteur Diesel à la fin du XIXᵉ siècle (années 1890).',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_023',
        question:
            'Quel continent a vu la création du célèbre observatoire radio SKA (Square Kilometre Array) impliquant l\'Afrique du Sud ?',
        options: ['Asie', 'Afrique', 'Amérique du Sud', 'Antarctique'],
        correctAnswerIndex: 1,
        explanation:
            'Le projet SKA implique des installations en Afrique (notamment en Afrique du Sud) et en Australie, renforçant la recherche radioastronomique.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_024',
        question:
            'Quel procédé révolutionnaire a permis l\'impression en relief (typographie) à grande échelle ?',
        options: [
          'Lithographie',
          'Presse à imprimer de Gutenberg',
          'Photogravure',
          'Sérigraphie',
        ],
        correctAnswerIndex: 1,
        explanation:
            'La presse à imprimer de Gutenberg permit l\'impression en masse de livres et documents à partir de caractères mobiles.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_025',
        question:
            'Quel chercheur est lié à la découverte des rayons X en 1895 ?',
        options: [
          'Wilhelm Röntgen',
          'Marie Curie',
          'Henri Becquerel',
          'Max Planck',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Wilhelm Röntgen découvrit les rayons X en 1895 et reçut le premier prix Nobel de physique en 1901.',
        category: 'Inventions & Découvertes',
        difficulty: 2,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_026',
        question:
            'Quel est l\'objet principal de l\'invention du code QR et où a-t-il été popularisé ?',
        options: [
          'Scanner médical',
          'Stockage d\'URL et données, popularisé au Japon (industrie automobile) ',
          'Impression 3D',
          'Carte SIM',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le code QR (Quick Response) a été inventé pour le suivi des pièces automobiles au Japon et sert à encoder des données/URL lisibles rapidement.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),

      // ============ DIFFICILE (20 questions) ============
      QuizQuestion(
        id: 'id_027',
        question:
            'Quel inventeur a réalisé la première greffe cardiaque humaine avec succès en 1967 ?',
        options: [
          'Christian Barnard',
          'Christiaan Barnard',
          'Michael DeBakey',
          'Norman Shumway',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Le chirurgien sud-africain Christiaan Barnard effectua la première greffe cardiaque humaine réussie en 1967 (Afrique du Sud).',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_028',
        question:
            'Qui est l\'inventeur du premier moteur électrique pratique (découverte clé pour l\'électrotechnique) au XIXᵉ siècle ?',
        options: [
          'Michael Faraday',
          'Thomas Edison',
          'Heinrich Hertz',
          'James Clerk Maxwell',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Michael Faraday réalisa des expériences fondamentales sur l\'électromagnétisme et construisit des moteurs électriques expérimentalement.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_029',
        question:
            'Quel savant a proposé l\'idée du "machine de Turing" formalisant le calcul en 1936 ?',
        options: [
          'Alan Turing',
          'Alonzo Church',
          'Kurt Gödel',
          'John von Neumann',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Alan Turing décrivit la "machine de Turing" en 1936, concept de base en informatique théorique.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_030',
        question:
            'Quel inventeur est crédité pour le développement de l\'IRM (imagerie par résonance magnétique) moderne ?',
        options: [
          'Paul Lauterbur et Peter Mansfield',
          'Wilhelm Röntgen',
          'Raymond Damadian',
          'André-Marie Ampère',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Paul Lauterbur et Peter Mansfield contribuèrent aux techniques d\'IRM et reçurent le prix Nobel de physiologie/ médecine en 2003.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_031',
        question:
            'Quel physicien a découvert la radioactivité naturelle en 1896 ?',
        options: [
          'Marie Curie',
          'Antoine Henri Becquerel',
          'Niels Bohr',
          'Ernest Rutherford',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Henri Becquerel découvrit la radioactivité naturelle en 1896; Marie et Pierre Curie approfondirent ces recherches.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_032',
        question:
            'Quel inventeur a mis au point le premier moteur à jet opérationnel ?',
        options: [
          'Frank Whittle',
          'Wright brothers',
          'Charles Parsons',
          'Gustav Eiffel',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Frank Whittle (R.-U.) est l\'un des pionniers du moteur à réaction ; des développements parallèles eurent lieu ailleurs.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_033',
        question:
            'Quelle percée scientifique a permis la découverte de l\'ADN en double hélice en 1953 ?',
        options: [
          'Découverte des rayons X',
          'Travaux de Watson & Crick (avec Rosalind Franklin)',
          'Découverte de la pénicilline',
          'Théorie quantique',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Watson et Crick proposèrent le modèle en double hélice de l\'ADN en 1953, s\'appuyant sur des données de diffraction (Rosalind Franklin).',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_034',
        question:
            'Quel inventeur est associé à la création du premier langage de programmation de haut niveau (Fortran) ?',
        options: [
          'John Backus et son équipe',
          'Dennis Ritchie',
          'Grace Hopper',
          'Ken Thompson',
        ],
        correctAnswerIndex: 0,
        explanation:
            'John Backus dirigea le groupe qui développa Fortran (années 1950), un langage de programmation de haut niveau pour le calcul scientifique.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_035',
        question:
            'Quel scientifique a proposé la penurie d\'ozone stratosphérique liée aux CFC et contribué à l\'alerte mondiale ?',
        options: [
          'Paul Crutzen',
          'Mario Molina et F. Sherwood Rowland',
          'Svante Arrhenius',
          'James Lovelock',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Mario Molina et F. Sherwood Rowland montrèrent les effets destructeurs des CFC sur l\'ozone stratosphérique (prix Nobel 1995 à Molina, Rowland & Crutzen).',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_036',
        question:
            'Quel dispositif a permis la découverte des ondes gravitationnelles en 2015 (observation directe) ?',
        options: [
          'Hubble Space Telescope',
          'LIGO (interféromètres laser)',
          'Voyager',
          'ALMA radioarray',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Les interféromètres LIGO ont détecté des ondes gravitationnelles en 2015 (fusions de trous noirs).',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_037',
        question:
            'Qui a inventé le procédé de pasteurisation qui porte son nom ?',
        options: [
          'Louis Pasteur',
          'Robert Koch',
          'Joseph Lister',
          'Edward Jenner',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Louis Pasteur développa des méthodes de pasteurisation pour réduire la contamination microbiologique des aliments et boissons.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_038',
        question:
            'Quel terme désigne l\'ensemble des techniques permettant de produire de l\'ADN recombinant (biotechnologie moderne) ?',
        options: [
          'Génie génétique',
          'Cryogénie',
          'Transduction',
          'Photosynthèse',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le génie génétique regroupe les techniques de manipulation de l\'ADN pour créer des constructions recombinantes et organismes modifiés.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_039',
        question:
            'Quelle innovation a largement contribué à la révolution agricole (révolution verte) au XXᵉ siècle ?',
        options: [
          'Pesticides modernes, variétés à haut rendement et irrigation',
          'Télévision',
          'Machine à écrire',
          'Photographie',
        ],
        correctAnswerIndex: 0,
        explanation:
            'La révolution verte combina variétés de cultures améliorées, engrais, irrigation et pesticides pour augmenter fortement les rendements agricoles.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_040',
        question:
            'Quel inventeur africain contemporain a contribué à l\'essort des paiements mobiles (M-Pesa) ?',
        options: [
          'Grace Mugabe',
          'Nick Hughes & Susie Lonie (concepteurs du service M-Pesa chez Vodafone/Safaricom)',
          'Elon Musk',
          'Mark Shuttleworth',
        ],
        correctAnswerIndex: 1,
        explanation:
            'M-Pesa fut lancé par Safaricom (Kenya) en partenariat avec Vodafone ; Nick Hughes et Susie Lonie figurent parmi les concepteurs du service.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_041',
        question:
            'Quel inventeur est connu pour avoir mis au point le GPS moderne (système satellitaire) ?',
        options: [
          'Brad Parkinson et l\'équipe américaine (GPS)',
          'Galileo Galilei',
          'Nikola Tesla',
          'Heinrich Hertz',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Brad Parkinson et d\'autres chercheurs du DoD contribuèrent au développement du système GPS (satellites, horloges atomiques, algorithmes).',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_042',
        question:
            'Quel phénomène physique a été exploité pour l\'invention du laser ?',
        options: [
          'Stimulated emission (émission stimulée)',
          'Effet photoélectrique',
          'Diffraction',
          'Interférence',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Le laser repose sur l\'émission stimulée d\'un rayonnement cohérent dans un milieu amplificateur.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_043',
        question:
            'Quel inventeur a proposé le concept de “machine universelle” en 1936 (fondement théorique de l\'informatique) ?',
        options: [
          'Alonzo Church',
          'Alan Turing',
          'John von Neumann',
          'Kurt Gödel',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Alan Turing proposa la machine de Turing, modèle théorique du calcul et des machines programmables.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_044',
        question:
            'Quel progrès technologique a permis l\'essor des télécommunications sous-marines modernes (câbles) ?',
        options: [
          'Fibre optique',
          'Télégraphe sans fil',
          'Radio',
          'Satellite uniquement',
        ],
        correctAnswerIndex: 0,
        explanation:
            'La fibre optique a révolutionné les communications internationales via câbles sous-marins à très large bande passante.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_045',
        question:
            'Quel français est connu pour avoir inventé la pasteurisation et contribué aux vaccins, un des piliers de la microbiologie appliquée ?',
        options: [
          'Louis Pasteur',
          'Jean-Baptiste Lamarck',
          'Claude Bernard',
          'Antoine Lavoisier',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Louis Pasteur a fondé des méthodes de conservation (pasteurisation) et contribué aux vaccins, fondant la microbiologie appliquée.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_046',
        question:
            'Quel inventeur est associé à la mise au point du premier vaccin antirabique ?',
        options: [
          'Louis Pasteur',
          'Edward Jenner',
          'Jonas Salk',
          'Albert Sabin',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Louis Pasteur développa le premier vaccin antirabique à la fin du XIXᵉ siècle.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_047',
        question:
            'Quel est l\'objectif principal du principe ARPANET, ancêtre d\'Internet, lancé en 1969 ?',
        options: [
          'Connexion de réseaux de recherche et redondance pour résilience militaire',
          'Réseau social',
          'Streaming vidéo',
          'Commerce électronique',
        ],
        correctAnswerIndex: 0,
        explanation:
            'ARPANET reliait réseaux de recherche et visait la résilience et le partage de ressources informatiques entre universités et organismes du DoD.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_048',
        question:
            'Quel savant suédois a proposé la théorie moléculaire expliquant l\'effet de serre et le rôle du CO2 dès le début du XXᵉ siècle ?',
        options: [
          'Svante Arrhenius',
          'Alfred Nobel',
          'Anders Celsius',
          'Carl Linnaeus',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Svante Arrhenius proposa au XIXᵉ siècle l\'idée que l\'augmentation du CO2 pourrait influencer la température globale (effet de serre).',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_049',
        question:
            'Quel dispositif expérimental a permis la découverte de l\'électron ?',
        options: [
          'Tube de Crookes / expériences de cathode (J.J. Thomson)',
          'Spectromètre',
          'Microscope optique',
          'Thermomètre',
        ],
        correctAnswerIndex: 0,
        explanation:
            'Des expériences en tubes à cathode (Crookes) conduisirent J.J. Thomson à la découverte de l\'électron (1897).',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
      ),
      QuizQuestion(
        id: 'id_050',
        question: 'Quel est l\'apport majeur de Robert Noyce en électronique ?',
        options: [
          'Invention du transistor point contact',
          'Co-invention du circuit intégré (microchip) moderne',
          'Découverte du silicium',
          'Création de l\'internet',
        ],
        correctAnswerIndex: 1,
        explanation:
            'Robert Noyce (et Jack Kilby indépendamment) est co-inventeur du circuit intégré, base des microprocesseurs modernes.',
        category: 'Inventions & Découvertes',
        difficulty: 3,
        theme: 'Inventions & Découvertes',
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
