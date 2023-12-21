import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';
import '../../domain/schema_settings_model.dart';

class UnderItemWidget extends StatelessWidget {
  final SchemaItem? item;

  const UnderItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: AppColors.bg1,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      height: 120,
                      placeholder: (_, __) => Container(
                        color: AppColors.bg1,
                      ),
                      errorWidget: (_, __, ___) => Container(
                        color: Colors.grey,
                      ),
                      imageUrl: item?.mobileImage ?? "",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text(
                    "${item?.name}",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        fontSize: 14.sp, fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 14,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "${item?.offerPrice.formatCurrency(item?.currency)}",
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                            fontSize: 12.sp, color: AppColors.colorPrimary),
                      ),
                      // const Spacer(),
                      // if (item?.isDiscounted == "1")
                      //   Text("${item?.currency} ${item?.offerPrice}",
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .headline2
                      //           ?.copyWith(
                      //               fontSize: 12.sp,
                      //               color: AppColors.secondaryTextColor,
                      //               decoration: TextDecoration.lineThrough)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
