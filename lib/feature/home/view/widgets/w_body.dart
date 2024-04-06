import 'package:avto_elon_clone/data/entity/detail_model.dart';
import 'package:avto_elon_clone/feature/detail_page/view/detail_page.dart';
import 'package:avto_elon_clone/feature/home/view_model/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WBody extends ConsumerWidget {
  const WBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(homeController);
    var con = ref.read(homeController);
    return SliverList.separated(
      itemCount: details.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => DetailPage(
                  model: details[index],
                ),
              ),
            );
          },

          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      details[index].name,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue[400],
                      ),
                    ),
                    subtitle: Text(
                      "~ ${details[index].price} y.e",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    trailing: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        con.onTapLiked(index);
                      },
                      icon: details[index].isLiked
                          ? Icon(
                              CupertinoIcons.heart_fill,
                              color: Colors.blue[400],
                            )
                          : Icon(
                              CupertinoIcons.heart,
                              color: Colors.blue[400],
                            ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 120,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          child: Image.asset(
                            fit: BoxFit.fitWidth,
                            details[index].pictures[0],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.calendar_month),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                details[index].year,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.speed),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                details[index].yurgani,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.offline_bolt_sharp),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                details[index].fuel,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_on),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                details[index].locaton,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text("03 aprel"),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          color: const Color.fromARGB(255, 238, 238, 238),
          height: 10,
          width: double.maxFinite,
        );
      },
    );
  }
}
