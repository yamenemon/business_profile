class AboutMeModel {
  int age;
  String residence;
  String address;
  String email;
  String phone;
  String skype;

  AboutMeModel(
      {required this.age,
      required this.residence,
      required this.address,
      required this.email,
      required this.phone,
      required this.skype});

  factory AboutMeModel.fromJson(Map<String, dynamic> json) {
    return AboutMeModel(
      age: json['age'],
      residence: json['residence'],
      address: json['address'],
      email: json['email'],
      phone: json['phone'],
      skype: json['skype'],
    );
  }
}
