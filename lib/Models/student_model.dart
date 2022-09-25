class StudentModel {
  final String? name;
  final int? age;
  final String? address;
  final double? height;

  StudentModel({this.name, this.age, this.address, this.height});
}

final List<StudentModel> student = [
  StudentModel(
    name: "sourav",
    address: "Dhaka,Bangladesh",
    age: 25,
    height: 183
  ),
  StudentModel(
    name: "Imran",
    address: "Dhaka,Bangladesh",
    age: 25,
    height: 170
  ),
  StudentModel(
    name: "Hamid",
    address: "Dhaka,Bangladesh",
    age: 25,
    height: 169
  ),StudentModel(
    name: "Rahim",
    address: "Dhaka,Bangladesh",
    age: 20,
    height: 163
  )
];

