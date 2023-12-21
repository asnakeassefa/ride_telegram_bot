import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';
import '../../data/models/user_orders_dto.dart';

class UserOrderItemWidget extends StatelessWidget {
  const UserOrderItemWidget({
    super.key,
    required this.order,
  });

  final UserOrder order;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: AppColors.bg1,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  order.orderRef ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontSize: 14.sp),
                ),
                const Spacer(),
                Text(
                  order.orderDate ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontSize: 12.sp),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Paid Via",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontSize: 10.sp),
                    ),
                    Text(
                      order.paymentMethod ?? '..',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "ETB ${order.totalPrice}",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(),
                )
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                "Order Summary",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: 12.sp, color: AppColors.colorPrimary),
              ),
            )
          ],
        ),
      ),
    );
  }
}
