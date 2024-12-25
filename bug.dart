```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Success, process the data
      final jsonData = jsonDecode(response.body);
      // Use jsonData here
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions here
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}
```