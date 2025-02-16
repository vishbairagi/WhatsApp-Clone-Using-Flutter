import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Screens/mainscreen.dart';

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_natasha_us",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 20,))
        ],),
        bottomNavigationBar:
        BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: InkWell(onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen()));}, child: Image.asset("assets/images/Home.png", scale: 3, color: Colors.white,),), label: ""),
            BottomNavigationBarItem(icon: Image.asset("assets/images/search.png", scale: 3, color: Colors.white,), label: ""),
            BottomNavigationBarItem(icon: Image.asset("assets/images/Add.png", scale: 3, color: Colors.white,), label: ""),
            BottomNavigationBarItem(icon: Image.asset("assets/images/Reels.png", scale: 3, color: Colors.white,), label: ""),
            BottomNavigationBarItem(icon: InkWell(onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));}, child: Image.asset("assets/images/User.png", scale: 3, color: Colors.white,),), label: ""),]),
        

      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children:[ CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage("https://tse2.mm.bing.net/th?id=OIP.jryuUgIHWL-1FVD2ww8oWgHaHa&pid=Api&P=0&h=180"),
                ),
               ]
              ),
              SizedBox(width: 30,),
              Column(
                children: [
                  Text("50"),
                  Text("POSTS")
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text("540"),
                  Text("FOLLOWER")
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text("420"),
                  Text("FOLLOWING")
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [ SizedBox(width: 10,),
              Text("Native User"),
            ],

          ),

          SizedBox(height: 10,),
          Row(
            children: [ SizedBox(width: 10,),
              Text("Farmer Life \nChill Life"),
            ],

          ),SizedBox(height: 10,width: 10,),
          Row(
            children: [
              ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black12,

                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
                  child: Text("Profile")
              ),SizedBox(width: 5,),
              ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black12,

                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
                  child: Text("Share Profile")
              ),SizedBox(width: 10,),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 30,))
            //  Image.asset("assets/images/Button.png",)

            ],
          ),
          SizedBox(height: 30,),
          Row(
          children: [
            SizedBox(width: 80,),

            Image.asset("assets/images/Icons.png",),
           // SizedBox(width: 10,),
           // Image.asset("assets/images/reel.png",),

            SizedBox(width: 150,),

            Image.asset("assets/images/Tag.png",),

          ]
          )

        ],
      ),

    );
  }


}