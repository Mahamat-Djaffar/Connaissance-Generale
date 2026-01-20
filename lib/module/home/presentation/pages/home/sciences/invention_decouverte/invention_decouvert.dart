import 'package:flutter/material.dart';
import 'package:puzzle_app/core/service/audio.dart';
import 'package:puzzle_app/module/home/domain/model/science/invention_decouverte/inv_decouvert_model.dart';
import 'package:puzzle_app/module/home/presentation/pages/home/culture_generale/resultat.dart';
// import 'package:puzzle_app/module/home/domain/model/cuture_generale_model/connaissance_gen_modele.dart';

class InventionDecouvertPage extends StatefulWidget {
  final String theme;
  final int difficulty;

  const InventionDecouvertPage({
    super.key,
    required this.theme,
    required this.difficulty,
  });

  @override
  State<InventionDecouvertPage> createState() => _InventionDecouvertPageState();
}

class _InventionDecouvertPageState extends State<InventionDecouvertPage>
    with TickerProviderStateMixin {
  late List<QuizQuestion> questions;
  int currentIndex = 0;
  int score = 0;
  bool answered = false;
  int? selectedAnswer;
  late AnimationController _progressController;
  late AnimationController _cardController;
  late Animation<double> _cardAnimation;

  bool _soundEnabled = true;

  @override
  void initState() {
    super.initState();
    questions = InventionDecouvertQuestions.getQuestionsByThemeAndDifficulty(
      widget.theme,
      widget.difficulty,
    );

    if (questions.isEmpty) {
      questions = InventionDecouvertQuestions.getRandomQuestions(10);
    }

    _progressController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    _cardController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    _cardAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _cardController, curve: Curves.easeInOut),
    );

    _progressController.value = 0.0;
    // _progressController.animateTo((currentIndex + 0) / questions.length);

    AudioService().init(enabled: true, preload: false);
    _soundEnabled = AudioService().isEnabled;
  }

  @override
  void dispose() {
    _progressController.dispose();
    _cardController.dispose();
    super.dispose();
  }

  void _toggleSound() {
    setState(() {
      _soundEnabled = !_soundEnabled;
      AudioService().setEnabled(_soundEnabled);
    });
  }

  void _answerQuestion(int selectedIndex) {
    if (answered) return;

    setState(() {
      answered = true;
      selectedAnswer = selectedIndex;
      if (selectedIndex == questions[currentIndex].correctAnswerIndex) {
        score++;
        AudioService()
            .playSuccessShort(); // son court de succès via AudioService
      } else {
        AudioService().playFailShort(); // son court d'échec via AudioService
      }
    });
    final double progress = ((currentIndex + 1) / questions.length).clamp(
      0.0,
      1.0,
    );
    _progressController.animateTo(progress);
    _cardController.forward().then((_) {
      _cardController.reverse();
    });
  }

  void _nextQuestion() {
    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex++;
        answered = false;
        selectedAnswer = null;
      });
      // _progressController.animateTo((currentIndex + 1) / questions.length);
    } else {
      _progressController.animateTo(1.0);
      _showResult();
    }
  }

  void _showResult() {
    AudioService().stopAll();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder:
            (context) => QuizResultPage(
              score: score,
              totalQuestions: questions.length,
              theme: widget.theme,
              difficulty: widget.difficulty,
              replayBuilder:
                  (ctx) => InventionDecouvertPage(
                    theme: widget.theme,
                    difficulty: widget.difficulty,
                  ),
            ),
      ),
    );
  }

  Color _getDifficultyColor() {
    switch (widget.difficulty) {
      case 1:
        return Colors.green;
      case 2:
        return Colors.orange;
      case 3:
        return Colors.red;
      default:
        return Colors.blue;
    }
  }

  String _getDifficultyText() {
    switch (widget.difficulty) {
      case 1:
        return 'Facile ⭐';
      case 2:
        return 'Moyen ⭐⭐';
      case 3:
        return 'Difficile ⭐⭐⭐';
      default:
        return 'Niveau ${widget.difficulty}';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Aucune question disponible'),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            //   Icon(Icons.quiz_outlined, size: 64, color: Colors.grey),
            //   SizedBox(height: 16),
            //   Text(
            //     'Aucune question trouvée',
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //   ),
            //   Text(
            //     'pour ce thème et niveau de difficulté',
            //     style: TextStyle(color: Colors.grey[600]),
            //   ),
            //   SizedBox(height: 20),
            //   ElevatedButton(
            //     onPressed: () {
            //       _showInfoDialog();
            //     },
            //     child: Text('Retour'),
            //   ),
            // ],
          ),
        ),
      );
    }

    final question = questions[currentIndex];
    final difficultyColor = _getDifficultyColor();

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          widget.theme,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: difficultyColor,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: _toggleSound,
            icon: Icon(
              _soundEnabled ? Icons.volume_up : Icons.volume_off,
              color: Colors.white,
            ),
            tooltip: _soundEnabled ? 'Désactiver le son' : 'Activer le son',
          ),
          Container(
            margin: EdgeInsets.only(right: 16, top: 8, bottom: 8),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '${currentIndex + 1}/${questions.length}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Header avec progression
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [difficultyColor, difficultyColor.withOpacity(0.8)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _getDifficultyText(),
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Score: $score/${questions.length}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.quiz,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Barre de progression
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Progression',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 8),
                    AnimatedBuilder(
                      animation: _progressController,
                      builder: (context, child) {
                        return LinearProgressIndicator(
                          value: _progressController.value,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                          minHeight: 6,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Contenu principal
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Question
                  AnimatedBuilder(
                    animation: _cardAnimation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _cardAnimation.value,
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(24),
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
                                    padding: EdgeInsets.all(06),
                                    decoration: BoxDecoration(
                                      color: difficultyColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      Icons.help_outline,
                                      color: difficultyColor,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'Question ${currentIndex + 1}',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              Text(
                                question.question,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[800],
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 16),

                  // Options de réponse
                  ...List.generate(
                    question.options.length,
                    (index) {
                      final option = question.options[index];
                      final isCorrect = index == question.correctAnswerIndex;
                      final isSelected = selectedAnswer == index;

                      Color? backgroundColor;
                      Color? borderColor;
                      Color? textColor;
                      IconData? icon;

                      if (answered) {
                        if (isCorrect) {
                          backgroundColor = Colors.green.withOpacity(0.1);
                          borderColor = Colors.green;
                          textColor = Colors.green[800];
                          icon = Icons.check_circle;
                        } else if (isSelected && !isCorrect) {
                          backgroundColor = Colors.red.withOpacity(0.1);
                          borderColor = Colors.red;
                          textColor = Colors.red[800];
                          icon = Icons.cancel;
                        } else {
                          backgroundColor = Colors.grey.withOpacity(0.05);
                          borderColor = Colors.grey.shade300;
                          textColor = Colors.grey[600];
                        }
                      } else {
                        backgroundColor = Colors.white;
                        borderColor = Colors.grey.shade300;
                        textColor = Colors.grey[800];
                      }

                      return Container(
                        margin: EdgeInsets.only(bottom: 12),
                        child: Material(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () => _answerQuestion(index),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: borderColor,
                                  width:
                                      answered && (isCorrect || isSelected)
                                          ? 2
                                          : 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color:
                                          answered && (isCorrect || isSelected)
                                              ? (isCorrect
                                                  ? Colors.green
                                                  : Colors.red)
                                              : Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child:
                                          icon != null
                                              ? Icon(
                                                icon,
                                                size: 16,
                                                color: Colors.white,
                                              )
                                              : Text(
                                                String.fromCharCode(
                                                  65 + index,
                                                ), // A, B, C, D
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: Text(
                                      option,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: textColor,
                                        fontWeight:
                                            answered &&
                                                    (isCorrect || isSelected)
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 14),

                  // Explication et bouton suivant
                  if (answered) ...[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.blue.withOpacity(0.2),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.lightbulb_outline,
                                color: Colors.blue,
                                size: 20,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Explication',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800],
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            question.explanation,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 14),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _nextQuestion,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: difficultyColor,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              currentIndex < questions.length - 1
                                  ? "Question suivante"
                                  : "Voir les résultats",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              currentIndex < questions.length - 1
                                  ? Icons.arrow_forward
                                  : Icons.flag,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
