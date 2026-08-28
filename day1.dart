
void main() {
  // Assigning values to variables

  String name = "John Doe";
  int age = 30;
  double height = 5.8;
  bool isStudent = false;

  // Printing the values of variables

  print("My Name is $name");
  print("I am $age years old");
  print("My Height is $height feet");

  // Using conditional statements

  if (age >= 18) {
    print("I am an adult.");
  } else {
    print("I am a minor.");
  }

  // Next year's age

  print("Next year I will be ${age + 1} years old.");

  // Function to calculate birth year

  int calculateBirthYear(int age) {
    int currentYear = DateTime.now().year;
    return currentYear - age;
  }

  print("Approximate birth year: ${calculateBirthYear(age)}");

  // Loop to print numbers from 1 to 10

  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}
