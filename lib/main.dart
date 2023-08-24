import 'package:flutter/material.dart';
import 'package:hotel_project/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugShowCheckedModeBanner:
  false;
  await Supabase.initialize(
    url: 'https://lcotzphrhnuetkcblvln.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxjb3R6cGhyaG51ZXRrY2JsdmxuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTI4NjQ2NDAsImV4cCI6MjAwODQ0MDY0MH0.6fpKdlaneJE-fY3pJToSJ2QIYu1RkNELwVyDBKghVTk',
  );
  runApp(const App());
}
