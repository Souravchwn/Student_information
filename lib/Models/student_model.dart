class StudentModel {
  final String? name;
  final int? age;
  final String? address;
  final double? height;

  StudentModel({this.name, this.age, this.address, this.height});
}

final List<StudentModel> student = [
  StudentModel(
      name: "sourav", address: "Dhaka,Bangladesh", age: 25, height: 183),
  StudentModel(
      name: "Imran", address: "Dhaka,Bangladesh", age: 25, height: 170),
  StudentModel(
      name: "Hamid", address: "Dhaka,Bangladesh", age: 25, height: 169),
  StudentModel(
      name: "Rahim", address: "Dhaka,Bangladesh", age: 20, height: 163),
  StudentModel(name: "Karim", address: "Dhaka,Bangladesh", age: 8, height: 163),
  StudentModel(
      name: "Belmatha", address: "Dhaka,Bangladesh", age: 8, height: 163),
  StudentModel(
      name: "Laddu", address: "Dhaka,Bangladesh", age: 20, height: 163),
  StudentModel(
      name: "Golla", address: "Dhaka,Bangladesh", age: 20, height: 163),
  StudentModel(name: "Abdul", address: "Dhaka,Bangladesh", age: 20, height: 163)
];
