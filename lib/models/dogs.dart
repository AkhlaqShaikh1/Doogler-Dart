class Dogs {
  final String imgPath;
  final String name;
  final int age;
  final String hobbies;

  Dogs(
      {required this.imgPath,
      required this.name,
      required this.age,
      required this.hobbies});
}

List<Dogs> myDogs = [
  Dogs(
      imgPath: "assets/images/tzeitel.jpg",
      name: "Tzeitel",
      age: 7,
      hobbies: "subathing"),
  Dogs(
      imgPath: "assets/images/leroy.jpg",
      name: "Leroy",
      age: 4,
      hobbies: "sleeping in dangerous places"),
  Dogs(
      imgPath: "assets/images/frankie.jpg",
      name: "Frankie",
      age: 2,
      hobbies: "stealing socks"),
  Dogs(
      imgPath: "assets/images/nox.jpg",
      name: "Nox",
      age: 8,
      hobbies: "meeting new animals"),
  Dogs(
      imgPath: "assets/images/faye.jpg",
      name: "Faye",
      age: 8,
      hobbies: "Digging in the garden"),
  Dogs(
      imgPath: "assets/images/bella.jpg",
      name: "Bella",
      age: 14,
      hobbies: "Chasing sea foam"),
];
