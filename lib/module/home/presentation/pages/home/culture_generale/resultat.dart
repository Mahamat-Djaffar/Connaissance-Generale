import 'dart:math';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:puzzle_app/module/home/presentation/pages/home/culture_generale/connaissance_general/connaissance_general.dart';

// Remplacez l'import ci-dessous par le chemin réel de votre page quiz si nécessaire

class QuizResultPage extends StatefulWidget {
  final int score;
  final int totalQuestions;
  final String theme;
  final int difficulty;

  const QuizResultPage({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.theme,
    required this.difficulty,
  }) : super(key: key);

  @override
  State<QuizResultPage> createState() => _QuizResultPageState();
}

class _QuizResultPageState extends State<QuizResultPage> {
  late ConfettiController _confettiController;
  late AudioPlayer _finalAudioPlayer;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(
      duration: const Duration(seconds: 4),
    );
    _finalAudioPlayer = AudioPlayer();

    // Si score parfait, lancer confettis + musique finale
    if (widget.score == widget.totalQuestions && widget.totalQuestions > 0) {
      _confettiController.play();
      _playFinalSuccess();
    }
  }

  Future<void> _playFinalSuccess() async {
    try {
      await _finalAudioPlayer.play(AssetSource('audio/success_final.mp3'));
    } catch (e) {
      debugPrint('Erreur lecture audio finale: $e');
    }
  }

  @override
  void dispose() {
    _confettiController.dispose();
    _finalAudioPlayer.stop();
    _finalAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double percentage =
        (widget.totalQuestions == 0)
            ? 0.0
            : (widget.score / widget.totalQuestions) * 100;
    String grade = _getGrade(percentage);
    Color gradeColor = _getGradeColor(percentage);
    final bool isPerfect =
        widget.score == widget.totalQuestions && widget.totalQuestions > 0;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Résultats'),
        backgroundColor: gradeColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icône de résultat
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: gradeColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          _getResultIcon(percentage),
                          size: 64,
                          color: gradeColor,
                        ),
                      ),

                      const SizedBox(height: 24),

                      Text(
                        grade,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: gradeColor,
                        ),
                      ),

                      const SizedBox(height: 16),

                      Text(
                        '${widget.score}/${widget.totalQuestions}',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),

                      Text(
                        '${percentage.toStringAsFixed(1)}% de réussite',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(height: 32),

                      Container(
                        padding: const EdgeInsets.all(20),
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
                          children: [
                            Text(
                              widget.theme,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              _getDifficultyText(widget.difficulty),
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Boutons d'action
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          side: BorderSide(color: gradeColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Retour',
                          style: TextStyle(
                            color: gradeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => ConnaissanceGeneralPage(
                                    theme: widget.theme,
                                    difficulty: widget.difficulty,
                                  ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: gradeColor,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Rejouer',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Confettis : n'afficher que si score parfait
          if (isPerfect) ...[
            Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality.explosive,
                shouldLoop: false,
                emissionFrequency: 0.03,
                numberOfParticles: 25,
                maxBlastForce: 25,
                minBlastForce: 8,
                gravity: 0.25,
                colors: const [
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                  Colors.orange,
                  Colors.purple,
                  Colors.yellow,
                ],
                // augmenter la taille des particules si vous le souhaitez
                // particleDrag: 0.05,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirection: -pi / 2,
                blastDirectionality: BlastDirectionality.directional,
                shouldLoop: false,
                emissionFrequency: 0.02,
                numberOfParticles: 20,
                maxBlastForce: 20,
                minBlastForce: 6,
                gravity: 0.25,
                colors: const [
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                  Colors.orange,
                  Colors.purple,
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _getGrade(double percentage) {
    if (percentage >= 90) return 'Excellent !';
    if (percentage >= 80) return 'Très bien !';
    if (percentage >= 70) return 'Bien !';
    if (percentage >= 60) return 'Assez bien';
    if (percentage >= 50) return 'Passable';
    return 'À améliorer';
  }

  Color _getGradeColor(double percentage) {
    if (percentage >= 80) return Colors.green;
    if (percentage >= 60) return Colors.orange;
    return Colors.red;
  }

  IconData _getResultIcon(double percentage) {
    if (percentage >= 90) return Icons.emoji_events;
    if (percentage >= 80) return Icons.thumb_up;
    if (percentage >= 60) return Icons.sentiment_satisfied;
    return Icons.sentiment_dissatisfied;
  }

  String _getDifficultyText(int difficulty) {
    switch (difficulty) {
      case 1:
        return 'Niveau Facile ⭐';
      case 2:
        return 'Niveau Moyen ⭐⭐';
      case 3:
        return 'Niveau Difficile ⭐⭐⭐';
      default:
        return 'Niveau $difficulty';
    }
  }
}
