import 'package:flutter/material.dart';
import 'package:firebase_chat/common/middlewares/middlewares.dart';

import 'package:get/get.dart';

import '';
import '../../pages/application/bindings.dart';
import '../../pages/application/view.dart';
import '../../pages/chat/bindings.dart';
import '../../pages/chat/view.dart';
import '../../pages/contact/bindings.dart';
import '../../pages/contact/view.dart';
import '../../pages/welcomes/index.dart';
import '../../pages/sign_in/index.dart';

import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const APPlication = AppRoutes.Application;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
        name: AppRoutes.INITIAL,
        page: () => const WelcomePage(),
        binding: WelcomeBinding(),
        middlewares: [RouteWelcomeMiddleware(priority: 1)]),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),
    // check if needed to login or not
    GetPage(
      name: AppRoutes.Application,
      page: () => const ApplicationPage(),
      binding: ApplicationBinding(),
      middlewares: [
        //RouteAuthMiddleware(priority: 1),
      ],
    ),

    // 最新路由
    // 首页
    GetPage(
        name: AppRoutes.Contact,
        page: () => ContactPage(),
        binding: ContactBinding()),
    //消息
    /*

    GetPage(name: AppRoutes.Message, page: () => MessagePage(), binding: MessageBinding()),
    //我的

    GetPage(name: AppRoutes.Me, page: () => MePage(), binding: MeBinding()),
    //聊天详情
    */
    GetPage(name: AppRoutes.Chat, page: () => ChatPage(), binding: ChatBinding()),

    //GetPage(name: AppRoutes.Photoimgview, page: () => PhotoImgViewPage(), binding: PhotoImgViewBinding()),
  ];
}
