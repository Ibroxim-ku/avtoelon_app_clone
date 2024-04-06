import 'package:avto_elon_clone/feature/add_detail.dart';
import 'package:avto_elon_clone/feature/auth/view_model/login_controller.dart';
import 'package:avto_elon_clone/feature/chat/view/pages/chat_page.dart';
import 'package:avto_elon_clone/feature/favourite/view/pages/favourite_page.dart';
import 'package:avto_elon_clone/feature/home/view/pages/home_page.dart';
import 'package:avto_elon_clone/feature/main/view_model/main_page_controller.dart';
import 'package:avto_elon_clone/feature/profile/view/pages/after_login_page.dart';
import 'package:avto_elon_clone/feature/profile/view/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(mainNotifier);
    var con = ref.read(mainNotifier);
    var conLog = ref.read(loginNotifier);
    List<Widget> pages = [
      const HomePage(),
      const FavouritePage(),
      const ChatPage(),
      const ChatPage(),
      conLog.isRegister ? const AfterLogin() : const ProfilePage(),
    ];
    return Scaffold(
      body: IndexedStack(
        index: con.currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(25, 17, 121, 0.10),
              blurRadius: 12,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Stack(
          children: [
            BottomNavigationBar(
              currentIndex: con.currentIndex,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              onTap: (value) {
                con.onTap(value);
              },
              items: [
                BottomNavigationBarItem(
                  label: "Avtoelon.uz",
                  icon: con.currentIndex == 0
                      ? const Icon(Icons.home)
                      : const Icon(Icons.home_outlined),
                ),
                BottomNavigationBarItem(
                  label: "Saqlagan",
                  icon: con.currentIndex == 1
                      ? const Icon(CupertinoIcons.heart_solid)
                      : const Icon(CupertinoIcons.heart),
                ),
                BottomNavigationBarItem(
                  label: "Sotish",
                  icon: SizedBox(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const AddDetail(),
                          ),
                        );
                      },
                      child: Container(
                        color: Colors.blue[300],
                        child: const Icon(
                          CupertinoIcons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Chat",
                  icon: con.currentIndex == 3
                      ? const Icon(Icons.send)
                      : const Icon(Icons.send_outlined),
                ),
                BottomNavigationBarItem(
                  label: "kabinet",
                  icon: con.currentIndex == 4
                      ? const Icon(Icons.person)
                      : const Icon(CupertinoIcons.profile_circled),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
