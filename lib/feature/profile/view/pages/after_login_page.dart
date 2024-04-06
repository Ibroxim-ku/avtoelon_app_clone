import 'package:avto_elon_clone/feature/auth/view_model/login_controller.dart';
import 'package:avto_elon_clone/feature/chat/view/pages/with_admin_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AfterLogin extends ConsumerWidget {
  const AfterLogin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var con = ref.read(loginNotifier);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 233, 233),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 234, 233, 233),
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            con.controller.text == "+998"
                ? "Foydalanuchi"
                : con.controller.text,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Row(
              children: [
                Icon(
                  Icons.settings_outlined,
                  color: Colors.blue[300],
                ),
                const SizedBox(
                  width: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    "Sozlamalar",
                    style: TextStyle(
                      color: Colors.blue[500],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Card(
                elevation: 0,
                color: const Color.fromARGB(255, 254, 248, 248),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: const Text(
                          "Avtoelon.uz hisobi",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: Image.asset(
                                    "assets/icons/hisob_raqam_icon.png"),
                              ),
                              const Text(" 0 so'm"),
                            ],
                          ),
                        ),
                        trailing: MaterialButton(
                          height: 50,
                          elevation: 0,
                          color: const Color.fromARGB(255, 218, 226, 243),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "To'ldirish",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      const Divider(),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const AdminChatPage(),
                            ),
                          );
                        },
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          radius: 14,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                            child:
                                Image.asset("assets/icons/logo_avtoelon.png"),
                          ),
                        ),
                        title: const Text("Avtoelon| Admin"),
                        trailing: const Icon(Icons.navigate_next),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Mening e'lonlarim",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Sizda hali hech qanday faol E'lon yo'q",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: CupertinoButton(
                color: Colors.blue,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_box_outlined),
                    Text(" Elon joylashtirish"),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            const Spacer(),
            const Column(
              children: [
                Text(
                  "avtoelon.uz",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "24.3.4(276)versiyasi",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
