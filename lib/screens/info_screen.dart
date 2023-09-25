import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class InfoScreen extends StatelessWidget {
   InfoScreen({super.key});
    String _message = 'لا يوجد رسالة' ;
  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute= ModalRoute.of(context);
    if(modalRoute!= null && modalRoute.settings.arguments !=null ){
      Map<String , dynamic> map = modalRoute.settings.arguments as Map< String,dynamic>;
      if(map.containsKey('message')){
        _message = map['message'];
      }
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("عن التطبيق", style: GoogleFonts.arefRuqaa(
        fontSize: 24,

      ),
        ),
        leading: IconButton( onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios),),
      ),
      body: Container(
        alignment: AlignmentDirectional.center,

    decoration: BoxDecoration(
    gradient: LinearGradient(
        begin: AlignmentDirectional.topStart,
        end: AlignmentDirectional.bottomEnd,
       colors: [
        Color(0xFF557A46),
        Color(0xFF9DC08B)])),
      child: Text(   _message,
      style: GoogleFonts.arefRuqaa(
         fontSize: 24,
         color: Color(0xFFEDF1D6),

      ) , ),

      ) );
  }
}

