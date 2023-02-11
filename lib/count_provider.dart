


import 'package:flutter/cupertino.dart';

class count_provider with ChangeNotifier{
  int count = 120 ;

  int get get_count => count;

  int getcout(){
    return count;
  }

  void set_count(){
    count++;
    notifyListeners();
  }



}