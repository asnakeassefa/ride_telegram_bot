import 'package:commercepal/features/addresses/presentation/edit_address_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/di/injector.dart';
import '../../../../app/utils/app_colors.dart';
import '../../../../app/utils/dialog_utils.dart';
import '../../../../core/addresses-core/data/dto/addresses_dto.dart';
import '../bloc/address_cubit.dart';
import '../bloc/address_state.dart';

class AddressItemWidget extends StatelessWidget {
  final Function onRefresh;
  final AddressItem address;

  const AddressItemWidget({
    super.key,
    required this.address,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: AppColors.bg1),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${address.city}",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "${address.subCity}",
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "${address.physicalAddress}",
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, EditAddressPage.routeName,
                          arguments: address)
                      .then((value) =>
                          {context.read<AddressCubit>().fetchAddresses()});
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Edit",
                    style: TextStyle(color: AppColors.colorPrimary),
                  ),
                ),
              ),
              BlocProvider(
                create: (ctx) => getIt<AddressCubit>(),
                child: BlocConsumer<AddressCubit, AddressState>(
                  listener: (ctx, state) {
                    if (state is AddressStateError) {
                      displaySnack(ctx, state.error);
                    }

                    if (state is AddressStateSuccess) {
                      displaySnack(ctx, state.msg);
                      onRefresh.call();
                    }
                  },
                  builder: (ctx, state) {
                    return InkWell(
                      onTap: () {
                        ctx.read<AddressCubit>().deleteAddress(address.id!);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: state is AddressStateLoading
                            ? const SizedBox(
                                height: 16,
                                width: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 1,
                                ),
                              )
                            : const Text(
                                "Delete",
                                style: TextStyle(color: AppColors.colorPrimary),
                              ),
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
