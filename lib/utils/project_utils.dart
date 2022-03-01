import 'package:first_demo_app/utils/constants.dart';

class ProjectUtils {

  static String? passwordValidate(value) {
    if (value.isEmpty) {
      return "Required";
    } else if (value.trim().length <= 3) {
      return "Invalid Password";
    } else {
      return null;
    }
  }

  static String? validateMobile(value) {
    if (value.isEmpty) {
      return "Required";
    } else if (value.trim().length < 10) {
      return "Invalid Mobile Number";
    } else {
      return null;
    }
  }

  static String? validateUsername(value) {
    if (value.isEmpty || value.toString().trim() == "") {
      return "Username required";
    } /*else if(!RegExp(Constants.USER_NAME_REG_EXP).hasMatch(value.toString().trim())) {
      return "Please enter valid username.";
    }*/
    return null;
  }

  static String? validateEmail(value) {
    if (value.isEmpty) {
      return "Email required";
    } else if (!RegExp(Constants.EMAIL_REG_EXP)
        .hasMatch(value.toString().trim())) {
      return "Please enter valid email.";
    }
    return null;
  }

  static String? validateAddress(value) {
    if (value.isEmpty) {
      return "Address required";
    }
    return null;
  }
}
