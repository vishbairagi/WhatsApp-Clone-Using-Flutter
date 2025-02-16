import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:instagram/model/Posts_Model.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<Photos> photoList = [];
  List<PostsModel> postList = [];

  // Fetching photos
  /*Future<List<Photos>> getPhotos() async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      photoList.clear();  // Clear previous data to avoid duplicates
      for (Map i in data) {
        Photos photo = Photos(title: i["title"], url: i["url"], id: i["id"]);
        photoList.add(photo);
      }
      return photoList;
    } else {
      return [];
    }
  }*/

  // Fetching posts
  Future<List<PostsModel>> getPostApi() async {
    final response = await http.get(Uri.parse("https://jsonplaceholder.type.com/posts"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      postList.clear(); // Clear previous data to avoid duplicates
      for (Map<String, dynamic> i in data) {
        postList.add(PostsModel.fromJson(i));
      }
      return postList;
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
      ),
      body: Column(
        children: [
          // FutureBuilder for posts
          Expanded(
            child: FutureBuilder<List<PostsModel>>(
              future: getPostApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                } else if (snapshot.hasData) {
                  // If data is available, display posts
                  return ListView.builder(
                    itemCount: postList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(postList[index].title,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(postList[index].body),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("User ID: ${postList[index].userId}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Post ID: ${postList[index].id}"),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: Text("No posts available"));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Define Photos class
class Photos {
  int id;
  String title, url;

  Photos({required this.title, required this.url, required this.id});
}
