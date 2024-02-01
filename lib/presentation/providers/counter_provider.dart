import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier{
  int _x=0;
  int get x=>_x;
  void incerement(){
    _x++;
    notifyListeners();
    if(kDebugMode){
      print('current value of _x $_x');
    }
}
}