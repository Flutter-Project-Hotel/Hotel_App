import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    getCourses() async {
      final supabase = Supabase.instance.client;
      List hotels = await supabase.from('hotel').select();

      print(hotels[0]);
      return hotels;
    }

    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: FutureBuilder(
            future: getCourses(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('${snapshot.data?.first}');
              } else {
                return Text("data");
              }

              //Or with spesific attrubute
              // return Text('${snapshot.data?.data['name']}');
            }),
      ),
    ));
  }
}
