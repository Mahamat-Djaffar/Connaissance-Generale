import 'package:flutter/material.dart';
import 'package:puzzle_app/module/home/presentation/pages/home/culture_generale/art_literature/art_literature.dart';
import 'package:puzzle_app/module/home/presentation/pages/home/culture_generale/connaissance_general/connaissance_general.dart';
import 'package:puzzle_app/core/theme/app_color.dart';
import 'package:puzzle_app/module/home/presentation/pages/home/culture_generale/expression_et_proverbe/expression_proverbe.dart';
import 'package:puzzle_app/module/home/presentation/pages/home/culture_generale/personnalite/personnalite.dart';
import 'package:puzzle_app/module/home/presentation/pages/home/culture_generale/record_chiffre/record_chiffre.dart';

class CultureGeneralePage extends StatefulWidget {
  const CultureGeneralePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CultureGeneralePageState createState() => _CultureGeneralePageState();
}

class _CultureGeneralePageState extends State<CultureGeneralePage> {
  int selectedLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          'Culture Générale',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColor.primarySwatch[500],
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              _showInfoDialog();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header avec stats
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColor.primaryColor, Color(0xFF496585)],
                  // colors: [Colors.deepPurple, Colors.deepPurple.shade300],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.public,
                    color: Colors.white,
                    size: 28,
                  ),
                  SizedBox(height: 5),
                  Text(
                    '150+ Questions',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Testez vos cultures générales',
                    style: TextStyle(
                      // ignore: deprecated_member_use
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Sélecteur de niveau
            Text(
              'Choisissez votre niveau',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: _buildLevelSelector(1, 'Facile', '⭐', Colors.green),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: _buildLevelSelector(2, 'Moyen', '⭐⭐', Colors.orange),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: _buildLevelSelector(3, 'Difficile', '⭐⭐⭐', Colors.red),
                ),
              ],
            ),

            SizedBox(height: 5),

            // Sous-thèmes
            Text(
              'Thèmes disponibles',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 16),

            // Liste des thèmes
            ..._buildThemesList(),

            SizedBox(height: 16),

            Text(
              'Quiz recommandés',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 16),

            _buildRecommendedQuiz(
              'Quiz Découverte',
              'Parfait pour commencer',
              '10 questions • 5 min',
              Icons.explore,
              Colors.blue,
            ),

            _buildRecommendedQuiz(
              'Défi Quotidien',
              'Le quiz du jour',
              '15 questions • 8 min',
              Icons.today,
              Colors.purple,
            ),

            _buildRecommendedQuiz(
              'Marathon Culture',
              'Pour les experts',
              '50 questions • 25 min',
              Icons.fitness_center,
              Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLevelSelector(
    int level,
    String title,
    String stars,
    Color color,
  ) {
    bool isSelected = selectedLevel == level;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLevel = level;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        decoration: BoxDecoration(
          color: isSelected ? color : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? color : Colors.grey.shade300,
            width: 2,
          ),
          boxShadow:
              isSelected
                  ? [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: color.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 8,
                    ),
                  ]
                  : [],
        ),
        child: Column(
          children: [
            Text(
              stars,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildThemesList() {
    List<Map<String, dynamic>> themes = [
      {
        'title': 'Connaissances Générales',
        'subtitle': 'Un peu de tout',
        'questions': '30 questions',
        'icon': Icons.lightbulb_outline,
        'color': Colors.amber,
        'page':
            () => ConnaissanceGeneralPage(
              theme: 'Connaissances Générales',
              difficulty: selectedLevel,
            ),
      },
      {
        'title': 'Expressions & Proverbes',
        'subtitle': 'Dictons et citations',
        'questions': '30 questions',
        'icon': Icons.format_quote,
        'color': Colors.indigo,
        'page':
            () => ExpressionProverbePage(
              theme: 'Expressions & Proverbes',
              difficulty: selectedLevel,
            ),
      },
      {
        'title': 'Personnalités Célèbres',
        'subtitle': 'Acteurs, écrivains, scientifiques',
        'questions': '45 questions',
        'icon': Icons.person_outline,
        'color': Colors.pink,
        'page':
            () => PersonnalitePage(
              theme: 'Personnalité Célèbres',
              difficulty: selectedLevel,
            ),
      },
      {
        'title': 'Art & Littérature',
        'subtitle': 'Peinture, sculpture, romans',
        'questions': '25 questions',
        'icon': Icons.palette_outlined,
        'color': Colors.deepOrange,
        'page':
            () => ArtLitteraturePage(
              theme: 'Art & Littérature',
              difficulty: selectedLevel,
            ),
      },

      {
        'title': 'Records & Chiffres',
        'subtitle': 'Plus grand, plus petit...',
        'questions': '25 questions',
        'icon': Icons.trending_up,
        'color': Colors.teal,
        'page':
            () => RecordChiffrePage(
              theme: 'Record et Chiffre',
              difficulty: selectedLevel,
            ),
      },
    ];

    return themes
        .map(
          (theme) => _buildThemeCard(
            theme['title'],
            theme['subtitle'],
            theme['questions'],
            theme['icon'],
            theme['color'],
            () => _startThemeQuiz(theme['page']),
          ),
        )
        .toList();
  }

  Widget _buildThemeCard(
    String title,
    String subtitle,
    String questions,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        elevation: 2,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    icon,
                    color: color,
                    size: 24,
                  ),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: color.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          questions,
                          style: TextStyle(
                            fontSize: 12,
                            color: color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[400],
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRecommendedQuiz(
    String title,
    String subtitle,
    String duration,
    IconData icon,
    Color color,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: color,
              size: 24,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  duration,
                  style: TextStyle(
                    fontSize: 12,
                    color: color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _startRecommendedQuiz(title);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: Text(
              'Jouer',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  void _startThemeQuiz(Widget Function() pageBuilder) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => pageBuilder()),
    );
  }

  void _startRecommendedQuiz(String quizTitle) {
    // print('Démarrage du quiz recommandé: $quizTitle');
    // Navigation vers le quiz recommandé
  }

  void _showInfoDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColor.primarySwatch[500],
          title: Text(
            'Culture Générale',
            style: TextStyle(color: Colors.white),
          ),
          content: Text(
            'Testez vos connaissances sur des sujets variés ! '
            'Choisissez votre niveau et explorez différents thèmes. '
            'Plus vous jouez, plus vous apprenez !',
            style: TextStyle(
              fontSize: 14,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          actions: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Compris',
                style: TextStyle(color: AppColor.primarySwatch[500]),
              ),
            ),
          ],
        );
      },
    );
  }
}
