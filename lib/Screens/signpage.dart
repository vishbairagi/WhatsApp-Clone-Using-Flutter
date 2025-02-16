import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Screens/login.dart';

class signinpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/Vector.png",scale:4,color: Colors.white,),

        ),
      body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icon(Icons.person_2_sharp,size: 200,),
        //SizedBox(height: 10,),

        SizedBox(
          width: 350,
          child: TextField(
            decoration: InputDecoration(
                hintText: "Name",
                suffixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                  borderRadius: BorderRadius.circular(12),

                ),
          ),
        ),
    ),
          SizedBox(height: 25,),

        SizedBox(
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Mobile number",
              suffixIcon: Icon(Icons.call),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0XFF00A884))


            ),
          ),
                  ),
    ),
        SizedBox(height: 25,),
        SizedBox(
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              hintText: "DOB",
              suffixIcon: Icon(Icons.date_range),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0XFF00A884))


              ),
            ),
          ),
        ),

        SizedBox(height: 25,),

        SizedBox(width: 350,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Create a new Password",
              suffixIcon: Icon(Icons.password_outlined),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0XFF00A884))

              ),


            ),
          ),
        ),
        SizedBox(height: 70,),

        ElevatedButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogInScreen()));

        }, child: Text("Sign in",style: TextStyle(fontSize: 18),),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),

        ),

    ]
    )
    )
    );
  }
  
  
  
}


