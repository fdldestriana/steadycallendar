import 'package:flutter/material.dart';
import 'package:steadycallendar/screens/cal_pager/cal_pager.dart';
import 'package:steadycallendar/screens/login_options/login_options.dart';
import './screens/intro/intro.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steady Calendar',
      initialRoute: Intro.routeName,
      routes: {
        // Splash.routeName: (context) => const Splash(),
        CalPager.routeName: (context) => const CalPager(),
        Intro.routeName: (context) => const Intro(),
        LoginOptions.routeName: (context) => const LoginOptions(),
      },
    );
  }
}
