import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../app/utils/assets.dart';
import '../../domain/schema_settings_model.dart';

class PopularWidgetItem extends StatelessWidget {
  final SchemaItem schemaItem;

  const PopularWidgetItem({Key? key, required this.schemaItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.bg1,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
            child: CachedNetworkImage(
              width: 60,
              height: double.infinity,
              placeholder: (_, __) => Container(
                color: Colors.grey,
              ),
              errorWidget: (_, __, ___) => Container(
                color: Colors.grey,
              ),
              imageUrl: schemaItem.mobileThumbnail ?? "",
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 100,
                child: Text(
                  schemaItem.name ?? "...",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(fontSize: 14.sp),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                child: Text(
                  schemaItem.sectionDescription ?? "",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 12.sp),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
