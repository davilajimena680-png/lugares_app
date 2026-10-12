import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() => runApp(const LugaresApp());

class LugaresApp extends StatelessWidget {
  const LugaresApp({super.key});

  @override
  Widget build(BuildContext context) {
    const teal = Color(0xFF00796B);
    return MaterialApp(
      title: 'Rutas Bonitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: teal,
          secondary: const Color(0xFFFF7043),    
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F9F8),
        appBarTheme: const AppBarTheme(
          backgroundColor: teal,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
