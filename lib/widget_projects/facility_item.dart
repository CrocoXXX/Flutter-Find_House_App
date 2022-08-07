import 'package:find_house_apps/themeProject.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageURL;
  final int total;

  const FacilityItem({
    Key? key,
    required this.name,
    required this.imageURL,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageURL,
          width: 32,
          height: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: "$total",
            style: purpleStyle.copyWith(
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: " $name",
                style: greyStyle2.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
