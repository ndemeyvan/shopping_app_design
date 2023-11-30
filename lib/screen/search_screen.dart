import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/data/model/classes_model.dart';
import 'package:artistic_app/data/model/search_item.dart';
import 'package:artistic_app/routes/route_name.dart';
import 'package:artistic_app/screen/widgets/custom_search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/search_categorie_item_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<SearchItemModel> listOfSearhItem = [
      SearchItemModel(
          id: 0,
          title: "Filming",
          numberOfCourses: 10,
          bgColor: Constant.blueOcean),
      SearchItemModel(
        id: 1,
        title: "Art",
        numberOfCourses: 20,
        bgColor: Constant.purple,
      ),
      SearchItemModel(
          id: 2,
          title: "photography",
          numberOfCourses: 20,
          bgColor: Constant.yellow),
      SearchItemModel(
        id: 3,
        title: "Music",
        numberOfCourses: 20,
        bgColor: Constant.red,
      ),
      SearchItemModel(
        id: 4,
        title: "Writting",
        numberOfCourses: 20,
        bgColor: Colors.grey,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Stack(
          children: [
            // Searhch an title
            SizedBox(
              height: Constant.getMediaQuery(context).height / 0.7.h
                ..h,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomSearchTextField(
                            hintText: 'Find a masterclass',
                            onChanged: (text) {},
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(13),
                            decoration: const BoxDecoration(
                                color: Constant.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: const Icon(
                              FontAwesomeIcons.sliders,
                              color: Constant.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "categories".toUpperCase(),
                          style: TextStyle(
                            color: Constant.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 55.sp,
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // search items
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: Constant.getMediaQuery(context).height / 1.35.h,
                child: Stack(
                  children: [
                    for (var i = 0; i < listOfSearhItem.length; i++) ...[
                      SearchCategoryItemWidget(
                        onPress: () {
                          Navigator.of(context)
                              .pushNamed(RouteName.classDetail, arguments: {
                            "classModel": ClassModel(
                                listOfCategory: [],
                                time: "",
                                title: listOfSearhItem[i].title,
                                bgColor: listOfSearhItem[i].bgColor)
                          });
                        },
                        duration: Duration(milliseconds: i * 400),
                        height: i == 0 ? 20 : (i * 110),
                        search: listOfSearhItem[i],
                      ),
                    ]
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
