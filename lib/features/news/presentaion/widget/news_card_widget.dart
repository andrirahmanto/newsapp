import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/theme.dart';

class NewsCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed("/detail"),
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
                'https://cdn0-production-images-kly.akamaized.net/ISgcRvNjvTerGCMXO5F-X8xOz50=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4787088/original/051855900_1711590836-6.jpg',
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
                    "13 Maret 2020",
                    style: grayTextStyle.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "13 Potret Kendaraan Mewah Harvey Moeis dan Sandra Dewi, Jet Pribadi 270 Miliar - Berderet Mobil Puluhan Miliar",
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
