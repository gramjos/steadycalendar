import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import '../../config/constants.dart';

class CalPager extends StatelessWidget {
  static const String routeName = '/cal_pager';
  const CalPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            children: [
      'PawBandageDog@3x.png',
      'SittingDucks@3x.png',
      'TurtleSwim@3x.png'
    ]
                .map((name) => CachedNetworkImage(
                      imageUrl:
                          "${baseBackgroundImageURL(env['SUPABASE_PROJECT_ID']!)}/$name",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ))
                .toList()));
  }
}
