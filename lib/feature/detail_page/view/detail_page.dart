import 'package:avto_elon_clone/data/entity/detail_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final DetailModel model;
  const DetailPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    List<String> textLeft = [
      "Shahar",
      "Dvigetel hajmi,l",
      "Uzatish qutisi",
      "Rangi",
      "Kraska holati",
      "Uzatma",
    ];

    List<String> textRight = [
      "Tashkent",
      "1(Elektr)",
      "Avtomat",
      "Qora",
      "Kraska toza",
      "Oldi",
    ];
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
        title: Text(
          model.name,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: Colors.blue[300],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.heart,
              color: Colors.blue[300],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            child: Image.asset(
              fit: BoxFit.fitWidth,
              model.pictures[0],
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${model.name} ${model.year} yil",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "${model.price} y.e",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10,
            color: const Color.fromARGB(255, 234, 234, 234),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          textLeft.length,
                          (index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Text(
                                textLeft[index],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 90),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          textLeft.length,
                          (index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Text(
                                textRight[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: CupertinoButton(
                      color: const Color.fromARGB(255, 199, 226, 248),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_outlined,
                            color: Colors.blue[600],
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            " Sotuvchiga qo'ng'iroq qilish",
                            style: TextStyle(
                              color: Colors.blue[600],
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10,
            color: const Color.fromARGB(255, 234, 234, 234),
          ),
          SizedBox(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              leading: Icon(
                Icons.share,
                color: Colors.blue[300],
              ),
              title: Text(
                "ushbu e'lonni yuborish",
                style: TextStyle(
                  color: Colors.blue[600],
                ),
              ),
              trailing: Icon(
                CupertinoIcons.arrow_right,
                color: Colors.blue[300],
              ),
            ),
          ),
          Container(
            height: 10,
            color: const Color.fromARGB(255, 234, 234, 234),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sotuvchidan ma'lumot",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(model.info),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height: 48,
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: CupertinoButton(
                  padding: const EdgeInsets.only(top: 4, bottom: 4, left: 16),
                  color: Colors.blue,
                  child: const Row(
                    children: [
                      Icon(Icons.send),
                      Text(
                        "Chat",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: CupertinoButton(
                  padding: const EdgeInsets.only(top: 4, bottom: 4, left: 20),
                  color: Colors.green,
                  child: const Row(
                    children: [
                      Icon(Icons.phone),
                      Text(
                        "Qo'ng'iroq qilish",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
