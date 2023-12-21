import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';
import '../../../../core/cart-core/bloc/cart_core_cubit.dart';
import '../../../../core/cart-core/domain/cart_item.dart';

class CartItemWidget extends StatefulWidget {
  final CartItem cartItem;

  const CartItemWidget({
    super.key,
    required this.cartItem,
  });

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  int _quantity = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _quantity = widget.cartItem.quantity ?? 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                context.read<CartCoreCubit>().deleteItem(widget.cartItem);
              },
              child: const Icon(Icons.delete)),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFC4C4C4).withOpacity(0.4),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
              child: CachedNetworkImage(
                width: 80,
                height: 100,
                placeholder: (_, __) => Container(
                  color: Colors.grey,
                ),
                errorWidget: (_, __, ___) => Container(
                  color: Colors.grey,
                ),
                imageUrl: "${widget.cartItem.image}",
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.cartItem.name}",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.colorPrimary, fontSize: 14.sp),
                ),
                if (widget.cartItem.description != null)
                  const SizedBox(
                    height: 5,
                  ),
                if (widget.cartItem.description != null)
                  Text(
                    "${widget.cartItem.description}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 13.sp, color: Colors.black),
                  ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      widget.cartItem.price.formatCurrency(widget.cartItem.currency),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.black, fontSize: 14),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      decoration: const BoxDecoration(color: AppColors.bg1),
                      child: InkWell(
                        onTap: () {
                          if (_quantity > 1) {
                            setState(() {
                              _quantity -= 1;
                            });
                            context
                                .read<CartCoreCubit>()
                                .changeCartItemQuantity(
                                    widget.cartItem, _quantity);
                          }
                        },
                        child: Text(
                          "-",
                          style:
                              TextStyle(fontSize: 18.sp, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "$_quantity",
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      decoration: const BoxDecoration(color: AppColors.bg1),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _quantity += 1;
                          });
                          context.read<CartCoreCubit>().changeCartItemQuantity(
                              widget.cartItem, _quantity);
                        },
                        child: Text(
                          "+",
                          style:
                              TextStyle(fontSize: 18.sp, color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
