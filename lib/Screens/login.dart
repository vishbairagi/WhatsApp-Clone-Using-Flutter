import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Screens/mainscreen.dart';
import 'package:instagram/Screens/signpage.dart';

class LogInScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Image.asset("assets/images/Vector.png",scale:4,color: Colors.white,),

  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [SizedBox(height: 10,),
        SizedBox(width: 350,
           child: TextField(
            decoration: InputDecoration(
                hintText: "Login",
                suffixIcon: Icon(Icons.login),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                  borderRadius: BorderRadius.circular(12),

                )
                /*focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))
                ),
                enabledBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))
                )
*/            ),
                   ),
         ),


        SizedBox(height: 25,),

        SizedBox(
          width: 350,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.password_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0XFF00A884))

                  ),

                /*  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884))
                  ),
                  enabledBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884))
                  )*/
              ),
            ),
          ),
        ),

        SizedBox(height: 70),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen()));
            }, child: Text("Log in",style: TextStyle(fontSize: 18),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            
            ),
            SizedBox(width: 10,),
            Text("or",style: TextStyle(fontSize: 18),),
            SizedBox(
              width: 15,
            ),

            InkWell(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>signinpage()));
            },
            child:             Text("Sign in",style: TextStyle(fontSize: 18,color: Colors.blue),),
                )
          ],
        ),


      ],
    ),
  ),
);
  }


}