import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shopping_app/constant/constant.dart';
import 'package:shopping_app/routes/route_name.dart';
import 'package:shopping_app/screen/widgets/horiwontal_tabs_item.dart';
import 'package:shopping_app/screen/widgets/theme_mode_switcher.dart';
import 'package:shopping_app/theme/logic/theme_cubit.dart';
import 'widgets/produc_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int selectedIndex = 0;
  final zoomDrawerController = ZoomDrawerController();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
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
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          toggleDrawer();
                        },
                        child: Image.asset(
                          Constant.menu,
                          width: 30.w,
                        ),
                      ),
                    ),
                  )
                ],
                backgroundColor: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ),
          body: ZoomDrawer(
            menuBackgroundColor: Theme.of(context).colorScheme.tertiary,
            controller: zoomDrawerController,
            style: DrawerStyle.defaultStyle,
            menuScreen: menuScreen(),
            mainScreen: mainScreen(),
            borderRadius: 24.0,
            angle: -20.0,
            slideWidth: MediaQuery.of(context).size.width * .65,
            openCurve: Curves.fastOutSlowIn,
            closeCurve: Curves.bounceIn,
          )),
    );
  }

  void toggleDrawer() {
    zoomDrawerController.toggle?.call();
  }

  Widget menuScreen() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // profile image
          SizedBox(
            height: 90,
            width: 90,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  100.0), // Change 100.0 to desired radius
              child: Image.asset(
                Constant.image1,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          // user name
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Yvan Ndeme',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0,
                  ),
                ),
              ],
            ),
          ),
          //
          SizedBox(
            height: 10.h,
          ),

          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return ThemeModeSwitcher(
                isDarkMode: state.isDarkTheme,
                onChanged: (isDarkMode) {
                  context.read<ThemeCubit>().changeTheme();
                },
              );
            },
          )
        ],
      ),
    );
  }

  Widget mainScreen() {
    return WillPopScope(
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
                                    color: Colors.white,
                                    fontSize: 23.sp,
                                    fontFamily: Constant.criteriaCfRegular400,
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
                                          color: Colors.white,
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
                    children: Constant.products.map((product) {
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
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary),
          ),
        ],
        const Spacer(), // To align the title to the left
        Expanded(
          child: AppBar(
            leading: Container(), // Remove the default leading widget
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
