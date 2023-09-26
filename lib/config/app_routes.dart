
import 'package:project_1/pages/edit_profile_page.dart';
import 'package:project_1/pages/login_page.dart';
import 'package:project_1/pages/main_page.dart';
import 'package:project_1/pages/nearby_page.dart';
import 'package:project_1/pages/test_states.dart';

class Routes {

  static const login = '/login';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/editprofile';
  static const mapPage = '/map';


  static final pages = {
    '/':(context) => LoginPage(),
    Routes.home:(context) => TestState(),
    Routes.main:(context)=> MainPage(),
    Routes.editProfile: (context) => EditProfilePage(),
    Routes.mapPage: (context) => NearbyPage(),
  };


}