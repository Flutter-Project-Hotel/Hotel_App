import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hotel_project/pages/auth/Login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:hotel_project/services/supabase.dart';
import 'package:hotel_project/pages/home_page.dart';
// import 'package:hotel_project/pages/auth/login_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool canGoHome = false;
  StreamSubscription? listen;

  @override
  void initState() {
    SupabaseService.client.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      if (event == AuthChangeEvent.signedIn) {
        canGoHome = true;
        setState(() {});
      }

      if (event == AuthChangeEvent.signedOut) {
        canGoHome = false;
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: canGoHome ? const HomePage() : const LoginPage(),
        ),
      ),
    );
  }
}
