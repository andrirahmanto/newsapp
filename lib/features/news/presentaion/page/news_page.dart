import 'package:flutter/material.dart';
import 'package:newsapp_bionic/features/news/presentaion/widget/news_card_widget.dart';

import '../../../../app/theme.dart';

class NewsPage extends StatelessWidget {
  NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'List News',
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
        child: ListView(
          children: [
            NewsCardWidget(),
            NewsCardWidget(),
            NewsCardWidget(),
            NewsCardWidget(),
            NewsCardWidget(),
            NewsCardWidget(),
            NewsCardWidget(),
            NewsCardWidget(),
          ],
        ),
      ),
    );
  }
}
