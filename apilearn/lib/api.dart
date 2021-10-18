import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    print(" Status: OK")
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}