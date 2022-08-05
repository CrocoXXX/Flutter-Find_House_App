import 'package:find_house_apps/themeProject.dart';
import 'package:flutter/material.dart';

import '../models/tipsModel.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  const TipsCard({Key? key, required this.tips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          child: Image.asset(
            tips.imageURL,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.name,
              style: blackStyle.copyWith(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              "Updated ${tips.updatedAt}",
              style: greyStyle2,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor2,
          ),
        ),
      ],
    );
  }
}
