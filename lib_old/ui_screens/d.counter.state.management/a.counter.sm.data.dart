import 'package:states_rebuilder/scr/state_management/rm.dart';

final rxNumber = counterSmData.state.rxNumber;
final rxNumberAsync = counterSmData.state.rxNumberAsync;

final counterSmData = RM.inject(() => CounterSmData());

class CounterSmData {
  var rxNumber = RM.inject(() => 0);

  var rxNumberAsync = RM.injectFuture(() => Future.value(0));
}
