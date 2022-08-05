import 'package:find_house_apps/models/cityModel.dart';
import 'package:find_house_apps/models/spaceModel.dart';
import 'package:find_house_apps/models/tipsModel.dart';
import 'package:find_house_apps/themeProject.dart';
import 'package:find_house_apps/widget_projects/bottom_bar.dart';
import 'package:find_house_apps/widget_projects/city_card.dart';
import 'package:find_house_apps/widget_projects/space_card.dart';
import 'package:find_house_apps/widget_projects/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: vertical,
          ),
          // padding: EdgeInsets.symmetric(
          //   vertical: vertical,
          // ),
          child: ListView(
            children: [
              // NOTE: TITLE/HEADER
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  "Explore Now",
                  style: blackStyle,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  "Mencari kosan yang cozy",
                  style: greyStyle1,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //NOTE: POPULAR CITIES
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  "Popular Cities",
                  style: regularStyle,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(
                      city: City(
                        id: 1,
                        name: "Jakarta",
                        imageURL: "assets/images/projects/cities1.png",
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                        id: 2,
                        name: "Bandung",
                        imageURL: "assets/images/projects/cities2.png",
                        isFavorite: true,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                        id: 3,
                        name: "Surabaya",
                        imageURL: "assets/images/projects/cities3.png",
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                        id: 4,
                        name: "Palembang",
                        imageURL: "assets/images/projects/cities4.png",
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                        id: 5,
                        name: "Aceh",
                        imageURL: "assets/images/projects/cities5.png",
                        isFavorite: true,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      city: City(
                        id: 6,
                        name: "Bogor",
                        imageURL: "assets/images/projects/cities6.png",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //NOTE: RECOMMENDED SPACE
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  "Recommended Space",
                  style: regularStyle,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontal,
                ),
                child: Container(
                  height: 400,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        children: [
                          SpaceCard(
                            space: Space(
                              id: 1,
                              name: "Kuretakeso Hott",
                              imageURL: "assets/images/projects/space1.png",
                              price: 52,
                              city: "Bandung",
                              country: "Germany",
                              rating: 4,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SpaceCard(
                            space: Space(
                              id: 2,
                              name: "Roemah Nenek",
                              imageURL: "assets/images/projects/space2.png",
                              price: 11,
                              city: "Seattle",
                              country: "Bogor",
                              rating: 5,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SpaceCard(
                            space: Space(
                              id: 3,
                              name: "Darrling How",
                              imageURL: "assets/images/projects/space3.png",
                              price: 20,
                              city: "Jakarta",
                              country: "Indonesia",
                              rating: 3,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SpaceCard(
                            space: Space(
                              id: 4,
                              name: "Orang Crown",
                              imageURL: "assets/images/projects/space4.png",
                              price: 552,
                              city: "Halla",
                              country: "Sumatra",
                              rating: 5,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SpaceCard(
                            space: Space(
                              id: 5,
                              name: "City of Cactus",
                              imageURL: "assets/images/projects/space5.png",
                              price: 20,
                              city: "Jakarta",
                              country: "Indonesia",
                              rating: 3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //NOTE: TIPS & GUIDANCE
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  "Tips & Guidance",
                  style: regularStyle,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontal,
                ),
                child: Column(
                  children: [
                    TipsCard(
                      tips: Tips(
                        id: 1,
                        name: "City Guidelines",
                        imageURL: "assets/images/projects/tips1.png",
                        updatedAt: "20 Apr",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TipsCard(
                      tips: Tips(
                        id: 2,
                        name: "Jakarta Fairship",
                        imageURL: "assets/images/projects/tips2.png",
                        updatedAt: "11 Dec",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80 + vertical,
              ),
            ],
          ),
        ),
      ),
      //NOTE: BOTTOMBAR
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * horizontal),
        margin: EdgeInsets.symmetric(
          horizontal: horizontal,
        ),
        decoration: BoxDecoration(
          color: backCitiesColor,
          borderRadius: BorderRadius.circular(
            23,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomBarCard(
              imageURL: "assets/images/projects/icon_home.png",
              isActive: true,
            ),
            BottomBarCard(
              imageURL: "assets/images/projects/icon_mail.png",
              isActive: false,
            ),
            BottomBarCard(
              imageURL: "assets/images/projects/icon_chat.png",
              isActive: false,
            ),
            BottomBarCard(
              imageURL: "assets/images/projects/icon_love.png",
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
