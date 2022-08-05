import 'package:find_house_apps/themeProject.dart';
import 'package:flutter/material.dart';

class BottomBarCard extends StatelessWidget {
  final String imageURL;
  final bool isActive;

  const BottomBarCard(
      {Key? key, required this.imageURL, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        (isActive)
            ? Image.asset(
                imageURL,
                width: 24,
                height: 24,
                color: purpleColor,
              )
            : Image.asset(
                imageURL,
                width: 24,
                height: 24,
              ),
        const Spacer(),
        (isActive)
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(
                      1000,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
