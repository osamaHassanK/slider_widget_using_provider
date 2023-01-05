import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_widget_using_provider/Screen.dart';
import 'package:slider_widget_using_provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> SecondProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SecondScreen(),
        // home:NewScreen(),
      ),
    );
  }
}
