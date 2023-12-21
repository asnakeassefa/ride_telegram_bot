import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercepal/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBrandWidgetItem extends StatelessWidget {
  final String title;
  final String? imagePng;

  const TopBrandWidgetItem({Key? key, required this.title, this.imagePng})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.colorPrimary, width: 1),
              color: AppColors.bg1,
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(70)),
              child: CachedNetworkImage(
                placeholder: (_, __) => Container(
                  color: AppColors.bg1,
                ),
                errorWidget: (_, __, ___) => Container(
                  color: Colors.grey,
                ),
                imageUrl: imagePng ?? "",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text(title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      fontSize: 12.sp,
                    )),
          ),
        ],
      ),
    );
  }
}
