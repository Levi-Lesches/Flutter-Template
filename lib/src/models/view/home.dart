import "../model.dart";

/// The view model for the home page.
class HomeModel extends ViewModel {
  /// The title of the app.
  final String title = "Home";

  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}
