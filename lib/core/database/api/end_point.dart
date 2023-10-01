class EndPoint {
  static const String baseUrl = 'https://food-api-omega.vercel.app/api/v1/';
  static const String chefSingIn = 'chef/signin';
  static const String chefSingUp = 'chef/signup';
  static const String chefChangePassword = 'chef/change-password';
  static const String changeForgottenPassword =
      'chef/change-forgotten-password';
  static const String chefDelete = 'chef/delete';
  static const String chefGet = 'chef/get-chef/';
  static const String sendCode = 'chef/send-code';
  static const String updateChef = 'chef/update';
  static const String logout = 'chef/logout';
  static const String addMeal = 'chef/update-meal/';
  static const String updateMeal = 'meal/add-to-menu';
  static String getCefDataEndPoint(id){
    return '$chefGet$id';
  }
   static String getUpdateEndPoint(id){
    return '$updateMeal$id';
  }
}
