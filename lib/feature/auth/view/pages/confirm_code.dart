import 'package:avto_elon_clone/feature/auth/view_model/login_controller.dart';
import 'package:avto_elon_clone/feature/auth/view_model/verify_controller.dart';
import 'package:avto_elon_clone/feature/main/view/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfirmCode extends ConsumerWidget {
  const ConfirmCode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var otpCon = ref.watch(otpTimerProvider);
    var con = ref.read(loginNotifier);
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text(
          " Raqamni tasdiqlash",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "SMS kodni kiriting",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 40,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  con.controller.text,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const Text(
                  " raqamga kod jo`natildi",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: otpCon == 0
                  ? TextButton(
                      onPressed: () {},
                      child: const Text("Qayta yuborish"),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("00:$otpCon soniayda qayta yuborish"),
                      ],
                    ),
            ),
            const Spacer(),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: CupertinoButton(
                color: Colors.blue,
                child: const Text("Davom etish"),
                onPressed: () {
                  con.isRegister = !con.isRegister;
                  Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                      (route) => false);
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
