import 'package:flutter/material.dart';
import 'package:unit_converter_app/category_screen.dart';

// TODO: Pass this information into your custom [Category] widget


/// The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}

/// This widget is the root of our application.
/// Currently, we just show one widget in our app.
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: CategoryScreen(),
    );
  }
}