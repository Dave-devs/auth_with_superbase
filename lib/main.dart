import 'package:auth_with_superbase/screens/account_page.dart';
import 'package:auth_with_superbase/screens/sign_in_page.dart';
import 'package:auth_with_superbase/screens/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://gyomhwqgbfyrsrdxkooc.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imd5b21od3FnYmZ5cnNyZHhrb29jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDc5NDMyMjQsImV4cCI6MjAyMzUxOTIyNH0.BKpcrLiPhQkz68nSPVaM8UN_kEFL-z6Mw30zzt-RjZE',
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Authentication',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const SignInPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}
