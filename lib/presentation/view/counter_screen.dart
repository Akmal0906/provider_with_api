import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_with_api/presentation/providers/counter_provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Consumer<CounterProvider>(
              builder:
                  (BuildContext context, CounterProvider value, Widget? child) {
                return Center(
                  child: Text('current valur is ${value.x}'),
                );
                  },
            ),
            TextButton(onPressed: (){
              context.read<CounterProvider>().incerement();
            }, child: Text('Tap me'))
          ],
        ),
      ),
    );
  }
}
