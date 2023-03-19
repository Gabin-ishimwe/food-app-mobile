import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_book_mobile/models/user_model.dart';
import 'package:food_book_mobile/repositories/authentication_controller.dart';
import 'package:food_book_mobile/repositories/user_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';

class AuthController extends GetxController {
  // static method to get signUpController
  static AuthController get instance => Get.find();

  // textFielController to get data from textField
  final firstNameController = TextEditingController();
  final lastNameContoller = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();

  final authRepository = Get.put(AuthenticationRepository());

  final userRepository = Get.put(UserRepository());

  Future<UserCredential> userSignIn(String email, String password) async {
    try {
      return await authRepository.loginWithEmailAndPassword(email, password);
    } catch (e) {
      printError(info: "Login error---------------------------");
      print(e);
      throw e;
    }
  }

  Future<Object> registerWithemailAndPassword(
      String email, String password) async {
    try {
      return await authRepository.createUserWithEmailAndPassword(
          email, password);
    } catch (e) {
      printError(info: "Register Error--------------------");
      print(e);
      throw e;
    }
  }

  createUser(UserModel userModel) async {
    await userRepository.createUser(userModel);
    registerWithemailAndPassword(userModel.email, userModel.password);
  }

  void userLogout() {
    authRepository.logout();
  }
}
