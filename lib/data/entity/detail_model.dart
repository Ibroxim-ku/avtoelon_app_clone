class DetailModel {
  String name;
  List<String> pictures;
  String price;
  String year;
  String fuel;
  String locaton;
  String info;
  String yurgani;
  bool isLiked = false;

  DetailModel(
    this.isLiked, {
    required this.name,
    required this.pictures,
    required this.price,
    required this.year,
    required this.fuel,
    required this.locaton,
    required this.info,
    required this.yurgani,
  });
}

List<DetailModel> details = [
  DetailModel(
    false,
    name: "Gentra 3",
    pictures: ["assets/images/images.jpeg"],
    price: "13800",
    year: "2019",
    fuel: "benzin",
    locaton: "Namanga",
    info: "Yili 2019 benzintalik karopka motor zòr. Kelishiladi",
    yurgani: "88 000",
  ),
  DetailModel(
    false,
    name: "Nexia 3",
    pictures: ["assets/images/nexia_3.jpg"],
    price: "10 000",
    year: "2022",
    fuel: "benzin",
    locaton: "Toshkent",
    info: "Yili 2020 benzintalik karopka motor zòr. Kelishiladi",
    yurgani: "40 000",
  ),
  DetailModel(
    false,
    name: "Gentra",
    pictures: ["assets/images/images.jpeg"],
    price: "13800",
    year: "2019",
    fuel: "benzin",
    locaton: "Namanga",
    info: "Yili 2019 benzintalik karopka motor zòr. Kelishiladi",
    yurgani: "88 000",
  ),
  DetailModel(
    false,
    name: "Nexia 3",
    pictures: ["assets/images/nexia.jpeg"],
    price: "10 000",
    year: "2022",
    fuel: "benzin",
    locaton: "Toshkent",
    info: "Yili 2020 benzintalik karopka motor zòr. Kelishiladi",
    yurgani: "40 000",
  ),
  DetailModel(
    false,
    name: "Gentra",
    pictures: ["assets/images/images.jpeg"],
    price: "13800",
    year: "2019",
    fuel: "benzin",
    locaton: "Namanga",
    info: "Yili 2019 benzintalik karopka motor zòr. Kelishiladi",
    yurgani: "88 000",
  ),
  DetailModel(
    false,
    name: "Nexia 3",
    pictures: ["assets/images/nexia.jpeg"],
    price: "10 000",
    year: "2022",
    fuel: "benzin",
    locaton: "Toshkent",
    info: "Yili 2020 benzintalik karopka motor zòr. Kelishiladi",
    yurgani: "40 000",
  ),
];
