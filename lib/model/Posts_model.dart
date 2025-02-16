class PostsModel {
  int userId;
  int id;
  String title;
  String body;

  // Constructor with required fields
  PostsModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  // Named constructor to create an instance from JSON
  PostsModel.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        body = json['body'];

  // Method to copy the object with updated values
  PostsModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostsModel(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  // Method to convert the object back to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}

