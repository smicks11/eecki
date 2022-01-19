import 'package:eecki/utils/utils.dart';
import 'package:eecki/views/Onboarding/landing_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:statusbarz/statusbarz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'utils/shared_prefs/user_prefs.dart';
import 'views/customers/page_view_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await UserPreferences.init();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StatusbarzCapturer(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorObservers: [Statusbarz.instance.observer],
        title: 'Eecki',
        home: PageViewScreen(),
        // home: StreamBuilder(
        //   stream: FirebaseAuth.instance.authStateChanges(),
        //   builder: (ctx, snapshot) {
        //     if (snapshot.hasData) {
        //       print("User is signed In and holds its data");
        //       return LandingScreen();
        //     } else {
        //       print("User is not signed In and doesn't holds its data");
        //       return LandingScreen();
        //     }
        //   },
        // ),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Gilroy',
          scaffoldBackgroundColor: bgColor,
        ),
        // routes: {
        //   '/': (context) => const LandingScreen(),
        //   '/onBoard': (context) => const OnBoarding(),
        //   '/authFirstStep': (context) => const AuthOne(),
        //   '/authSecondStep': (context) => const AuthTwo(),
        //   // '/signIn': (context) => const SignInScreeen(),
        // },
      ),
    );
  }
}
