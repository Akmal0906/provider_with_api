import 'package:flutter/material.dart';
import 'package:provider_with_api/presentation/providers/counter_listener_provider.dart';
class CounterValueScreen extends StatefulWidget {
  const CounterValueScreen({super.key});

  @override
  State<CounterValueScreen> createState() => _CounterValueScreenState();
}

class _CounterValueScreenState extends State<CounterValueScreen> {
  @override
  Widget build(BuildContext context) {
    CounterValueListenProvidr counterValueListenProvidr=CounterValueListenProvidr(0);
    return   Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ValueListenableBuilder(
              builder:
                  ( context, value, child) {
                return Center(
                  child: Text('current valur is ${value}'),
                );
              }, valueListenable: counterValueListenProvidr,
            ),
            TextButton(onPressed: (){
              counterValueListenProvidr.counterlistenIncrement();
            }, child: Text('Tap me'))
          ],
        ),
      ),
    );
  }
}
