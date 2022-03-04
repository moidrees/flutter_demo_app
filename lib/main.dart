import 'package:first_demo_app/pages/BallPage.dart';
import 'package:first_demo_app/pages/bitcoinTracker/price_screen.dart';
import 'package:first_demo_app/pages/bmiCalculator/screens/results_page.dart';
import 'package:first_demo_app/pages/climaWeatherModule/screens/loading_screen.dart';
import 'package:first_demo_app/pages/destini/destini_page.dart';
import 'package:first_demo_app/pages/diceGame/dicee_page.dart';
import 'package:first_demo_app/pages/flashChat/screens/chat_screen.dart';
import 'package:first_demo_app/pages/flashChat/screens/login_screen.dart';
import 'package:first_demo_app/pages/flashChat/screens/registration_screen.dart';
import 'package:first_demo_app/pages/flashChat/screens/welcome_screen.dart';
import 'package:first_demo_app/pages/flyingBirds/flying_birds_page.dart';
import 'package:first_demo_app/pages/loginModule/forgot_password_page.dart';
import 'package:first_demo_app/pages/homePage/home_page.dart';
import 'package:first_demo_app/pages/bmiCalculator/screens/input_page.dart';
import 'package:first_demo_app/pages/loginModule/login_page.dart';
import 'package:first_demo_app/pages/musicModule/music_page.dart';
import 'package:first_demo_app/pages/loginModule/signup_page.dart';
import 'package:first_demo_app/pages/quizzler/Quizzler.dart';
import 'package:first_demo_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'listing_page.dart';

final ThemeData theme = ThemeData();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const WidgetsDemo());
}

class WidgetsDemo extends StatelessWidget {
  const WidgetsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp (
      /*theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(secondary: Colors.purple),
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF101427)),
          scaffoldBackgroundColor: const Color(0xFF101427),
          textTheme:
              const TextTheme(bodyText1: TextStyle(color: Colors.white))),*/
      initialRoute: '/',
      routes: {
        //"/": (context)=> LoginPage(),
        //"/": (context)=> SignUpPage(),
        //"/": (context)=> const BallPage(),
        //"/": (context)=> const Quizzler(),
        //"/": (context)=> const FlyingBirdsPage(),
        '/': (context) => const ListingPage(),
        //AppRoutes.loadingRoute: (context) => LoadingScreen(),
        //'/': (context) => LoadingScreen(),
        //'/': (context) => PriceScreen(),
        AppRoutes.welcomeScreenRoute: (context) => WelcomeScreen(),
        AppRoutes.musicRoute: (context)=> const MusicPage(),
        AppRoutes.diceRoute: (context)=> const DicePage(),
        AppRoutes.destiniRoute: (context) => const DestiniPage(),
        AppRoutes.bmiRoute: (context) => const InputPage(),
        AppRoutes.birdRoute: (context) => const FlyingBirdsPage(),
        AppRoutes.homeRoute: (context) => const HomePage(),
        AppRoutes.loginRoute: (context) => LoginPage(),
        AppRoutes.signupRoute: (context) => SignUpPage(),
        AppRoutes.forgotPasswordRoute: (context) => ForgotPasswordPage(),
        AppRoutes.welcomeScreenRoute: (context) => WelcomeScreen(),
        AppRoutes.loginScreenRoute: (context) => const LoginScreen(),
        AppRoutes.registrationScreenRoute: (context) => RegistrationScreen(),
        AppRoutes.chatScreenRoute: (context) => const ChatScreen(),
        //AppRoutes.resultRoute: (context) => ResultPage(),
      },
    );
  }
}
