

import 'package:commercepal/core/addresses-core/data/dto/addresses_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_state.freezed.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.init() = AddressStateInit;
  const factory AddressState.loading() = AddressStateLoading;
  const factory AddressState.error(String error) = AddressStateError;
  const factory AddressState.data(List<AddressItem> data) = AddressStateData;
  const factory AddressState.success(String msg) = AddressStateSuccess;
}
