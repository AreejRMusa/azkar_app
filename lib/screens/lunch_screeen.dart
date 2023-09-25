import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint("initState");
    Future.delayed(Duration(seconds: 3) ,(){
     //Navigator.pushNamed(context, '/home_screen');
      Navigator.pushReplacementNamed(context, '/home_screen');
    debugPrint('Future');
    }

    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration:const BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
            colors: [
          Color(0xFF557A46),
          Color(0xFF9DC08B)
        ])
        ),
        child: Text("المسبحة الالكترونية" ,
          style: GoogleFonts.arefRuqaa(
              fontSize: 24,
              fontWeight: FontWeight.w800,
            color: Color(0xFFDFFFD8)
          ),
        ),
      ),
    );


  }
}
