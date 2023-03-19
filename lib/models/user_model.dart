import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  String firstName;
  String lastName;
  String email;
  String password;
  String phoneNo;

  UserModel(
      {this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.phoneNo});

  toJson() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "password": password,
      "phoneNo": phoneNo
    };
  }

  // map user fetched from firestore to UserMode
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
        id: document.id,
        firstName: data['firstName'],
        lastName: data['lastName'],
        email: data['email'],
        password: data['password'],
        phoneNo: data['phoneNo']);
  }
}
