import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/Screens/heartscreen.dart';
import 'package:instagram/Screens/homescreen.dart';
import 'package:instagram/Screens/messagescreeen.dart';
import 'package:instagram/Screens/postscreen.dart';
import 'package:instagram/Screens/profilescreen.dart';
import 'package:instagram/Screens/searchscreen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0; // Track current index for bottom navigation
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    ProfileScreen(),
  ];

  var arrContent = [
    {
      "images": "https://tse1.mm.bing.net/th?id=OIP.ja7ChwwZnw6fFzrTlyhzcAHaDt&pid=Api&P=0&h=180",
      "name": "Your Story",
    },
    {
      "images": "https://tse3.mm.bing.net/th?id=OIP.CZ4LDBaAwxHXY5LD2DXu5wHaEK&pid=Api&P=0&h=180",
      "name": "Michel",
    },
    {
      "images": "https://tse2.mm.bing.net/th?id=OIP.jryuUgIHWL-1FVD2ww8oWgHaHa&pid=Api&P=0&h=180",
      "name": "Maya",
    },
    {
      "images": "https://tse1.mm.bing.net/th?id=OIP.ja7ChwwZnw6fFzrTlyhzcAHaDt&pid=Api&P=0&h=180",
      "name": "Your Story",
    },
    {
      "images": "https://tse3.mm.bing.net/th?id=OIP.CZ4LDBaAwxHXY5LD2DXu5wHaEK&pid=Api&P=0&h=180",
      "name": "Michel",
    },
    {
      "images": "https://tse2.mm.bing.net/th?id=OIP.jryuUgIHWL-1FVD2ww8oWgHaHa&pid=Api&P=0&h=180",
      "name": "Maya",
    },
    {
      "images": "https://tse1.mm.bing.net/th?id=OIP.ja7ChwwZnw6fFzrTlyhzcAHaDt&pid=Api&P=0&h=180",
      "name": "Your Story",
    },
    {
      "images": "https://tse3.mm.bing.net/th?id=OIP.CZ4LDBaAwxHXY5LD2DXu5wHaEK&pid=Api&P=0&h=180",
      "name": "Michel",
    },
    {
      "images": "https://tse2.mm.bing.net/th?id=OIP.jryuUgIHWL-1FVD2ww8oWgHaHa&pid=Api&P=0&h=180",
      "name": "Maya",
    },
    {
      "images": "https://tse1.mm.bing.net/th?id=OIP.ja7ChwwZnw6fFzrTlyhzcAHaDt&pid=Api&P=0&h=180",
      "name": "Your Story",
    },
    {
      "images": "https://tse3.mm.bing.net/th?id=OIP.CZ4LDBaAwxHXY5LD2DXu5wHaEK&pid=Api&P=0&h=180",
      "name": "Michel",
    },
    {
      "images": "https://tse2.mm.bing.net/th?id=OIP.jryuUgIHWL-1FVD2ww8oWgHaHa&pid=Api&P=0&h=180",
      "name": "Maya",
    },
    // More data entries...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Row(
          children: [
            Image.asset(
              "assets/images/Vector.png", scale: 4, color: Colors.white,
            ),
            SizedBox(width: 5),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/Like.png", scale: 4, color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => messagescreen()));
            },
            icon: Image.asset(
              "assets/images/sms.png", scale: 4, color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Home.png", scale: 3, color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/search.png", scale: 3, color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Add.png", scale: 3, color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Reels.png", scale: 3, color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: Image.asset(
                "assets/images/User.png", scale: 3, color: Colors.white,
              ),
            ),
            label: "",
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [ // Posts Grid Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                height: 100.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arrContent.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: NetworkImage(arrContent[index]["images"].toString()),
                          ),
                          const SizedBox(height: 5.0),
                          Text(arrContent[index]["name"].toString()),
                        ],
                    ),);},),),),),],),
     );
     }
     }
