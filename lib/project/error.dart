import 'package:find_house_apps/project/home.dart';
import 'package:find_house_apps/themeBasic.dart';
import 'package:find_house_apps/themeProject.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: whiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/projects/error.png",
                width: MediaQuery.of(context).size.width - (2 * 38),
                height: 86,
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                "Where are you going?",
                style: blackStyle,
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                "Seems like the page that you were \nrequested is already gone",
                style: greyStyle1.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: horizontal,
                ),
                width: 210,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: purpleColor,
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (route) => false);
                    },
                    borderRadius: BorderRadius.circular(17),
                    child: Center(
                      child: Text(
                        "Back to Home",
                        style: whiteStyle,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
