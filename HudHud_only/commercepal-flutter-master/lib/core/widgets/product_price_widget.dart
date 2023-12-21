import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/utils/app_colors.dart';

class ProductPriceWidget extends StatelessWidget {
  final bool displayVoucher;
  final String? title;
  final String? subTitle;
  final String? totalPrice;
  final String? buttonText;
  final VoidCallback? onClick;
  final double? padding;

  const ProductPriceWidget(
      {super.key,
      this.displayVoucher = false,
      this.subTitle,
      this.totalPrice,
      this.buttonText = 'Checkout',
      this.onClick, this.padding, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.priceBg,
      padding:  EdgeInsets.symmetric(vertical: padding ?? 6),
      width: double.infinity,
      child: Column(
        children: [
          if (displayVoucher) _buildVoucherField(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: title ?? "Total:",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontSize: 18.sp,
                                  color: AppColors.secondaryTextColor
                                      .withOpacity(0.8))),
                      TextSpan(
                          text: " $totalPrice",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontSize: 18.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600))
                    ])),
                    const SizedBox(
                      height: 4,
                    ),
                    if (subTitle != null)
                      Text(
                        subTitle ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.black, fontSize: 14.sp),
                      )
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    if (onClick != null) {
                      onClick!();
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.colorPrimary)),
                  child: Text(buttonText!),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _buildVoucherField() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 16, top: 14, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    isDense: true,
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.colorPrimary, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.colorPrimary, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    hintStyle: TextStyle(
                        color: AppColors.colorPrimary, fontSize: 14.sp),
                    hintText: "Voucher Card"),
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              color: AppColors.colorPrimary,
              child: Text(
                "APPLY",
                style: TextStyle(color: Colors.white, fontSize: 14.sp),
              ))
        ],
      ),
    );
  }
}
