import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:newsapp_bionic/features/news/presentaion/page/detail_news_page.dart';
import 'package:newsapp_bionic/features/news/presentaion/page/news_page.dart';

import 'app/dependency.dart';
import 'features/userauth/presentaion/controller/login_binding.dart';
import 'features/userauth/presentaion/page/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  DependencyCreator.init();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login',
          page: () => LoginPage(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/news',
          page: () => NewsPage(),
        ),
        GetPage(
          name: '/detail',
          page: () => DetailNewsPage(),
        ),
      ],
    );
  }
}
