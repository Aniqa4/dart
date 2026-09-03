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

void main() {
  List<Product> productsList = [
    Product(
      name: "T-shirt",
      price: 500,
      quantity: 2,
      inStock: true,
    ),
    Product(
      name: "Jeans",
      price: 1200,
      quantity: 1,
      inStock: true,
    ),
    Product(
      name: "Shoes",
      price: 2500,
      quantity: 3,
      inStock: true,
    ),
  ];

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

  double total = calculateCartTotal(productsList);

  print("Total: $total");
}