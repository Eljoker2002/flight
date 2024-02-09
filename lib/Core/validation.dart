class ValidatorUtils {
  static String? id(String? value) {
    {
      if (value == null || value.trim().isEmpty) {
        return "ID required";
      }
      return null;
    }
  }

  static String? password(String? value) {
    {
      if (value!.isEmpty) {
        return 'Password required';
      } else if (value.trim().length < 6) {
        return 'Password is too weak';
      } else if (RegExp(
              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
          .hasMatch(value)) {
        return "Invalid Password";
      }
      return null;
    }
  }
}
