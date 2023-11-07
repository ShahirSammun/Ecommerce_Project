import 'package:get/get.dart';
import 'package:mobile_app7/Presentation/state_holders/add_to_cart_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/cart_list_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/category_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/create_invoice_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/email_verification_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/home_slider_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/new_product_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/popular_product.dart';
import 'package:mobile_app7/Presentation/state_holders/product_details_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/product_list_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/special_product_controller.dart';
import 'package:mobile_app7/Presentation/state_holders/theme_mode_controller.dart';

import '../Presentation/state_holders/otp_verification.dart';

class StateHolderBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(EmailVerificationController());
    Get.put(OtpVerificationController());
    Get.put(HomeSlidersController());
    Get.put(CategoryController());
    Get.put(PopularProductController());
    Get.put(NewProductController());
    Get.put(SpecialProductController());
    Get.put(ProductDetailsController());
    Get.put(AddToCartController());
    Get.put(ProductListController());
    Get.put(CartListController());
    Get.put(CreateInvoiceController());
    Get.lazyPut(() => ThemeModeController());
  }
}


