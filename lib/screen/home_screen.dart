import 'package:animate_do/animate_do.dart';
import 'package:artistic_app/constant/constant.dart';
import 'package:artistic_app/data/product_item_model.dart';
import 'package:artistic_app/routes/route_name.dart';
import 'package:artistic_app/screen/widgets/horiwontal_tabs_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/produc_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int selectedIndex = 0;

  List<ProductTiemModel> products = [
    ProductTiemModel(
      image: Constant.image1,
      label: 'Men hoodies',
      price: 10000,
      id: 7,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.green, Colors.green, Colors.yellow],
    ),
    ProductTiemModel(
      image: Constant.image2,
      label: 'Women sneakers',
      price: 4500,
      id: 2,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.green, Colors.green, Colors.yellow],
    ),
    ProductTiemModel(
      image: Constant.image4,
      label: 'Kids accessories',
      price: 5000,
      id: 2,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    ProductTiemModel(
      image: Constant.image1,
      label: 'Man Hobbies',
      price: 3000,
      id: 3,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    ProductTiemModel(
      image: Constant.image5,
      label: 'Chambalar',
      price: 1000,
      id: 5,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    ProductTiemModel(
      image: Constant.image2,
      label: 'Chambalar',
      price: 1000,
      id: 6,
      sizeList: ["XS", 'X', "XL", "XXL", "M"],
      colorsList: [Colors.orange, Colors.greenAccent, Colors.yellowAccent],
    ),
    // Add more product items here
  ];
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 55.h),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TitleInLeadingAppBar(
              displayBackArrow: false,
              title: 'Discover',
              actions: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                  child: FadeInRight(
                    duration: const Duration(seconds: 2),
                    child: Image.asset(
                      Constant.menu,
                      width: 30.w,
                    ),
                  ),
                )
              ],
              backgroundColor: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ),
        body: WillPopScope(
          onWillPop: () async {
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            return false;
          },
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    leading: Container(),
                    expandedHeight: 430.0.h,
                    backgroundColor: Colors.black,
                    flexibleSpace: FlexibleSpaceBar(
                      titlePadding: EdgeInsets.zero,
                      title: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FadeIn(
                    duration: const Duration(seconds: 2),

                                    child: Text(
                                      textAlign: TextAlign.start,
                                      "New Autumn \n2022 collection",
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        fontSize: 23.sp,
                                        fontFamily:
                                            Constant.criteriaCfRegular400,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      softWrap: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: FadeIn(
                    duration: const Duration(seconds: 2),

                                          child: Text(
                                            textAlign: TextAlign.start,
                                            "Choose the perfect outfit in our app",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                              fontFamily:
                                                  Constant.criteriaCfRegular400,
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.normal,
                                            ),
                                            softWrap: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      background: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: FadeIn(
                    duration: const Duration(seconds: 2),

                              child: Image.asset(
                                Constant.image5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            color: const Color(0xFF0b0b0b).withOpacity(0.3),
                          )
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // categories part
                    SizedBox(
                      height: 10.h,
                    ),
                    //Menu Item
                    HorizontalTabBar(
                      tabs: const [
                        'New Arrivals',
                        'Clothing',
                        'Accessories',
                        'Jeans',
                        'T-shirt',
                        'Shoes',
                      ],
                      selectedIndex: selectedIndex,
                      onTabSelected: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    //Items
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        crossAxisSpacing: 10,
                        // play with the aspect radio to
                        //manage render Error
                        childAspectRatio: 0.75,
                        children: products.map((product) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ProductItemWidget(
                              onPress: () {
                                // Navigate to detail page
                                Navigator.of(context).pushNamed(
                                    RouteName.detailScreen,
                                    arguments: {"productTiemModel": product});
                              },
                              product: product,
                              index: product.id,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

class TitleInLeadingAppBar extends StatelessWidget {
  TitleInLeadingAppBar({
    Key? key,
    this.displayBackArrow,
    this.title,
    this.onBackPress,
    required this.actions,
    required this.backgroundColor,
  }) : super(key: key);

  final String? title;
  bool? displayBackArrow;
  final List<Widget> actions;
  final Color backgroundColor;
  Function()? onBackPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (displayBackArrow != null && displayBackArrow == true) ...[
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              onBackPress?.call();
            },
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                Constant.leftArrow,
                width: 30.w,
              ),
            ),
          )
        ],

        if (title != null) ...[
          Text(
            title ?? "",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
        const Spacer(), // To align the title to the left
        Expanded(
          child: AppBar(
            leading: null, // Remove the default leading widget
            title: null, // Remove the default title widget
            backgroundColor: backgroundColor,
            elevation: 0, // Disable elevation for seamless integration
            actions: actions,
          ),
        ),
      ],
    );
  }
}
