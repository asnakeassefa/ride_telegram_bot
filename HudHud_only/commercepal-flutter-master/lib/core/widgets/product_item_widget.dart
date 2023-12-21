import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:commercepal/core/cart-core/bloc/cart_core_cubit.dart';
import 'package:commercepal/core/cart-core/domain/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/utils/app_colors.dart';
import '../../features/products/domain/product.dart';

class ProductItemWidget extends StatelessWidget {
  final double? width;
  final Product product;
  final Function? onItemClick;

  const ProductItemWidget(
      {Key? key, required this.product, this.width, this.onItemClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onItemClick?.call(product);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          children: [
            Container(
              width: width,
              decoration: const BoxDecoration(
                color: AppColors.bg1,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
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
                        imageUrl: product.image ?? "",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(
                      "${product.name}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline3?.copyWith(
                          fontSize: 14.sp, fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  if (product.rating != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 14,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ),
                  if (product.currency != null)
                    const SizedBox(
                      height: 10,
                    ),
                  if (product.offerPrice != null)
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            product.offerPrice.toString().formatCurrency(product.currency),
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                ?.copyWith(
                                    fontSize: 14.sp,
                                    color: AppColors.colorPrimary),
                          ),
                        ),
                        const Spacer(),
                        if (product.isDiscounted.toString() == "1")
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text("${product.currency} ${product.offerPrice}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    ?.copyWith(
                                        fontSize: 12.sp,
                                        color: AppColors.secondaryTextColor,
                                        decoration:
                                            TextDecoration.lineThrough)),
                          ),
                      ],
                    ),
                  if (product.quantity! > 0)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 9),
                      child: ElevatedButton(
                          onPressed: () {
                            if (product.subProducts != null &&
                                product.subProducts! > 1) {
                              onItemClick?.call(product);
                            } else {
                              context
                                  .read<CartCoreCubit>()
                                  .addCartItem(product.toCartItem());
                            }
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => AppColors.colorPrimary)),
                          child: Text(
                            "Add to cart",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Colors.white),
                          )),
                    ),
                  if (product.quantity! == 0)
                    Container(
                      margin: const EdgeInsets.only(top: 6, bottom: 8),
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Product out of stock',
                        style:
                            TextStyle(color: Colors.redAccent, fontSize: 13.sp),
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
}
