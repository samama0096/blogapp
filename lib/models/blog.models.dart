class Blog {
  String? username;
  String? title;
  String? body;
  Blog({
    this.username,
    this.title,
    this.body,
  });

  factory Blog.fromJson(Map<String, dynamic> parsedJson) {
    return Blog(
        username: parsedJson['username'],
        title: parsedJson['title'],
        body: parsedJson['body']);
  }
}
