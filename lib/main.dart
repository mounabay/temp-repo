import 'package:flutter/material.dart';
import 'package:loginpd/src/features/authentification/screens/on_boarding/on_boarding_screen.dart';
import 'package:loginpd/src/utils/theme/theme.dart';
import 'package:get/get.dart'; // import GetX package
import 'src/features/authentification/screens/splash_screen/splash_screen.dart';

void main() => runApp(const App());


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner:false,
      home: SplashScreen(),
    );
  }
}
