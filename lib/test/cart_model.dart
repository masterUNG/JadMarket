// To parse this JSON data, do
//
//     final cartModel = cartModelFromJson(jsonString);

import 'dart:convert';

CartModel cartModelFromJson(String str) => CartModel.fromJson(json.decode(str));

String cartModelToJson(CartModel data) => json.encode(data.toJson());

class CartModel {
  CartModel({
    this.cart,
  });

  List<Cart>? cart;

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        cart: json["cart"] == null
            ? null
            : List<Cart>.from(json["cart"].map((x) => Cart.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cart": cart == null
            ? null
            : List<dynamic>.from(cart!.map((x) => x.toJson())),
      };
}

class Cart {
  Cart({
    this.shopName,
    this.item,
  });

  String? shopName;
  List<Item>? item;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        shopName: json["shop_name"] == null ? null : json["shop_name"],
        item: json["item"] == null
            ? null
            : List<Item>.from(json["item"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "shop_name": shopName == null ? null : shopName,
        "item": item == null
            ? null
            : List<dynamic>.from(item!.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    this.name,
    this.description,
    this.image,
    this.price,
    this.quantity,
  });

  String? name;
  String? description;
  String? image;
  num? price;
  num? quantity;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        image: json["image"] == null ? null : json["image"],
        price: json["price"] == null ? null : json["price"].toDouble(),
        quantity: json["quantity"] == null ? null : json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "image": image == null ? null : image,
        "price": price == null ? null : price,
        "quantity": quantity == null ? null : quantity,
      };
}
