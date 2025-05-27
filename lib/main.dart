import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/views/home_view.dart';
import 'package:store_app/views/update_product_view.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        UpdateProductView.id:(context)=>UpdateProductView(),
        HomeView.id : (context) => HomeView()},
      initialRoute: HomeView.id,
    );
  }
}
