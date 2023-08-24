import 'package:counter_app_provider/Model/counter_model.dart';
import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  CounterModel myCounter = CounterModel(count: 0);

  void inctement() {
    myCounter.count++;
    notifyListeners();
  }

  void dectement() {
    myCounter.count--;
    notifyListeners();
  }

  void inctement2() {
    myCounter.count += 2;
    notifyListeners();
  }

  void dectement2() {
    myCounter.count -= 2;
    notifyListeners();
  }

  void inctement3() {
    myCounter.count += 3;
    notifyListeners();
  }

  void dectement3() {
    myCounter.count -= 3;
    notifyListeners();
  }

  void inctement4() {
    myCounter.count += 4;
    notifyListeners();
  }

  void dectement4() {
    myCounter.count -= 4;
    notifyListeners();
  }

  void multiplication2() {
    myCounter.count *= 2;
    notifyListeners();
  }

  void multiplication3() {
    myCounter.count *= 3;
    notifyListeners();
  }

  void multiplication4() {
    myCounter.count *= 4;
    notifyListeners();
  }

  void division2() {
    myCounter.count / 2;
    notifyListeners();
  }

  void division3() {
    myCounter.count / 3;
    notifyListeners();
  }

  void division4() {
    myCounter.count / 4;
    notifyListeners();
  }
}
