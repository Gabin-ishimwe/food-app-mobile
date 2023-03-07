import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_book_mobile/exceptions/sign_in_exception.dart';
import 'package:food_book_mobile/screens/home_screen.dart';
import 'package:food_book_mobile/screens/onboarding_screen.dart';
import 'package:food_book_mobile/screens/welcome_screen.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  // variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser; // user must be in streams

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => OnboardingScreen())
        : Get.offAll(() => HomeScreen());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => HomeScreen())
          : Get.offAll(() => OnboardingScreen());
    } on FirebaseAuthException catch (e) {
      final exception = SignInWithEmailAndPasswordException.code(e.code);
      print("Firebase exception " + exception.message);
      throw exception;
    } catch (_) {
      final exception = SignInWithEmailAndPasswordException();
      print("exception " + exception.message);
      throw exception;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final exception = SignInWithEmailAndPasswordException.code(e.code);
      print("Firebase exception " + exception.message);
      throw exception;
    } catch (_) {
      final exception = SignInWithEmailAndPasswordException();
      print("exception " + exception.message);
      throw exception;
    }
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
    } catch (e) {
      final exception = SignInWithEmailAndPasswordException();
      print("exception " + exception.message);
      throw exception;
    }
  }
}
