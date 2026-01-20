import 'package:flutter/material.dart';
import 'package:puzzle_app/module/home/presentation/pages/home/quiz_jour/quiz_jour.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ============================================================================
// GESTIONNAIRE DU QUIZ DU JOUR
// ============================================================================

class QuizJourManager {
  static const String _keyLastCompletedDate = 'quiz_jour_last_completed_date';
  static const String _keyLastScore = 'quiz_jour_last_score';
  static const String _keyTotalQuestions = 'quiz_jour_total_questions';

  // Vérifier si le quiz du jour a été complété aujourd'hui
  static Future<bool> isCompletedToday() async {
    final prefs = await SharedPreferences.getInstance();
    final lastCompletedDate = prefs.getString(_keyLastCompletedDate);

    if (lastCompletedDate == null) return false;

    final today = _getTodayString();
    return lastCompletedDate == today;
  }

  // Obtenir le score du quiz du jour
  static Future<QuizJourStatus> getQuizStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final lastCompletedDate = prefs.getString(_keyLastCompletedDate);
    final score = prefs.getInt(_keyLastScore) ?? 0;
    final totalQuestions = prefs.getInt(_keyTotalQuestions) ?? 15;

    final today = _getTodayString();
    final isCompletedToday = lastCompletedDate == today;

    return QuizJourStatus(
      isCompleted: isCompletedToday,
      score: score,
      totalQuestions: totalQuestions,
      isPerfectScore: isCompletedToday && score == totalQuestions,
    );
  }

  // Sauvegarder le résultat du quiz
  static Future<void> saveQuizResult(int score, int totalQuestions) async {
    final prefs = await SharedPreferences.getInstance();
    final today = _getTodayString();

    await prefs.setString(_keyLastCompletedDate, today);
    await prefs.setInt(_keyLastScore, score);
    await prefs.setInt(_keyTotalQuestions, totalQuestions);
  }

  // Réinitialiser le quiz (pour tester ou pour un nouveau jour)
  static Future<void> resetQuiz() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyLastCompletedDate);
    await prefs.remove(_keyLastScore);
    await prefs.remove(_keyTotalQuestions);
  }

  // Obtenir la date du jour au format string
  static String _getTodayString() {
    final now = DateTime.now();
    return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
  }
}

// Modèle pour le statut du quiz
class QuizJourStatus {
  final bool isCompleted;
  final int score;
  final int totalQuestions;
  final bool isPerfectScore;

  QuizJourStatus({
    required this.isCompleted,
    required this.score,
    required this.totalQuestions,
    required this.isPerfectScore,
  });

  double get percentage => (score / totalQuestions) * 100;
}

// ============================================================================
// WIDGET POUR LA CARTE QUIZ DU JOUR (à utiliser dans la page d'accueil)
// ============================================================================

class QuizJourCard extends StatefulWidget {
  final Color primaryColor;

  const QuizJourCard({
    Key? key,
    required this.primaryColor,
  }) : super(key: key);

  @override
  State<QuizJourCard> createState() => _QuizJourCardState();
}

class _QuizJourCardState extends State<QuizJourCard> {
  QuizJourStatus? _quizStatus;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadQuizStatus();
  }

  Future<void> _loadQuizStatus() async {
    final status = await QuizJourManager.getQuizStatus();
    setState(() {
      _quizStatus = status;
      _isLoading = false;
    });
  }

  // remplace la méthode _startQuiz dans _QuizJourCardState par ceci
  void _startQuiz() async {
    if (_quizStatus?.isCompleted ?? false) {
      final shouldRestart = await showDialog<bool>(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text('Quiz déjà complété'),
              content: Text(
                'Vous avez déjà terminé le quiz du jour avec un score de ${_quizStatus!.score}/${_quizStatus!.totalQuestions}.\n\nVoulez-vous le recommencer ?',
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text('Annuler'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, true),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.primaryColor,
                  ),
                  child: Text('Recommencer'),
                ),
              ],
            ),
      );

      if (shouldRestart != true) return;
    }

    // Lance le quiz puis recharge toujours le statut (même si result == null)
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizJourPage(),
      ),
    );

    // Toujours recharger pour s'assurer que l'UI reflète la sauvegarde
    _loadQuizStatus();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(widget.primaryColor),
          ),
        ),
      );
    }

    final isCompleted = _quizStatus?.isCompleted ?? false;
    final isPerfect = _quizStatus?.isPerfectScore ?? false;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color:
                      isCompleted
                          ? (isPerfect
                              ? Colors.green.withOpacity(0.2)
                              : Colors.amber.withOpacity(0.2))
                          : Colors.amber.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  isCompleted
                      ? (isPerfect ? Icons.check_circle : Icons.check)
                      : Icons.star,
                  color:
                      isCompleted
                          ? (isPerfect ? Colors.green : Colors.amber)
                          : Colors.amber,
                  size: 20,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Spécial Inventions',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (isCompleted) ...[
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: isPerfect ? Colors.green : Colors.amber,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  isPerfect ? Icons.emoji_events : Icons.check,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  isPerfect ? '100%' : 'Terminé',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      isCompleted
                          ? 'Score: ${_quizStatus!.score}/${_quizStatus!.totalQuestions} (${_quizStatus!.percentage.toStringAsFixed(0)}%)'
                          : '15 questions • 5 min',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 14),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _startQuiz,
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isCompleted
                        ? (isPerfect ? Colors.green : Colors.grey[600])
                        : widget.primaryColor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isPerfect)
                    Icon(Icons.emoji_events, size: 20)
                  else if (isCompleted)
                    Icon(Icons.refresh, size: 20)
                  else
                    Icon(Icons.play_arrow, size: 20),
                  SizedBox(width: 8),
                  Text(
                    isPerfect
                        ? 'Score parfait ! 🎉'
                        : isCompleted
                        ? 'Recommencer'
                        : 'Commencer le quiz',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),

          // Message de félicitations pour score parfait
          if (isPerfect) ...[
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.green.withOpacity(0.3),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.celebration, color: Colors.green, size: 16),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Félicitations ! Vous avez obtenu un score parfait !',
                      style: TextStyle(
                        color: Colors.green[800],
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

// ============================================================================
// MODIFICATION DE LA PAGE DE RÉSULTATS POUR SAUVEGARDER
// ============================================================================

// Ajoutez cette méthode dans QuizJourResultPage (dans le fichier quiz_jour_page.dart)
/*
@override
void initState() {
  super.initState();
  // Sauvegarder le résultat
  QuizJourManager.saveQuizResult(widget.score, widget.totalQuestions);
}
*/

// ============================================================================
// EXEMPLE D'UTILISATION DANS LA PAGE D'ACCUEIL
// ============================================================================

class ExemplePageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Autres widgets...
            Text(
              'Quiz du jour',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 16),

            // Utilisation du nouveau widget
            QuizJourCard(
              primaryColor: Colors.deepPurple, // ou AppColor.primaryColor
            ),

            // Autres widgets...
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// BOUTON ADMIN POUR RESET (OPTIONNEL - POUR LES TESTS)
// ============================================================================

class ResetQuizButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        await QuizJourManager.resetQuiz();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Quiz du jour réinitialisé')),
        );
      },
      child: Text('Reset Quiz du Jour (Dev)'),
    );
  }
}
