import 'package:find_house_apps/project/error.dart';
import 'package:find_house_apps/themeProject.dart';
import 'package:find_house_apps/widget_projects/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher_android/url_launcher_android.dart';

//URL VALID
// final Uri _url = Uri.parse("https://goo.gl/maps/SyZx2yjWB1yR6AeH8");
final Uri _url = Uri.parse("qwertyuiop");
final Uri _urll = Uri.parse("tel:+6281225077091");

//URL INVALID
final Uri _urlError = Uri.parse("qwertyuiop");

class DetailSpace1 extends StatelessWidget {
  const DetailSpace1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launchUrl(url);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    // Future<void> _launchUrl() async {
    //   if (!await launchUrl(_url)) {
    //     // throw 'Could not launch $_url';
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => ErrorPage(),
    //       ),
    //     );
    //   }
    // }

    // Future<void> _launchUrll() async {
    //   if (!await launchUrl(_urll)) {
    //     throw 'Could not launch $_urll';
    //   }
    // }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/projects/cities3.png",
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      //NOTE: TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: horizontal,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kuretakeso Hott",
                                  style: blackStyle,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: "\$52",
                                    style: purpleStyle,
                                    children: [
                                      TextSpan(
                                        text: " / month",
                                        style: greyStyle2,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/projects/icon_star.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/projects/icon_star.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/projects/icon_star.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/projects/icon_star.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/projects/icon_star.png",
                                  width: 20,
                                  height: 20,
                                  color: greyColor2,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //NOTE: MAIN FACILITIES
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                        ),
                        child: Text(
                          "Main Facilities",
                          style: regularStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: horizontal,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FacilityItem(
                              imageURL:
                                  "assets/images/projects/icon_kitchen.png",
                              name: "Kitchen",
                              total: 2,
                            ),
                            FacilityItem(
                              imageURL: "assets/images/projects/icon_bed.png",
                              name: "Bedroom",
                              total: 3,
                            ),
                            FacilityItem(
                              imageURL:
                                  "assets/images/projects/icon_cupboard.png",
                              name: "Big Lemari",
                              total: 3,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //NOTE: PHOTOS
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          bottom: 12,
                        ),
                        child: Text(
                          "Photos",
                          style: regularStyle,
                        ),
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(
                              width: 24,
                            ),
                            Image.asset(
                              "assets/images/projects/pic1.png",
                              width: 110,
                              height: 88,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "assets/images/projects/pic2.png",
                              width: 110,
                              height: 88,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "assets/images/projects/pic3.png",
                              width: 110,
                              height: 88,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "assets/images/projects/pic4.png",
                              width: 110,
                              height: 88,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "assets/images/projects/pic5.png",
                              width: 110,
                              height: 88,
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //NOTE: LOCATION
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          bottom: 12,
                        ),
                        child: Text(
                          "Location",
                          style: regularStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: horizontal,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jln. Kappan Sukses No. 20 \nPalembang",
                              style: greyStyle1.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            InkWell(
                              // onTap: _launchUrl,
                              // onTap: _launchUrlError,
                              onTap: () {
                                launchUrl("qwertyuiop");
                              },
                              child: Image.asset(
                                "assets/images/projects/btn_location.png",
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      //NOTE: BUTTON
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 40,
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: horizontal,
                          ),
                          width: MediaQuery.of(context).size.width -
                              (2 * horizontal),
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
                                // _launchUrll();
                                launchUrl("tel:+6281225077091");
                              },
                              borderRadius: BorderRadius.circular(17),
                              child: Center(
                                  child: Text(
                                "Book Now",
                                style: whiteStyle,
                              )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
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
            ),
          ],
        ),
      ),
    );
  }
}

// Future<void> _launchUrl() async {
//   if (!await launchUrl(_url)) {
//     throw 'Could not launch $_url';
//   }
// }

// launchUrl(String url) async {
//   if (await canLaunch(url)) {
//     launchUrl(url);
//   } else {
//     throw (url);
//   }
// }
