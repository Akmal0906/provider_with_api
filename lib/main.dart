import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_with_api/presentation/providers/counter_provider.dart';
import 'package:provider_with_api/presentation/providers/user_provider.dart';
import 'package:provider_with_api/presentation/view/counter_screen.dart';
import 'package:provider_with_api/presentation/view/counter_valuenotifier_screen.dart';
import 'package:provider_with_api/presentation/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>UserProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

