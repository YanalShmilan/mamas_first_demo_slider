import 'package:flutter/material.dart';
import 'package:mamas_first_slider_demo/components/fashionista_slider.dart';
import 'package:mamas_first_slider_demo/providers/fashionista_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FashionistaProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("App"),
            ),
            body: FashionistaSlider()),
      ),
    );
  }
}
