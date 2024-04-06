import 'package:avto_elon_clone/feature/auth/view/pages/login_page.dart';
import 'package:avto_elon_clone/feature/chat/view/pages/with_admin_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 233, 233),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 234, 233, 233),
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            "Kabinet",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
              height: 118,
              child: Card(
                elevation: 0,
                color: const Color.fromARGB(255, 254, 248, 248),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Shaxsiy kabinetga kiring",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          ),
                          child: const Text(
                            "Telefon raqam orqali tizimga kiring",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.maxFinite,
              height: 64,
              child: Card(
                elevation: 0,
                color: const Color.fromARGB(255, 254, 248, 248),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const AdminChatPage(),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    radius: 14,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: Image.asset("assets/icons/logo_avtoelon.png"),
                    ),
                  ),
                  title: const Text("Avtoelon| Admin"),
                  trailing: const Icon(Icons.navigate_next),
                ),
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
