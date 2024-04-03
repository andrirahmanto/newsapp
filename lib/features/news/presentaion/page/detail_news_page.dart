import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/theme.dart';
import '../controller/news_controller.dart';

class DetailNewsPage extends StatelessWidget {
  final NewsController _newsController = Get.find();
  DetailNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Column(
          children: [
            Image.network(
              _newsController.selectedNewsEntity.value.urlToImage,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.all(defaultMargin).copyWith(bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _newsController.selectedNewsEntity.value.title,
                    style: blackTextStyle.copyWith(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    _newsController.selectedNewsEntity.value.publishedAt,
                    style: grayTextStyle.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    _newsController.selectedNewsEntity.value.author,
                    style: grayTextStyle.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Text(
                    _newsController.selectedNewsEntity.value.description,
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
