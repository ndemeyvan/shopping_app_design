import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/constant/constant.dart';
import 'package:shopping_app/screen/home_screen.dart';
import 'package:shopping_app/screen/widgets/app_button_widget.dart';

import '../data/product_item_model.dart';

class DetailScreen extends StatefulWidget {
  final ProductTiemModel productTiemModel;
  const DetailScreen({super.key, required this.productTiemModel});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedIndex = 0;
  int selectedColorIndex = 0;
  String description = lorem(paragraphs: 2, words: 130);
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Theme.of(context).colorScheme.tertiary,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 55.h),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TitleInLeadingAppBar(
              displayBackArrow: true,
              onBackPress: () {
                Navigator.of(context).pop();
              },
              actions: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    Constant.marketIcon,
                    width: 30.w,
                  ),
                )
              ],
              backgroundColor: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //image
              SizedBox(
                height: 350.h,
                width: double.infinity,
                child: FadeIn(
                  child: Image.asset(
                    widget.productTiemModel.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //label and amount
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: FadeInLeft(
                            child: Text(
                              widget.productTiemModel.label,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ),
                        // Product price
                        FadeInRight(
                          child: Text(
                            '\$ ${widget.productTiemModel.price.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 15.h,
                    ),
                    // text
                    FadeIn(
                      child: ExpandableText(
                        description,
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    // Product list size
                    Wrap(
                      children: [
                        for (int index = 0;
                            index < widget.productTiemModel.sizeList.length;
                            index++) ...[
                          BounceInRight(
                            duration: Duration(
                                milliseconds:
                                    (index == 0 ? 2 : index + 1) * 400),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8) +
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  decoration: BoxDecoration(
                                    color: selectedIndex == index
                                        ? Theme.of(context).colorScheme.tertiary
                                        : Theme.of(context).colorScheme.primary,
                                    border: Border.all(
                                      color: selectedIndex == index
                                          ? Theme.of(context)
                                              .colorScheme
                                              .secondary
                                          : Theme.of(context)
                                              .colorScheme
                                              .primary,
                                      width: 2,
                                    ),
                                  ),
                                  child: Text(
                                    widget.productTiemModel.sizeList[index],
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: selectedIndex == index
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    //color
                    Wrap(
                      children: [
                        for (int index = 0;
                            index < widget.productTiemModel.colorsList.length;
                            index++) ...[
                          BounceInRight(
                            duration: Duration(
                                milliseconds:
                                    (index == 0 ? 2 : index + 1) * 350),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedColorIndex = index;
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50)),
                                    border: Border.all(
                                      color: selectedColorIndex == index
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : Colors.transparent,
                                      width: 2,
                                    ),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: widget
                                          .productTiemModel.colorsList[index],
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]
                      ],
                    ),

                    SizedBox(
                      height: 70.h,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomSheet: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: FadeInLeft(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 350),
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          color: Theme.of(context).colorScheme.secondary,
                          child: Icon(
                            isLiked
                                ? CupertinoIcons.heart_fill
                                : CupertinoIcons.heart,
                            color: isLiked
                                ? Colors.red
                                : Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    flex: 5,
                    child: FadeInRight(
                      child: AppButtonWidget(
                        text: "Buy now",
                        onPress: () {},
                        bgColor: Theme.of(context).colorScheme.primary,
                        textColor: Theme.of(context).colorScheme.tertiary,
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

  String replaceLastThreeWithDots(String str) {
    final pattern = RegExp(r'.{3}$');
    return str.replaceFirst(pattern, '...');
  }
}

class ExpandableText extends StatefulWidget {
  const ExpandableText(
    this.text, {
    Key? key,
    this.trimLines = 4,
  }) : super(key: key);

  final String text;
  final int trimLines;

  @override
  ExpandableTextState createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText> {
  bool _readMore = true;
  void _onTapLink() {
    setState(() => _readMore = !_readMore);
  }

  @override
  Widget build(BuildContext context) {
    TextSpan link = TextSpan(
        text: _readMore ? "... read more" : " read less",
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w700,
        ),
        recognizer: TapGestureRecognizer()..onTap = _onTapLink);
    Widget result = LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        assert(constraints.hasBoundedWidth);
        final double maxWidth = constraints.maxWidth;
        // Create a TextSpan with data
        final text = TextSpan(
          text: widget.text,
        );
        // Layout and measure link
        TextPainter textPainter = TextPainter(
          text: link,
          textDirection: TextDirection
              .rtl, //better to pass this from master widget if ltr and rtl both supported
          maxLines: widget.trimLines,
          ellipsis: '...',
        );
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final linkSize = textPainter.size;
        // Layout and measure text
        textPainter.text = text;
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final textSize = textPainter.size;
        // Get the endIndex of data
        int endIndex;
        final pos = textPainter.getPositionForOffset(Offset(
          textSize.width - linkSize.width,
          textSize.height,
        ));
        endIndex = textPainter.getOffsetBefore(pos.offset)!;
        TextSpan textSpan;
        if (textPainter.didExceedMaxLines) {
          textSpan = TextSpan(
            text: _readMore ? widget.text.substring(0, endIndex) : widget.text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
            children: <TextSpan>[link],
          );
        } else {
          textSpan = TextSpan(
            text: widget.text,
          );
        }
        return RichText(
          softWrap: true,
          overflow: TextOverflow.clip,
          text: textSpan,
        );
      },
    );
    return result;
  }
}
