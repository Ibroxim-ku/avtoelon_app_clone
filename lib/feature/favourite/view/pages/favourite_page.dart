import 'package:avto_elon_clone/feature/favourite/view/widgets/announcement.dart';
import 'package:avto_elon_clone/feature/favourite/view/widgets/search_page.dart';
import 'package:avto_elon_clone/feature/favourite/view_model/favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouritePage extends ConsumerWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> pages = const [Announcement(), SearchPage()];
    ref.watch(favouriteNotifier);
    var con = ref.read(favouriteNotifier);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: false,
              title: const Text(
                "Saqlangan",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              expandedHeight: 120,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const Spacer(),
                      Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: Color.fromARGB(255, 234, 234, 234),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            2,
                            (index) {
                              return Padding(
                                padding: const EdgeInsets.all(2),
                                child: GestureDetector(
                                  onTap: () {
                                    con.isChanged(index);
                                  },
                                  child: AnimatedContainer(
                                    width: 190,
                                    duration: const Duration(milliseconds: 300),
                                    decoration: BoxDecoration(
                                      color: con.currentIndex == index
                                          ? Colors.white
                                          : const Color.fromARGB(
                                              255, 234, 234, 234),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                          index == 0 ? "E'lonlar" : "Poisk"),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: DefaultTabController(
                  initialIndex: con.currentIndex,
                  length: pages.length,
                  child: PageView(
                    onPageChanged: (value) {
                      con.isChanged(value);
                    },
                    children: pages,
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
