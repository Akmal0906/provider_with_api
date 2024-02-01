import 'package:flutter/cupertino.dart';

class CounterValueListenProvidr extends ValueNotifier{
  CounterValueListenProvidr(super.value);

void counterlistenIncrement(){
  value++;
}
}