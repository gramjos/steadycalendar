import 'package:flutter/material.dart';
import 'package:steadycalendar/screens/cal_pager/cal_pager.dart';
import 'package:steadycalendar/screens/intro/intro.dart';
import 'package:steadycalendar/screens/login_options/login_options.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stead Cal..',
      initialRoute: Intro.routeName,
      routes: {
        Intro.routeName: (context) => const Intro(),
        // Splash.routeName: (context) => const Splash(),
        LoginOptions.routeName: (context) => const LoginOptions(),
        CalPager.routeName: (context) => const CalPager()
      },
    );
  }
}
