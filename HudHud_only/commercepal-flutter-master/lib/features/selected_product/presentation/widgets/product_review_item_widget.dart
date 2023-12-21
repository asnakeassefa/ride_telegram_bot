import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';

class ProductReviewItemWidget extends StatelessWidget {
  final String? title;
  final String? userImage;
  final String? name;
  final num? rating;
  final String? description;
  final String? date;

  const ProductReviewItemWidget({
    super.key,
    this.title,
    this.userImage,
    this.name,
    this.rating,
    this.description,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: 18.sp),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    height: 25,
                    width: 25,
                    placeholder: (_, __) => Container(
                      color: AppColors.bg1,
                    ),
                    errorWidget: (_, __, ___) => Container(
                      color: Colors.grey,
                    ),
                    imageUrl: userImage ?? '',
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(name ?? ''),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "$rating",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.black),
                ),
                RatingBar.builder(
                  initialRating: rating?.toDouble() ?? 1,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              date ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "$description",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.primaryTextColor),
            ),
          )
        ],
      ),
    );
  }
}
