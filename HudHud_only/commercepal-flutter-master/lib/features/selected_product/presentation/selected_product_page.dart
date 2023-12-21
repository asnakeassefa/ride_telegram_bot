import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:commercepal/app/app.dart';
import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:commercepal/core/cart-core/bloc/cart_core_cubit.dart';
import 'package:commercepal/core/cart-core/bloc/cart_core_state.dart';
import 'package:commercepal/features/cart/presentation/cart_page.dart';
import 'package:commercepal/features/dashboard/widgets/home_error_widget.dart';
import 'package:commercepal/features/dashboard/widgets/home_loading_widget.dart';
import 'package:commercepal/features/dashboard/widgets/home_search_field_widget.dart';
import 'package:commercepal/features/products/domain/product.dart';
import 'package:commercepal/features/selected_product/presentation/bloc/selected_product_cubit.dart';
import 'package:commercepal/features/selected_product/presentation/bloc/selected_product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app/utils/app_colors.dart';
import '../../../app/utils/assets.dart';
import '../../../core/cart-core/cart_widget.dart';
import '../../../core/widgets/product_item_widget.dart';
import '../../../core/widgets/product_price_widget.dart';
import '../data/dto/selected_product_dto.dart';
import 'widgets/product_review_item_widget.dart';
import 'widgets/selected_product_options.dart';

class SelectedProductPage extends StatefulWidget {
  static const routeName = "/selected_product_page";

  const SelectedProductPage({Key? key}) : super(key: key);

  @override
  State<SelectedProductPage> createState() => _SelectedProductPageState();
}

class _SelectedProductPageState extends State<SelectedProductPage> {
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const HomeSearchFieldWidget(),
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<SelectedProductCubit>()..fetchProduct(args['p_id']),
        child: BlocBuilder<SelectedProductCubit, SelectedProductState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => const HomeLoadingWidget(),
                error: (error) => HomeErrorWidget(error: error),
                loading: () => const HomeLoadingWidget(),
                product: (product) => SelectedProductDataWidget(
                      selectedProductDetails: product,
                    ));
          },
        ),
      ),
    );
  }
}

class SelectedProductDataWidget extends StatefulWidget {
  final SelectedProductDetails selectedProductDetails;

  const SelectedProductDataWidget(
      {Key? key, required this.selectedProductDetails})
      : super(key: key);

  @override
  State<SelectedProductDataWidget> createState() =>
      _SelectedProductDataWidgetState();
}

class _SelectedProductDataWidgetState extends State<SelectedProductDataWidget> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  num _selectedFeature = -1;

  @override
  void initState() {
    super.initState();
    setState(() {
      // set first sub product as default
      _selectedFeature =
          widget.selectedProductDetails.subProducts?[0].subProductId ?? -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.selectedProductDetails.productName ?? '',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.colorPrimary,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    widget.selectedProductDetails.descriptionBasedProduct ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: RatingBar.builder(
                        initialRating: (widget
                                    .selectedProductDetails.ratingCount
                                    ?.toDouble() ??
                                1) /
                            5,
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
                    const SizedBox(
                      width: 10,
                    ),
                    Text('${widget.selectedProductDetails.ratingCount}')
                  ],
                ),
                Stack(
                  children: [
                    CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                          viewportFraction: 1.0,
                          enlargeCenterPage: false,
                          autoPlay: true,
                          height: 200.0),
                      items:
                          widget.selectedProductDetails.productImages.map((i) {
                        return Builder(
                            builder: (BuildContext context) =>
                                CachedNetworkImage(
                                  imageUrl: i,
                                  errorWidget: (context, url, error) =>
                                      Container(
                                    color: Colors.grey.shade200,
                                  ),
                                  placeholder: (ctx, url) => Container(
                                    color: Colors.grey.shade200,
                                  ),
                                )
                            // return Image.asset("assets/images/response.jpeg",
                            //     width: double.infinity, fit: BoxFit.cover);
                            );
                      }).toList(),
                    ),
                    Positioned(
                      bottom: 0,
                      left: MediaQuery.of(context).size.width / 3,
                      right: MediaQuery.of(context).size.width / 3,
                      child: SizedBox(
                        height: 12,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: widget
                                .selectedProductDetails.productImages.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: index == _current
                                          ? AppColors.colorPrimary
                                          : Colors.grey,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(6))),
                                  width: 20,
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ])),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      childCount: widget.selectedProductDetails.features.length,
                      (ctx, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (index == 0)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: _buildTitle("Product Variations"),
                        ),
                      Text(widget.selectedProductDetails.features.keys
                              .elementAt(index) ??
                          ""),
                      const SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        //  height: index == 2 ? 30 : 80,
                        height: widget.selectedProductDetails.features.keys
                                    .elementAt(index)
                                    .toLowerCase() ==
                                "color"
                            ? 80
                            : 30,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: widget
                                .selectedProductDetails.features.values
                                .elementAt(index)
                                .length,
                            itemBuilder: (ctx, i) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedFeature = widget
                                        .selectedProductDetails.features.values
                                        .elementAt(index)[i]
                                        .subProdId!;

                                    // update price
                                    context
                                        .read<SelectedProductCubit>()
                                        .changeProductPrice(_selectedFeature);
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                        color: const Color(0xFFFCFCFC),
                                        border: Border.all(
                                            color: widget.selectedProductDetails
                                                        .features.values
                                                        .elementAt(index)[i]
                                                        .subProdId !=
                                                    _selectedFeature
                                                ? Colors.grey.shade300
                                                : AppColors.colorPrimary,
                                            width: 1)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (widget.selectedProductDetails
                                                .features.keys
                                                .elementAt(index)
                                                .toLowerCase() ==
                                            "color")
                                          CachedNetworkImage(
                                            height: 40,
                                            imageUrl: widget
                                                    .selectedProductDetails
                                                    .features
                                                    .values
                                                    .elementAt(index)[i]
                                                    .mobileImage ??
                                                '',
                                            errorWidget:
                                                (context, url, error) =>
                                                    Container(
                                              color: Colors.transparent,
                                            ),
                                            placeholder: (ctx, url) =>
                                                Container(
                                              color: Colors.grey.shade200,
                                            ),
                                          ),
                                        if (widget.selectedProductDetails
                                                .features.keys
                                                .elementAt(index)
                                                .toLowerCase() ==
                                            "color")
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        Text(
                                          widget.selectedProductDetails.features
                                                  .values
                                                  .elementAt(index)[i]
                                                  .featureValue ??
                                              '',
                                          style: const TextStyle(
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                );
              })),
              SliverList(
                  delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 20,
                ),
                SelectedProductOptions(
                  title: "Specifications",
                  subTitle: "Brand, Express Delivery, Model",
                  asset: Assets.paymentOptions,
                  data: widget.selectedProductDetails.prodDescriptions,
                ),
                const SelectedProductOptions(
                  title: "Delivery Options",
                  subTitle: "Paid Delivery for BR25 by Jun 25",
                  asset: Assets.track,
                ),
                const SelectedProductOptions(
                  title: "Service",
                  subTitle: "Warranty Available and 7-day returns",
                  asset: Assets.service,
                ),
                const SelectedProductOptions(
                  title: "Payment Options",
                  subTitle: "Credit Card, Mobile Money , Loans, Cash",
                  asset: Assets.paymentOptions,
                ),
                if (widget.selectedProductDetails.similarProducts?.isNotEmpty ==
                    true)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 30),
                    child: _buildTitle("Similar Products"),
                  ),
                if (widget.selectedProductDetails.similarProducts?.isNotEmpty ==
                    true)
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                        itemCount: widget
                            .selectedProductDetails.similarProducts?.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) => ProductItemWidget(
                              product: widget.selectedProductDetails
                                  .similarProducts![index],
                              width: 170,
                              onItemClick: (Product prod) {},
                            )),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 30),
                  child: _buildTitle("Reviews"),
                ),
              ])),
              if (widget.selectedProductDetails.reviews?.isNotEmpty == true)
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                        childCount:
                            widget.selectedProductDetails.reviews?.length,
                        (context, index) => ProductReviewItemWidget(
                              title: widget
                                  .selectedProductDetails.reviews![index].title,
                              name: widget.selectedProductDetails
                                  .reviews![index].reviewerName,
                              userImage: widget.selectedProductDetails
                                  .reviews![index].reviewerProfileImageUrl,
                              description: widget.selectedProductDetails
                                  .reviews![index].description,
                              date: widget
                                  .selectedProductDetails.reviews![index].date,
                              rating: widget.selectedProductDetails
                                  .reviews![index].rating,
                            )))
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: AppColors.priceBg,
          child: SafeArea(
            child: BlocConsumer<CartCoreCubit, CartCoreState>(
              listener: (context, state) {
                if (state is CartCoreStateData) {
                  displaySnack(context,  "${widget.selectedProductDetails.productName} has been added to cart");
                }
              },
              builder: (context, state) {
                return widget.selectedProductDetails.quantity! > 0
                    ? ProductPriceWidget(
                        displayVoucher: false,
                        totalPrice:
                            widget.selectedProductDetails.priceBasedOnSubProducts.formatCurrency(widget.selectedProductDetails.currency),
                        subTitle:
                            "Delivery Estimate ${widget.selectedProductDetails.deliveryDate}",
                        buttonText: "Add to cart",
                        onClick: () {
                          context.read<CartCoreCubit>().addCartItem(
                              widget.selectedProductDetails.toCartItem());
                        },
                      )
                    : Center(
                        child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Product out of stock',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ));
              },
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: Colors.black, fontSize: 18.sp),
    );
  }
}
