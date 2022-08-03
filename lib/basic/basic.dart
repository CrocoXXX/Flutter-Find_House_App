import 'package:flutter/material.dart';
import 'package:find_house_apps/theme.dart';

class Basic extends StatelessWidget {
  const Basic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 50,
                    left: 118,
                    right: 118,
                    bottom: 50,
                  ),
                  child: Text(
                    "Profile Picture",
                    style: primaryStyle,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Image.asset(
                    "assets/images/basics/primary.png",
                    width: 140,
                    height: 140,
                  ),
                ),
                Text(
                  "Lawrence Adi Noman",
                  style: nameStyle,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Flutter Apps Developer",
                  style: titleStyle,
                ),
                const SizedBox(
                  height: 70,
                ),
                Wrap(
                  // direction: Axis.vertical,
                  spacing: 38,
                  runSpacing: 40,
                  children: [
                    Image.asset(
                      "assets/images/basics/item1.png",
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      "assets/images/basics/item2.png",
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      "assets/images/basics/item3.png",
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      "assets/images/basics/item4.png",
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      "assets/images/basics/item5.png",
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      "assets/images/basics/item6.png",
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  width: 224,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        whiteColor,
                        greyColor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        modalBottom(context);
                      },
                      splashColor: Colors.amber,
                      child: Center(
                        child: Text(
                          "Update Profile",
                          style: updateStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 76,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> modalBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 290,
          padding: const EdgeInsets.symmetric(
            vertical: 50,
          ),
          color: whiteColor,
          child: Column(
            children: [
              Text(
                "Update Photo",
                style: photoStyle,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "You are only able to change \nthe picture profile once",
                style: titleStyle.copyWith(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 224,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: orangeColor,
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {},
                    splashColor: Colors.amber,
                    child: Center(
                      child: Text(
                        "Continue",
                        style: updateStyle.copyWith(
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
