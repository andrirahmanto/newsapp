import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp_bionic/features/news/domain/entity/news_entity.dart';
import 'package:newsapp_bionic/features/news/presentaion/controller/news_controller.dart';

import '../../../../app/theme.dart';

class NewsCardWidget extends StatelessWidget {
  final NewsEntity newsEntity;
  final NewsController _newsController = Get.find();
  NewsCardWidget({super.key, required this.newsEntity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _newsController.selectNews(newsEntity);
        Get.toNamed("/detail");
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(defaultMargin).copyWith(bottom: 0),
        foregroundDecoration: BoxDecoration(
            border: Border.all(color: blackColor),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                newsEntity.urlToImage,
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsEntity.publishedAt,
                    style: grayTextStyle.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    newsEntity.title,
                    style: blackTextStyle.copyWith(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
