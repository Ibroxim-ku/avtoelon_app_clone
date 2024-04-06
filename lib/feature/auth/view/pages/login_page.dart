import 'package:avto_elon_clone/feature/auth/view/pages/confirm_code.dart';
import 'package:avto_elon_clone/feature/auth/view_model/login_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(loginNotifier);
    var con = ref.read(loginNotifier);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text(
          " Shaxsiy kabinet",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                "avtoelon.uz",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 52,
              width: double.maxFinite,
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: con.controller,
                focusNode: con.textFocusNode,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.maxFinite,
              child: CupertinoButton(
                color:
                    con.clickButtonEnabled ? Colors.blue : Colors.grey[400],
                onPressed: con.clickButtonEnabled
                    ? () {
                        // if (con.controller.text.isEmpty ||
                        //     con.controller.text.length < 9) {
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(
                        //       backgroundColor: Colors.blue,
                        //       content: Text(
                        //         "Telefon raqamda xatolik bor",
                        //         style: TextStyle(color: Colors.white),
                        //       ),
                        //     ),
                        //   );
                        // } else {
                        //   Navigator.push(
                        //     context,
                        //     CupertinoPageRoute(
                        //       builder: (context) => const ConfirmCode(),
                        //     ),
                        //   );
                        // }
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const ConfirmCode(),
                          ),
                        );
                      }
                    : null,
                child: Text(
                  "Davom ettirish",
                  style: TextStyle(
                    color:
                        con.clickButtonEnabled ? Colors.white : Colors.grey,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Column(
              children: [
                const Text("Avtorizatsiya davom etsangiz"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "ushbu qoidalarga",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    const Text("  rozilik bildirasiz"),
                  ],
                ),
              ],
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
