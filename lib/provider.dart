import 'package:flutter/foundation.dart';

class SecondProvider with ChangeNotifier{
  double _value =1.0;
  int count=0;
  double get value => _value;
  void setValue (double val){
    _value =val;
    notifyListeners();
  }
  void addCount(){
    count++;
    notifyListeners();
  }

}