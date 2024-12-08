import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';
import 'providers/app_state.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppState()),
      ],
      child: const SteamStoreApp(),
    ),
  );
}

class SteamStoreApp extends StatelessWidget {
  const SteamStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steam Store Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF171a21),
        scaffoldBackgroundColor: const Color(0xFF1b2838),
        colorScheme: ColorScheme.dark(
          primary: const Color(0xFF171a21),
          secondary: Colors.blue[700]!,
          background: const Color(0xFF1b2838),
        ),
        textTheme: GoogleFonts.notoSansTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
