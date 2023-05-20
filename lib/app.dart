import 'package:flutter/material.dart';
import 'package:pokedex_program/Provider/pokedex_provider.dart';
import 'package:pokedex_program/Screens/home_page.dart';
import 'package:pokedex_program/Screens/splash.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Pokedex(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
   initialRoute: "/",
        routes: {
          "/": (context) => const SplashScreen(),
          "home_page": (context) => const HomePage()
        },
      ),
    );
  }
}
