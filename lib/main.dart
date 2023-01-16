import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:orange/page/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        theme: ThemeData(
          primaryColor: Colors.orange,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.orange
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.orange
          )
        ),
        home: HomePage(),
      );
}
