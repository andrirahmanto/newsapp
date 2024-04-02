import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp_bionic/features/news/presentaion/widget/news_card_widget.dart';

import '../../../../app/theme.dart';

class DetailNewsPage extends StatelessWidget {
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
              'https://cdn0-production-images-kly.akamaized.net/ISgcRvNjvTerGCMXO5F-X8xOz50=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4787088/original/051855900_1711590836-6.jpg',
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
                    "13 Potret Kendaraan Mewah Harvey Moeis dan Sandra Dewi, Jet Pribadi 270 Miliar - Berderet Mobil Puluhan Miliar",
                    style: blackTextStyle.copyWith(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Senin, 13 Maret 2020 (Kompas.com)",
                    style: grayTextStyle.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Author: Wulan Noviarina Anggraini",
                    style: grayTextStyle.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Sudah bukan rahasia lagi jika Harvey Moeis adalah pecinta supercar dan aneka kendaraan mewah. Meski jarang dipamerkan secara langsung, namun beberapa koleksi Harvey pernah diunggah oleh Sandra Dewi di Insta Story akun Instagram pribadinya.",
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
