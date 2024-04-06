import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final otpTimerProvider = StateNotifierProvider<OTPTimerNotifier, int>((ref) {
  return OTPTimerNotifier();
});

class OTPTimerNotifier extends StateNotifier<int> {
  late Timer _timer;

  OTPTimerNotifier() : super(5) {
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state > 0) {
        state--;
      } else {
        timer.cancel();
      }
    });
  }

  void resendOTP() {
    state = 5;
    startTimer();
    // Bu joyda xabar yuborish funktsiyasi yoziladi
    print("OTP qayta yuborildi");
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
