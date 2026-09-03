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

  // for in loop to print a list of products
  List<String> products1 = ["T-shirt", "Jeans", "Shoes", "Bag", "Watch"];

  for (String product in products1) {
    print("Product: $product");
  }

  List<double> prices = [500, 1200, 2500, 1500, 3000];

  for (double price in prices) {
    print("Price: $price");
  }

  double calculateTotal(List<double> prices) {
    double total = 0;
    for (double price in prices) {
      total += price;
    }
    return total;
  }

  print("Total Price: ${calculateTotal(prices)}");

  //map to store product and price
  Map<String, dynamic> product = {
    "name": "T-shirt",
    "price": 500,
    "inStock": true,
  };

  product.forEach((key, value) {
    print("$key: $value");
  });

  print("Product Name: ${product['name']}");

// List of products with their details
  List<Map<String, dynamic>> products = [
    {"name": "T-shirt", "price": 500, "inStock": true},
    {"name": "Jeans", "price": 1200, "inStock": false},
    {"name": "Shoes", "price": 2500, "inStock": true},
  ];

  for (var product in products) {
    if (product['inStock']) {
      print("Product Name: ${product['name']}");
    }
  }

}




