import 'package:find_house_apps/themeProject.dart';
import 'package:flutter/material.dart';

import '../models/spaceModel.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  const SpaceCard({Key? key, required this.space}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(
                  space.imageURL,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/projects/icon_star.png",
                                width: 18,
                                height: 18,
                              ),
                              Text(
                                "${space.rating}/5",
                                style: whiteStyle.copyWith(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              space.name,
              style: blackStyle.copyWith(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            Text.rich(
              TextSpan(
                text: "\$${space.price}",
                style: purpleStyle,
                children: [
                  TextSpan(
                    text: " / month",
                    style: greyStyle2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "${space.city}, ${space.country}",
              style: greyStyle2.copyWith(
                fontSize: 14,
              ),
            )
          ],
        ),
      ],
    );
  }
}
