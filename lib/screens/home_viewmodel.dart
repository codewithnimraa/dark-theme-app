// import 'package:darkthemeapp/services/themecolor.dart';
import 'package:darkthemeapp/services/themecolor.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final themeProvider = ThemeProvider();

  // ThemeProvider obj = ThemeProvider();

  // bool get isDarkMode => obj.isDarkMode;

  homeChangeFunction() {
    themeProvider.changetoggleTheme();
    rebuildUi();
    // obj.changetoggleTheme();
    // rebuildUi();
  }
}
