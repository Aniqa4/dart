class Product {
  String name;
  double price;
  int quantity;
  bool inStock;

  Product({
    required this.name,
    required this.price,
    required this.quantity,
    required this.inStock,
  });
}

double calculateCartTotal(List<Product> products) {
  double total = 0;

  for (Product product in products) {
    if (product.inStock) {
      double itemTotal = product.price * product.quantity;

      print("${product.name}: $itemTotal");

      total += itemTotal;
    }
  }

  return total;
}

class Student {
  String name;
  int age;
  double grade;
  bool isPresent;

  Student({
    required this.name,
    required this.age,
    required this.grade,
    required this.isPresent,
  });
}

double calculateAverageGrade(List<Student> students) {
  double totalGrade = 0;
  int presentCount = 0;

  for (Student student in students) {
    if (student.isPresent) {
      totalGrade += student.grade;
      presentCount++;
    }
  }

  return presentCount > 0 ? totalGrade / presentCount : 0;
}

void main() {
  List<Product> productsList = [
    Product(name: "T-shirt", price: 500, quantity: 2, inStock: true),
    Product(name: "Jeans", price: 1200, quantity: 1, inStock: true),
    Product(name: "Shoes", price: 2500, quantity: 3, inStock: true),
  ];

  double total = calculateCartTotal(productsList);

  print("Total: $total");

  List<Student> students = [
    Student(name: "Alice", age: 20, grade: 85.5, isPresent: true),
    Student(name: "Bob", age: 22, grade: 90.0, isPresent: false),
    Student(name: "Charlie", age: 19, grade: 78.0, isPresent: true),
  ];

  double averageGrade = calculateAverageGrade(students);
  print("Average Grade: $averageGrade");

  for (Student student in students) {
    print(
      "Name: ${student.name}, Age: ${student.age}, Grade: ${student.grade}, Present: ${student.isPresent}",
    );
  }

  //

  String name = "Alice";
  String? nickname;
  int age = 25;

  nickname = "Ali";
  print("Name: $name");
  print("Nickname: $nickname");

  nickname = null;
  print(nickname ?? "No nickname");

  String? email = null;
  print("${email?.length ?? 'Email is null'}");

  String? address = "123 Main St";
  address = null;
  print(address!.length);
}
