import 'package:azkar_app/screens/faqs_screen.dart';
import 'package:azkar_app/screens/home_screen.dart';
import 'package:azkar_app/screens/info_screen.dart';
import 'package:azkar_app/screens/lunch_screeen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main(){
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:
      const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en')
      ],
      locale: Locale('ar'),
      //home:  LaunchScreen(),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context) => LaunchScreen(),
        '/home_screen': (context) => HomeScreen(),
        '/info_screen': (context) => InfoScreen(),
        '/faqs_screen': (context) => FAQsScreen(),
      } ,
    );
  }
}
