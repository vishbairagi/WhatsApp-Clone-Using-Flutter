import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messagescreen extends StatelessWidget{
  TextEditingController SearchController=TextEditingController();
  var arrcontent=[

  {
  "images": "https://tse1.mm.bing.net/th?id=OIP.ja7ChwwZnw6fFzrTlyhzcAHaDt&pid=Api&P=0&h=180",

  "name":"Aron",
  "statustime":" Have a nice day",


},
{
"images":"https://tse3.mm.bing.net/th?id=OIP.CZ4LDBaAwxHXY5LD2DXu5wHaEK&pid=Api&P=0&h=180",

"name":"Michel",
"statustime":" Good Job",


},
{
"images": "https://tse2.mm.bing.net/th?id=OIP.jryuUgIHWL-1FVD2ww8oWgHaHa&pid=Api&P=0&h=180",

"name":"Maya",
"statustime":" Thanks!!",


}, {
"images": "https://tse1.mm.bing.net/th?id=OIP.ja7ChwwZnw6fFzrTlyhzcAHaDt&pid=Api&P=0&h=180",

"name":"Aron",
"statustime":" 100message",


},
{
"images":"https://tse3.mm.bing.net/th?id=OIP.CZ4LDBaAwxHXY5LD2DXu5wHaEK&pid=Api&P=0&h=180",

"name":"Michel",
"statustime":" I am Suffering to ill",


},
{
"images": "https://tse2.mm.bing.net/th?id=OIP.jryuUgIHWL-1FVD2ww8oWgHaHa&pid=Api&P=0&h=180",

"name":"Maya",
"statustime":" where are from",


}, {
"images": "https://tse1.mm.bing.net/th?id=OIP.ja7ChwwZnw6fFzrTlyhzcAHaDt&pid=Api&P=0&h=180",

"name":"Aron",
"statustime":" Can i call you",


},

    {
      "images": "https://tse1.mm.bing.net/th?id=OIP.ja7ChwwZnw6fFzrTlyhzcAHaDt&pid=Api&P=0&h=180",

      "name":"Aron",
      "statustime":" Have a nice day",


    },
    {
      "images":"https://tse3.mm.bing.net/th?id=OIP.CZ4LDBaAwxHXY5LD2DXu5wHaEK&pid=Api&P=0&h=180",

      "name":"Michel",
      "statustime":" Good Job",


    },
    {
      "images": "https://tse2.mm.bing.net/th?id=OIP.jryuUgIHWL-1FVD2ww8oWgHaHa&pid=Api&P=0&h=180",

      "name":"Maya",
      "statustime":" Thanks!!",


    }, {
      "images": "https://tse1.mm.bing.net/th?id=OIP.ja7ChwwZnw6fFzrTlyhzcAHaDt&pid=Api&P=0&h=180",

      "name":"Aron",
      "statustime":" 100message",


    },
    {
      "images":"https://tse3.mm.bing.net/th?id=OIP.CZ4LDBaAwxHXY5LD2DXu5wHaEK&pid=Api&P=0&h=180",

      "name":"Michel",
      "statustime":" I am Suffering to ill",


    },
    {
      "images": "https://tse2.mm.bing.net/th?id=OIP.jryuUgIHWL-1FVD2ww8oWgHaHa&pid=Api&P=0&h=180",

      "name":"Maya",
      "statustime":" where are from",


    }, {
      "images": "https://tse1.mm.bing.net/th?id=OIP.ja7ChwwZnw6fFzrTlyhzcAHaDt&pid=Api&P=0&h=180",

      "name":"Aron",
      "statustime":" Can i call you",


    },

  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(toolbarHeight: 88,
        leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.back)),
        title: Text("_vishal_bairagi",style: TextStyle(fontSize: 16,color: Color(0XFFF9F9F9),fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,size: 24,))
        ],
      ),
      body: Column(
        
        children: [
          Row(
            children: [SizedBox(width: 16 ,),
              Container(height: 40,width: 330,
                decoration: BoxDecoration(
                  color: Color(0XFFF262626),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: TextField(
                  controller: SearchController,
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),
                    prefixIcon: Image.asset("assets/images/search.png",scale: 5,color: Colors.white,)
                  ),
                ),

                  ),
            ],
          ),
          SizedBox(height: 19,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              
              return ListTile(
                leading: CircleAvatar(radius: 25,
                  backgroundImage: NetworkImage(arrcontent[index]["images"].toString()),
                ),
                title: Text(arrcontent[index]["name"].toString()),
                subtitle: Text(arrcontent[index]["statustime"].toString()),
                trailing: Icon(Icons.camera_alt_outlined,size: 28,),


              );
            },itemCount: arrcontent.length,),
          )
        ],
      ),
    );
  }


}