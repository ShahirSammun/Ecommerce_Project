import 'package:mobile_app7/data/models/product.dart';

class ProductDetails {
  int? id;
  String? img1;
  String? img2;
  String? img3;
  String? img4;
  String? des;
  String? color;
  String? size;
  int? productId;
  String? createdAt;
  String? updatedAt;
  Product? product;

  ProductDetails({
    this.id,
    this.img1,
    this.img2,
    this.img3,
    this.img4,
    this.des,
    this.color,
    this.size,
    this.productId,
    this.createdAt,
    this.updatedAt,
    this.product});

  ProductDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }
}