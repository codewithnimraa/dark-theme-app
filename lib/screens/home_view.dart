import 'package:darkthemeapp/screens/home_viewmodel.dart';
import 'package:darkthemeapp/services/themecolor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
                title: const Center(
              child: Text('Dark Theme App'),
            )),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome to Dark Theme App!',
                    style: TextStyle(fontSize: 30),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                      icon: const Icon(Icons.lightbulb),
                      onPressed: () {
                        Provider.of<ThemeProvider>(context, listen: false)
                            .changetoggleTheme();
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
