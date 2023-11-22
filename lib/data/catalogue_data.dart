import 'package:mini_shopping_app/models/catalogue.dart';

List<Catalogue> catalogue = [
  Catalogue(
    id: 1,
    name: "Converse All Star",
    description: "Converse All Star High Top",
    image: "assets/image/image1.png",
    price: 50.00,
    quantity: 4,
  ),
  Catalogue(
    id: 2,
    name: "UniQlo Flannel Shirt",
    description: "UniQlo Flannel Shirt Dry Ex Long Sleeve",
    image: "assets/image/image2.png",
    price: 123.00,
    quantity: 10,
  ),
  Catalogue(
    id: 3,
    name: "Rayban Sunglasses",
    description: "Rayban Sunglasses Aviator Classic",
    image: "assets/image/image3.png",
    price: 150.00,
    quantity: 9,
  ),
  Catalogue(
      id: 4,
      name: "Baseball Cap",
      description: "Baseball Cap New York Yankees",
      image: "assets/image/image4.png",
      price: 130.00,
      quantity: 5),
];

List<Catalogue> userCart = [];

List<Catalogue> getCatalogue() {
  return catalogue;
}

List<Catalogue> getUserCart() {
  return userCart;
}

void addToCart(Catalogue catalogue) {
  userCart.add(catalogue);
}

void removeFromCart(Catalogue catalogue) {
  userCart.remove(catalogue);
}

void clearCart() {
  userCart.clear();
}

double getTotalPrice() {
  double total = 0;
  for (int i = 0; i < userCart.length; i++) {
    total += userCart[i].price;
  }
  return total;
}
