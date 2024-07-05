import 'package:flutter/material.dart';
import 'package:flutter_web/core/colors.dart';
import 'package:flutter_web/url_launcher_helper.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/dimens.dart';

class PortfolioCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String url;

  const PortfolioCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(Dimens.radius32),
      onTap: () {
        UrlLauncherWrapper().launch(
          Uri.parse(url),
          LaunchMode.externalApplication,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: Dimens.size1,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(
            Dimens.radius32,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.orange,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    Dimens.radius32,
                  ),
                  topRight: Radius.circular(
                    Dimens.radius32,
                  ),
                ),
              ),
              width: double.infinity,
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(
                Dimens.size16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: Dimens.fontSize22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: Dimens.fontSize16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
