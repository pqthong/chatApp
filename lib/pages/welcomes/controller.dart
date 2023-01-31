import 'package:firebase_chat/common/routes/routes.dart';
import 'package:firebase_chat/pages/welcomes/state.dart';
import 'package:get/get.dart';

import '../../common/store/config.dart';
class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();
  changePage(int index) async {
    state.index.value = index;
  }
  handleSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.SIGN_IN);
  }

}