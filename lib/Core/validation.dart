class ValidatorUtils {
  static String? id(String? value) {
    {
      if (value == null || value.trim().isEmpty) {
        return "ID required";
      } else if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value)) {
        return "Invalid ID";
      }
      return null;
    }
  }

  static String? idSignin(String? value) {
    {
      if (value == null || value.trim().isEmpty) {
        return "ID required";
      }
      return "";
    }
  }

  static String? passwordSignin(String? value) {
    {
      if (value == null || value.trim().isEmpty) {
        return "Password required";
      }
      return "";
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
