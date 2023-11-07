import 'package:get/get.dart';
import 'package:mobile_app7/data/models/network_response.dart';
import 'package:mobile_app7/data/models/product_model.dart';
import 'package:mobile_app7/data/services/network_caller.dart';
import 'package:mobile_app7/data/utility/urls.dart';

class ProductListController extends GetxController {
  bool _getProductsInProgress = false;
  ProductModel _productModel = ProductModel();
  String _message = '';

  ProductModel get productModel => _productModel;

  bool get getProductsInProgress => _getProductsInProgress;

  String get message => _message;

  Future<bool> getProductsByCategory(int categoryId) async {
    _getProductsInProgress = true;
    update();
    final NetworkResponse response =
    await NetworkCaller.getRequest(Urls.getProductByCategory(categoryId));
    _getProductsInProgress = false;
    if (response.isSuccess) {
      _productModel = ProductModel.fromJson(response.responseJson ?? {});
      update();
      return true;
    } else {
      _message = 'Product list data fetch failed!';
      update();
      return false;
    }
  }

  void setProducts(ProductModel productModel) {
    _productModel = productModel;
    update();
  }
}