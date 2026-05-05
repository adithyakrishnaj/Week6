// Grade Calculator in Dart

void main() {
  List<int> scores = []; // يمكنك تغيير القيم

  // Handle empty list
  if (scores.isEmpty) {
    print("No scores provided.");
    return;
  }

  // Calculate total using loop
  int total = 0;
  for (int score in scores) {
    total += score;
  }

  // Calculate average
  double average = total / scores.length;

  // Assign grade using if-else
  String grade;
  if (average >= 90) {
    grade = 'A';
  } else if (average >= 75) {
    grade = 'B';
  } else {
    grade = 'C';
  }

  // Switch-case (based on grade)
  switch (grade) {
    case 'A':
      print("Excellent performance!");
      break;
    case 'B':
      print("Good job!");
      break;
    case 'C':
      print("Needs improvement.");
      break;
    default:
      print("Invalid grade");
  }

  // Output
  print("Scores: $scores");
  print("Average: ${average.toStringAsFixed(2)}");
  print("Grade: $grade");
}