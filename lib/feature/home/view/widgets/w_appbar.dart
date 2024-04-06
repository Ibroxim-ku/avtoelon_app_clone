import 'package:avto_elon_clone/feature/home/view_model/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WAppBar extends ConsumerWidget {
  const WAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(homeController);
    var con = ref.read(homeController);
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      floating: false,
      centerTitle: false,
      title: con.scrollLocation,
      expandedHeight: 540,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            const Spacer(),
            SizedBox(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: index == 0
                                ? Colors.blue
                                : const Color.fromARGB(255, 236, 242, 248),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 36,
                                width: 36,
                                child: index == 0
                                    ? const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )
                                    : Image.asset(
                                        con.categoriesItem[index],
                                      ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                con.categories[index],
                                style: TextStyle(
                                  color:
                                      index == 0 ? Colors.white : Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 238, 238, 238),
              height: 10,
              width: double.maxFinite,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kreditni",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              "hisoblash",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/images/image_gtr.jpeg",
                          height: 100,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 50,
                      child: CupertinoButton(
                        color: Colors.amber,
                        child: const Text(
                          "Kalkulyatorga o'tish",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              color: const Color.fromARGB(255, 238, 238, 238),
              height: 46,
              width: double.maxFinite,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Sizni qiziqtiradigan avtomobillar",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
