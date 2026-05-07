// Library Search Task in Dart

void main() {
  List<String> books = [
    "Python Basics",
    "Django Development",
    "Flutter Guide",
    "AI with Python",
    "System Design"
  ];

  // Search with category
  print("All Python Books:");
  print(searchBooks(books, category: "Python"));

  print("");

  // Search with another category
  print("All Flutter Books:");
  print(searchBooks(books, category: "Flutter"));

  // Search without category
  List<String> allBooks = searchBooks(books);

  print("\nAll Books:");
  print(allBooks);
}


// Function with optional named parameter
List<String> searchBooks(
  List<String> titles, {
  String? category,
}) {

  // Using .where() function
  return titles.where((book) {
    if (category == null) {
      return true;
    }
    return book.contains(category);
  }).toList();
}