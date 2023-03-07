class SignInWithEmailAndPasswordException {
  final String message;

  SignInWithEmailAndPasswordException(
      {this.message = "An unknow error occured"});

  factory SignInWithEmailAndPasswordException.code(String code) {
    switch (code) {
      case 'email-already-in-use':
        return SignInWithEmailAndPasswordException(
            message: "User arleady exists with given email address");
      case 'invalid-email':
        return SignInWithEmailAndPasswordException(message: "Invalid email");
      case 'operation-not-allowed':
        return SignInWithEmailAndPasswordException(
            message: "Operation email/password not enabled");
      case 'weak-password':
        return SignInWithEmailAndPasswordException(
            message: "Password is not strong enough");
      default:
        return SignInWithEmailAndPasswordException();
    }
  }
}
