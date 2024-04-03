import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp_bionic/features/news/presentaion/controller/news_controller.dart';
import 'package:newsapp_bionic/features/news/presentaion/widget/news_card_widget.dart';
import 'package:newsapp_bionic/features/userauth/presentaion/controller/login_controller.dart';

import '../../../../app/theme.dart';

class NewsPage extends StatelessWidget {
  final LoginController loginController = Get.find();
  final NewsController _newsController = Get.find();
  NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Halo ${loginController.userAuthEntity.value.displayName}',
          style: blackTextStyle.copyWith(
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          print('Refresh');
          return Future<void>.value();
        },
        child: Obx(() {
          if (_newsController.isLoading.value == false) {
            return ListView.builder(
              itemCount: _newsController.listNewsEntity.length,
              itemBuilder: (BuildContext context, int index) {
                return NewsCardWidget(
                  newsEntity: _newsController.listNewsEntity[index],
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}
