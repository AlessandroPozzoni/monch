class MonchFirebaseAuthException implements Exception {
  final String code;

  MonchFirebaseAuthException(this.code);

  String get message {
    switch(code) {
      case 'email-already-in-use':
        return 'The email address is already in use. Please use a different email.';
      default:
        return 'Oops, something went wrong.';
    }
  }
}