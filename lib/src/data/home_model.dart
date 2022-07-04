class HomeModel {
  String name;
  int medicalRecord;
  int age;

  HomeModel({
    this.name,
    this.medicalRecord,
    this.age,
  });

  HomeModel.fromJson(Map<String, dynamic> homeMap) {
    this.name = homeMap['favorite']['patients'][1]['name'];
    this.medicalRecord = homeMap['favorite']['patients'][1]['medicalRecord'];
    this.age = homeMap['favorite']['patients'][1]['age'];
  }
}
