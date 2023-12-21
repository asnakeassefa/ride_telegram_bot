import 'package:commercepal/features/addresses/presentation/edit_address_page.dart';
import 'package:commercepal/features/check_out/data/models/address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/di/injector.dart';
import '../../../../app/utils/app_colors.dart';
import '../../../addresses/presentation/add_address_page.dart';
import '../../../dashboard/widgets/home_error_widget.dart';
import '../../../dashboard/widgets/home_loading_widget.dart';
import '../bloc/check_out_cubit.dart';
import '../bloc/check_out_state.dart';

enum AddressSelectedChoices { selected, notSelcted }

class CheckOutAddressesWidget extends StatefulWidget {
  final Function onAddressClicked;

  const CheckOutAddressesWidget({Key? key, required this.onAddressClicked})
      : super(key: key);

  @override
  State<CheckOutAddressesWidget> createState() =>
      _CheckOutAddressesWidgetState();
}

class _CheckOutAddressesWidgetState extends State<CheckOutAddressesWidget> {
  final AddressSelectedChoices _addSelected = AddressSelectedChoices.notSelcted;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckOutCubit>()..fetchAddresses(),
      child: BlocBuilder<CheckOutCubit, CheckOutState>(
        builder: (ctx, state) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping & Billing",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 20.sp),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AddAddressPage.routeName)
                          .then((value) =>
                              {ctx.read<CheckOutCubit>().fetchAddresses()});
                    },
                    child: Text("Add address",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: AppColors.colorPrimary)),
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              state.maybeWhen(
                  orElse: () => const Padding(
                        padding: EdgeInsets.all(20),
                        child: HomeLoadingWidget(),
                      ),
                  error: (error) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: HomeErrorWidget(error: error),
                      ),
                  addresses: (adds) => Column(
                        children: adds
                            .map((address) => Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: ListTile(
                                        onTap: () {
                                          _markSelectedAddress(
                                              ctx, address, adds);
                                        },
                                        leading: Radio<AddressSelectedChoices>(
                                          value: address.selected != true
                                              ? AddressSelectedChoices.selected
                                              : AddressSelectedChoices
                                                  .notSelcted,
                                          groupValue: _addSelected,
                                          onChanged: (value) {
                                            _markSelectedAddress(
                                                ctx, address, adds);
                                          },
                                        ),
                                        title: Text(
                                          "${address.name}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Country: ",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall
                                                      ?.copyWith(
                                                          color: AppColors
                                                              .secondaryTextColor)),
                                              TextSpan(
                                                  text: "${address.country}",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall
                                                      ?.copyWith())
                                            ])),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: "City: ",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall
                                                      ?.copyWith(
                                                          color: AppColors
                                                              .secondaryTextColor)),
                                              TextSpan(
                                                  text: "${address.city}",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall
                                                      ?.copyWith())
                                            ])),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Sub-county: ",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall
                                                      ?.copyWith(
                                                          color: AppColors
                                                              .secondaryTextColor)),
                                              TextSpan(
                                                  text: "${address.subCounty}",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall
                                                      ?.copyWith())
                                            ]))
                                          ],
                                        ),
                                        trailing: InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(context,
                                                    EditAddressPage.routeName,
                                                    arguments:
                                                        address.toAddressItem())
                                                .then((value) => ctx
                                                    .read<CheckOutCubit>()
                                                    .fetchAddresses());
                                          },
                                          child: Text(
                                            'Edit',
                                            style: Theme.of(context)
                                                .textTheme
                                                .displaySmall
                                                ?.copyWith(
                                                    color:
                                                        AppColors.colorPrimary,
                                                    fontSize: 16.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (adds.indexOf(address) ==
                                        adds.length - 1)
                                      const SizedBox(
                                        height: 100,
                                      )
                                  ],
                                ))
                            .toList(),
                      ))
            ],
          );
        },
      ),
    );
  }

  void _markSelectedAddress(
      BuildContext ctx, Address address, List<Address> adds) {
    ctx.read<CheckOutCubit>().markAddressAsSelected(address.id!.toInt(), adds);
    widget.onAddressClicked.call(address);
  }
}
