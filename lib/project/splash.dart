import 'package:find_house_apps/project/home.dart';
import 'package:find_house_apps/themeProject.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        // bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/projects/splash_image.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 30,
                    ),
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/projects/logo.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Find Cozy House \nto Stay and Happy",
                    style: blackStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Stop membuang banyak waktu \npada tempat yang tidak habitable",
                    style: greyStyle1,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 40,
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
                        borderRadius: BorderRadius.circular(17),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            "Explore Now",
                            style: whiteStyle,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
