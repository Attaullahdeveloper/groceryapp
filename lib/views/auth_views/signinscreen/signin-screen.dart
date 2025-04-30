import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocreyapp/views/auth_views/number_screen/number-entering-screen.dart';
class Signinscreen extends StatelessWidget {
  const Signinscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Stack(
            children:[
              Center(
                child: Image.asset('figmaimg/figma4i.png'),
              ),
            Positioned(
                top: 20,
                right: 55,
                child: Image.asset('figmaimg/figma8.png',),),
        
            //  Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
            //       child: Image.asset('figmaimg/figma8.png',)),
              // Center(
              //   child: Image.asset('figmaimg/figma4i.png'),
              // ),
            ]
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Get your groceries\nwith nectar',
              style: GoogleFonts.questrial(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)),
          Padding(
              padding: EdgeInsets.all(20),
              child: TextField(

                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>Numberscreen()));
                  }, icon: Icon(Icons.arrow_forward,color: Colors.black,)),

                  prefixIcon: SizedBox(
                    width: 90,
                    child: Row(children: [
                      SizedBox(width: 2,),
                      Image.asset('figmaimg/figma5.png'),
                      SizedBox(width: 2,),
                      SizedBox(width: 2,),
                      Text('+880',style: TextStyle(fontSize: 18),)
                    ],),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2))
                  )
                ),

              )),
            SizedBox(height: 15,),
            Center(child: TextButton(onPressed: (){}, child: Text('Or connect with social media',style: TextStyle(color: Color(0xff828282)),))),
            SizedBox(height: 40,),
            Center(
              child: InkWell(
                onTap: (){},
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff5383EC)
                  ),
                  child: Row(children: [SizedBox(width: 20,),Image.asset('figmaimg/figma6.png')],),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: InkWell(
                onTap: (){},
                child: Container(
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff4A66AC)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),Image.asset('figmaimg/figma7.png')],),
                ),
              ),
            ),

        ],),
      ),
    );
  }
}
