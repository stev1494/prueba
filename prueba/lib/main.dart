import 'package:flutter/material.dart';
import 'package:prueba/ui/principal.dart';
import 'package:prueba/data/covid_provider.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_) => CovidCurrentProvider() )
      ],
          child: MaterialApp(
        title: 'Covid - Current Data',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PrincipalPage(),
      ),
    );
  }
}
