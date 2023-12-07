import 'package:animate_do/animate_do.dart';
import 'package:artistic_app/data/product_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductTiemModel product;
  final Function() onPress;
  final int index;

  const ProductItemWidget(
      {Key? key,
      required this.onPress,
      required this.product,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: 200,
                height: 150,
                child: FadeIn(
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Heart icon
              Positioned(
                bottom: 10,
                right: 10,
                child: Icon(
                  index % 2 == 0
                      ? CupertinoIcons.heart_fill
                      : CupertinoIcons.heart,
                  color: index % 2 == 0
                      ? Colors.red
                      : Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          // Product label
          FadeIn(
            duration: const Duration(milliseconds: 350),
            child: Text(
              product.label,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16.sp,
              ),
            ),
          ),
          SizedBox(height: 6.h),
          // Product price
          Text(
            '\$ ${product.price.toStringAsFixed(2)}',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
