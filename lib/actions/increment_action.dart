import 'package:async_redux/async_redux.dart';

class IncrementAction extends ReduxAction<int>{
  final int amount;

  IncrementAction({this.amount}) : assert(amount != null);

  @override
  int reduce() {
    return state + amount;
  }
}