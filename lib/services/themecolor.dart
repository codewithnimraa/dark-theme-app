import 'package:stacked/stacked.dart';

class ThemeProvider extends BaseViewModel {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;
  changetoggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
