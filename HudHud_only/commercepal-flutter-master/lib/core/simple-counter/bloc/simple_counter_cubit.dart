import 'dart:async';

import 'package:bloc/bloc.dart';

class SimpleCounterCubit extends Cubit<int> {
  Timer? _timer;

  SimpleCounterCubit(): super(0);

  void startCount(int seconds) async {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
        if( seconds <= 0 ){
          _timer?.cancel();
        }else{
          emit(seconds--);
        }
    });
  }
}
