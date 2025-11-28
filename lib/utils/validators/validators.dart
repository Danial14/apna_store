class AppValidators{
  AppValidators._();
  static String? validateEmail(String? email){
    if(email == null || email.isEmpty){
      return "Email is required";
    }
    final emailRegex = RegExp(r"^[^\s@]+@[^\s@]+\.[^\s@]+$");
    if(!emailRegex.hasMatch(email)){
      return "Invalid email";
    }
    return null;
  }
  static String? validatePassword(String? password){
    if(password == null || password.isEmpty){
      return "Password is required";
    }
    else if(password.length < 6){
      return "Password must be at least 6 characters";
    }
    return null;
  }
  static String? validatePhoneNumber(String? phoneNumber){
    if(phoneNumber == null || phoneNumber.isEmpty){
      return "Phone number is required";
    }
    final phoneNumberRegex = RegExp(r"^\d{10}$");
    if(!phoneNumberRegex.hasMatch(phoneNumber)){
      return "Invalid phone number";
    }
    return null;
  }




}