import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_book_mobile/models/user_model.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  final _db = FirebaseFirestore.instance;

  createUser(UserModel userModel) async {
    await _db
        .collection("user")
        .add(userModel.toJson())
        .whenComplete(() => printInfo(info: "User has been created"))
        .catchError((error) {
      printError(info: "Something went wrong !!!");
    });
  }

  Future<UserModel> getUserDetails(String email) async {
    final snapshot =
        await _db.collection("user").where("email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }

  Future<List<UserModel>> getAllUsers() async {
    final snapshot = await _db.collection("user").get();
    final userData =
        snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    return userData;
  }
}
