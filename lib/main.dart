import 'package:flutter/material.dart';
import 'package:hieuappe/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: orderappRouter().router.routeInformationParser,
      routerDelegate: orderappRouter().router.routerDelegate,
      routeInformationProvider:
          orderappRouter().router.routeInformationProvider,
    );
  }
}
