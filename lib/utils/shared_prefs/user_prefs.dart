import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences{
  static SharedPreferences _preferences;
  static const _keyFName = 'fName';
  static const _keyLName = 'lName';
  static const _keyEmail = 'email';
  // static const _keyPassword = 'pwd';

  static const _keyCredential = 'cred';


  static Future init() async{
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setProfileData({String fName, String lName, String email,}) async{
    await _preferences.setString(_keyFName, fName);
    await _preferences.setString(_keyLName, lName);
    await _preferences.setString(_keyEmail, email);
    // await _preferences.setString(_keyPhoneNum, phoneNum);
  }

  static String getFName() {
    return _preferences.getString(_keyFName);
  }
  static String getLName() {
    return _preferences.getString(_keyLName);
  }
  static String getEmail() {
   return  _preferences.getString(_keyEmail);
  }
  // static String getPwd() {
  //   return _preferences.getString(_keyPassword);
  // }

  //Save User Credential To Local Storage
  static Future setUserCredential({UserCredential credential}) async{
    await _preferences.setString(_keyCredential, credential.user.uid);
  }

  static String getUserCredentialUid() {
    return _preferences.getString(_keyCredential);
  }
}