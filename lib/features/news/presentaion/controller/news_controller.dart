import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp_bionic/features/news/domain/entity/news_entity.dart';
import 'package:newsapp_bionic/features/news/domain/usecase/get_data_list_news.dart';

class NewsController extends GetxController {
  final GetDataListNewsUseCase _getDataListNewsUseCase;
  NewsController(this._getDataListNewsUseCase);
  final List<NewsEntity> listNewsEntity = [];
  late Rx<NewsEntity> selectedNewsEntity;
  final isLoading = false.obs;

  @override
  void onInit() {
    getListNews();
    super.onInit();
  }

  void selectNews(NewsEntity newsEntity) {
    try {
      selectedNewsEntity.value = newsEntity;
    } catch (e) {
      selectedNewsEntity = Rx<NewsEntity>(newsEntity);
    }
  }

  Future<void> getListNews() async {
    try {
      isLoading.value = true;
      List<NewsEntity> listNews =
          await _getDataListNewsUseCase.getDataListNewsEntity();
      listNewsEntity.clear();
      listNewsEntity.addAll(listNews);
      inspect(listNews);
      isLoading.value = false;
    } catch (e) {
      final snackBar = SnackBar(
        content: Text('Failed to get list news: $e'),
        backgroundColor: Colors.red,
      );
      // Get the ScaffoldMessenger and show the SnackBar
      ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
      throw Exception('Failed to get list news: $e');
    }
  }
}
