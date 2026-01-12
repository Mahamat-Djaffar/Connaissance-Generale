import 'package:audioplayers/audioplayers.dart';

/// Service audio singleton pour jouer les jingles courts et la musique finale.
class AudioService {
  AudioService._internal();
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;

  // Players : lowLatency pour sons courts, media pour la musique finale.
  final AudioPlayer _successPlayer = AudioPlayer();
  final AudioPlayer _failPlayer = AudioPlayer();
  final AudioPlayer _finalPlayer = AudioPlayer();

  bool _enabled = true;

  /// Initialise le service (optionnel). Vous pouvez appeler preloadAll() ici si besoin.
  Future<void> init({bool enabled = true, bool preload = false}) async {
    _enabled = enabled;
    if (preload) {
      await preloadAll();
    }
  }

  /// Précharge les assets (utile si vous voulez réduire la latence).
  Future<void> preloadAll() async {
    try {
      // setSource/ setSourceAsset peut être utile pour préchargement selon la version d'audioplayers
      await _successPlayer.setSource(AssetSource('audio/success_short.mp3'));
      await _failPlayer.setSource(AssetSource('audio/fail_short.mp3'));
      await _finalPlayer.setSource(AssetSource('audio/success_final.mp3'));
      // Note : selon la plateforme, setSource peut ouvrir le flux sans jouer.
    } catch (e) {
      // Ne pas bloquer l'app si le préchargement échoue
      // debugPrint('Préchargement audio échoué: $e');
    }
  }

  /// Activer/désactiver les sons globalement (paramètre utilisateur futur).
  void setEnabled(bool enabled) {
    _enabled = enabled;
    if (!_enabled) {
      stopAll();
    }
  }

  bool get isEnabled => _enabled;

  Future<void> playSuccessShort() async {
    if (!_enabled) return;
    try {
      await _successPlayer.stop();
      await _successPlayer.play(AssetSource('audio/success_short.mp3'));
    } catch (e) {
      // debugPrint('Erreur playSuccessShort: $e');
    }
  }

  Future<void> playFailShort() async {
    if (!_enabled) return;
    try {
      await _failPlayer.stop();
      await _failPlayer.play(AssetSource('audio/fail_short.mp3'));
    } catch (e) {
      // debugPrint('Erreur playFailShort: $e');
    }
  }

  Future<void> playFinal() async {
    if (!_enabled) return;
    try {
      await _finalPlayer.stop();
      await _finalPlayer.play(AssetSource('audio/success_final.mp3'));
    } catch (e) {
      // debugPrint('Erreur playFinal: $e');
    }
  }

  Future<void> stopAll() async {
    try {
      await _successPlayer.stop();
      await _failPlayer.stop();
      await _finalPlayer.stop();
    } catch (_) {}
  }

  Future<void> dispose() async {
    try {
      await _successPlayer.dispose();
      await _failPlayer.dispose();
      await _finalPlayer.dispose();
    } catch (_) {}
  }
}
