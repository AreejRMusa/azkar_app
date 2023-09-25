import 'package:azkar_app/screens/faqs_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
//home_screen
class _HomeScreenState extends State<HomeScreen> {

  int _counter= 0;
  String _content = 'الحمد لله';
  @override
  Widget build(BuildContext context) {
    return// Directionality(
     // textDirection: TextDirection.rtl,
      //child:
       Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            'مسبحة اذكار',
            style:
            GoogleFonts.arefRuqaa(fontSize: 24,
              fontWeight: FontWeight.w800,),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context,'/info_screen' ,
              arguments:<String,dynamic> {
                'message': " واجهة عن التطبيق"
              }
              );
            }, icon: Icon(Icons.info)),
            IconButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FAQsScreen( message:'واجهة الأسئلة الشائعة')));
            }, icon: Icon(Icons.question_answer)),

            PopupMenuButton<String>(
                onSelected: (value){
                  if(_content != value){

                    setState(() {
                      _content = value;
                      _counter=0;
                    });

                  }
                },
                itemBuilder: (context){
              return[

                PopupMenuItem(
                  height: 20,
                  value:'استغفر الله',
                  child: Text('استغفر الله', style : GoogleFonts.arefRuqaa(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF40513B),
                ) ), ),
                PopupMenuDivider(),
                PopupMenuItem(
                  height: 20,
                  value:'الحمد لله',
                  child: Text(' الحمد لله' , style: GoogleFonts.arefRuqaa(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF40513B),
                )),),
                PopupMenuDivider(),
                PopupMenuItem(
                  height: 20,
                  value:'لا اله الا الله',
                  child: Text(' لا اله الا الله' , style: GoogleFonts.arefRuqaa(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF40513B),
                )),),

              ];

            }),



          ],

          // automaticallyImplyLeading: false,
        ),
        body: Container(
          //alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
                  colors: [Color(0xFF557A46), Color(0xFF9DC08B)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          blurRadius: 5,
                          offset: Offset(0, 5)),
                      // BoxShadow(
                      //   color: Colors.pink,
                      // blurRadius: 5,
                      //offset: Offset(5, 5)
                      //)
                    ],
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlcaucLWNkJ1iPHjYnJw0Lo-XZVHURoMZ5Cgg9yWDpPoMby13mDR_4JrVCWSkXVjnvxG0&usqp=CAU')),
                    borderRadius: BorderRadius.circular(35),
                    //shape: BoxShape.circle,

                    color: Color(0xFFEDF1D6)),
              ),
              Container(
                clipBehavior: Clip.antiAlias,

                margin: EdgeInsetsDirectional.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 6,
                        offset: Offset(0, 5)
                    )

                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFEDF1D6),
                ),
                child: Row(
                  children: [
                    Expanded(

                       child: Text(
                           _content,
                           textAlign: TextAlign.center,
                           style:GoogleFonts.arefRuqaa(fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF40513B),

                        )),),


                        Container(
                          alignment: AlignmentDirectional.center,


                          color: Color(0xFF40513B),
                          height: 70,
                          width: 40,
                          child: Text(
                              _counter.toString(),
                               style:GoogleFonts.arefRuqaa(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFFEDF1D6),

                          )),
                        )

                      ],
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2 ,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(20),
                            )
                          ),
                          backgroundColor: Color(0xFFEDF1D6),
                        ),
                        onPressed: () {
                          setState(() {
                             _counter++;
                          });

                          },
                        child: Text('تسبيح'
                            ,style:GoogleFonts.arefRuqaa(fontSize: 20,
                             fontWeight: FontWeight.w800,
                              color: Color(0xFF40513B),
                            ),
                        )
                        , ),
                    ),
                    Expanded(
                      flex: 1 ,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              bottomEnd: Radius.circular(20),
                            )
                          ),
                            backgroundColor: Color(0xFF40513B),
                        ),
                          onPressed: () {
                            setState(() {
                              _counter=0;
                            });
                          //_counter=0;
                          },
                        child: Text('الاعادة'
                          ,style:GoogleFonts.arefRuqaa(fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFFEDF1D6),
                          ),
                        )

                      ),
                    )],),
              )
            ]


                 ),
              ),
           floatingActionButton: FloatingActionButton(
             elevation: 10,
             onPressed: (){
               setState(() {
                 _counter++;
               });
             },
             backgroundColor: Color(0xFFEDF1D6),
             child: Icon(Icons.add , color:Color(0xFF40513B) ,),

       ),

         // ),

    );


  }
}
