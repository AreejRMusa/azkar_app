import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 class FAQsScreen extends StatelessWidget {
   const FAQsScreen({Key?key , this.message = 'لا توجد رسالة'}):super(key: key) ;
   final String message;
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
         extendBodyBehindAppBar: true,
         appBar: AppBar(

           backgroundColor: Colors.transparent,
           elevation: 0,
           centerTitle: true,
           title: Text("الأسئلة الشائعة ", style: GoogleFonts.arefRuqaa(
             fontSize: 24,

           ),
           ),
           leading: IconButton( onPressed: (){
             Navigator.pop(context);
           }, icon:const Icon(Icons.arrow_back_ios),),
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
           child: Text(   message,
             style: GoogleFonts.arefRuqaa(
               fontSize: 24,
               color: Color(0xFFEDF1D6),

             ) , ),

         )
          );
   }
 }
 