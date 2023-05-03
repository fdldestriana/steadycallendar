import 'package:flutter/material.dart';
import 'package:steadycallendar/config/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CalPager extends StatelessWidget {
  const CalPager({super.key});
  static const String routeName = '/cal_pager';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          'adventures-begin-mug@3x.png',
          'apple-and-juice@3x.png',
          'apples-on-tree@3x.png'
        ]
            .map(
              (image) => CachedNetworkImage(
                imageUrl:
                    '${baseBackgroundImageURL(dotenv.env['SUPABASE_PROJECT_ID']!)}/$image',
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            )
            .toList(),
      ),
    );
  }
}
