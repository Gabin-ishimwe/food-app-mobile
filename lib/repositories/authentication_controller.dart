import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_book_mobile/exceptions/sign_in_exception.dart';
import 'package:food_book_mobile/screens/checkout_screen.dart';
import 'package:food_book_mobile/screens/home_screen.dart';
import 'package:food_book_mobile/screens/onboarding_screen.dart';
import 'package:food_book_mobile/screens/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepository extends GetxController {
  // variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser; // user must be in streams

  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? user;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        // ? Get.offAll(() => OnboardingScreen())
        ? Get.offAll(() => CheckoutScreen())
        : Get.offAll(() => HomeScreen());
  }

  Future<UserCredential> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      // firebaseUser.value != null
      //     ? Get.offAll(() => HomeScreen())return
      //     : Get.offAll(() => OnboardingScreen());
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

  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
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
      await googleSignIn.signOut();
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      throw e;
    } catch (e) {
      final exception = SignInWithEmailAndPasswordException();
      print("exception " + exception.message);
      throw exception;
    }
  }

  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return null;
      // user has selected their account
      user = googleUser;
      final googleAuth = await googleUser.authentication;

      final credentials = GoogleAuthProvider.credential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

      return await _auth.signInWithCredential(credentials);
    } catch (e) {
      throw e;
    }
  }

  // Future googleLogout() async {
  //   try {
  //     await googleSignIn.signOut();
  //     await _auth.signOut();
  //   } catch
  // }
}
