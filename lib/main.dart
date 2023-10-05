import 'package:asc_test/pages/home_page.dart';
import 'package:asc_test/pages/login_page.dart';
import 'package:asc_test/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/navigation/navigation_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => NavigationBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' : (context) => const StartPage(),
        '/login' : (context) => const LoginPage(),
        '/home' : (context) => const HomePage(),
      },
    );
  }
}
