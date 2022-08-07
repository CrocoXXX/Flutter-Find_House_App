import 'package:find_house_apps/themeProject.dart';
import 'package:flutter/material.dart';

class DetailSpace5 extends StatelessWidget {
  const DetailSpace5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/projects/cities6.png",
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: horizontal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/images/projects/btn_back.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Image.asset(
                    "assets/images/projects/btn_wishlist.png",
                    width: 40,
                    height: 40,
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
