import 'package:get/get.dart';
import 'package:mobile_app7/Presentation/state_holders/auth_controller.dart';
import 'package:mobile_app7/data/models/network_response.dart';
import 'package:mobile_app7/data/services/network_caller.dart';
import 'package:mobile_app7/data/utility/urls.dart';

class OtpVerificationController extends GetxController {
  bool _otpVerificationInProgress = false;
  String _message = '';

  bool get otpVerificationInProgress => _otpVerificationInProgress;

  String get message => _message;

  Future<bool> verifyOtp(String email, String otp) async {
    _otpVerificationInProgress = true;
    update();
    final NetworkResponse response =
    await NetworkCaller.getRequest(Urls.verifyOtp(email, otp));
    _otpVerificationInProgress = false;
    update();
    if (response.isSuccess) {
      await AuthController.setAccessToken(response.responseJson?['data']);
      return true;
    } else {
      return false;
    }
  }
}