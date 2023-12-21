import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';

class CategoryItemWidget extends StatelessWidget {
  final String title;
  final String image;

  const CategoryItemWidget({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(12),
          decoration:
              const BoxDecoration(color: AppColors.bg1, shape: BoxShape.circle),
          child: CachedNetworkImage(
            placeholder: (_, __) => Container(
              color: AppColors.bg1,
            ),
            errorWidget: (_, __, ___) => Container(
              color: Colors.grey,
            ),
            imageUrl: image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: Text(title,
              maxLines: 2,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontSize: 12.sp)),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
