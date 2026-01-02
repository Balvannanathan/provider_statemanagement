import 'package:provider_statemanagement/Pages/CounterScreen/CounterScreenModel.dart';

class CounterScreenVM extends CounterScreenModel {
  void increment() {
    setCount(count + 1);
    print(count);
  }

  void decrement() {
    setCount(count - 1);
    print(count);
  }
}
