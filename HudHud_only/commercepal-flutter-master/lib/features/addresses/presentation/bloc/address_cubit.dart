import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/addresses-core/data/dto/addresses_dto.dart';
import '../../../../core/addresses-core/domain/address_repo.dart';
import 'address_state.dart';

@injectable
class AddressCubit extends Cubit<AddressState> {
  final AddressRepo addressRepo;
  List<AddressItem> addressData = [];

  AddressCubit(this.addressRepo) : super(const AddressState.init());

  void fetchAddresses() async {
    try {
      emit(const AddressState.loading());
      final adds = await addressRepo.getAddresses();
      addressData
        ..clear()
        ..addAll(adds);
      emit(AddressState.data(addressData));
    } catch (e) {
      emit(AddressState.error(e.toString()));
    }
  }

  void removeFromAddress(num addressId) {
    //  needed to update previous state
    emit(const AddressState.loading());

    addressData.removeWhere((element) => element.id == addressId);
    emit(AddressState.data(addressData));
  }

  void addAddress(String subCity, String physicalAddress, num? cityId,
      num? countryId, String? country) async {
    try {
      if (cityId == null || countryId == null) {
        emit(const AddressState.error("Please select your city"));
        return;
      }

      if (country == null) {
        emit(const AddressState.error("Please select your country"));
        return;
      }

      emit(const AddressState.loading());
      final response = await addressRepo.addAddress(
          subCity, physicalAddress, cityId, countryId, country);
      emit(AddressState.success(response));
    } catch (e) {
      emit(AddressState.error(e.toString()));
    }
  }

  void updateAddress(num id, String subCity, String physicalAddress,
      num? cityId, num? countryId, String? country) async {
    try {
      if (cityId == null || countryId == null) {
        emit(const AddressState.error("Please select your city"));
        return;
      }

      if (country == null) {
        emit(const AddressState.error("Please select your country"));
        return;
      }

      emit(const AddressState.loading());
      final response = await addressRepo.updateAddress(
          id, subCity, physicalAddress, cityId, countryId, country);
      emit(AddressState.success(response));
    } catch (e) {
      emit(AddressState.error(e.toString()));
    }
  }

  // call this is a different cunit instance
  void deleteAddress(num addressId) async {
    try {
      emit(const AddressState.loading());
      final deleteResponse = await addressRepo.deleteAddress(addressId);
      emit(AddressState.success(deleteResponse));
    } catch (e) {
      emit(AddressState.error(e.toString()));
    }
  }
}
