class user{
  static String? userName='Rajesh';
  static String? password='12345';

  static bool login(String uname,String pass){
    if(uname==userName&&pass==password){
      return true;
    }
    return false;
  }
  static bool logout(String uname,String pass){
    print("Logout successful");
    return false;
  }
}