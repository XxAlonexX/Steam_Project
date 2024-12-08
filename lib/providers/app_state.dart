import 'package:flutter/foundation.dart';

class AppState with ChangeNotifier {
  bool _isLoading = false;
  String _selectedCategory = 'Featured';
  List<Map<String, dynamic>> _games = [];
  List<String> _wishlist = [];
  Map<String, dynamic>? _selectedGame;
  
  bool get isLoading => _isLoading;
  String get selectedCategory => _selectedCategory;
  List<Map<String, dynamic>> get games => _games;
  List<String> get wishlist => _wishlist;
  Map<String, dynamic>? get selectedGame => _selectedGame;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void setSelectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void setGames(List<Map<String, dynamic>> games) {
    _games = games;
    notifyListeners();
  }

  void toggleWishlist(String gameId) {
    if (_wishlist.contains(gameId)) {
      _wishlist.remove(gameId);
    } else {
      _wishlist.add(gameId);
    }
    notifyListeners();
  }

  void setSelectedGame(Map<String, dynamic>? game) {
    _selectedGame = game;
    notifyListeners();
  }
}
