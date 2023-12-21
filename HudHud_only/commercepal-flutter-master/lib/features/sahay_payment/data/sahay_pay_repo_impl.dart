import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/features/sahay_payment/data/dto/sahay_acc_confirm_dto.dart';
import 'package:commercepal/features/sahay_payment/data/dto/sahay_pay_checkout_dto.dart';
import 'package:commercepal/features/sahay_payment/domain/sahay_pay_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/cart-core/dao/cart_dao.dart';
import '../../../core/data/prefs_data.dart';
import '../../../core/session/domain/session_repo.dart';

@Injectable(as: SahayPayRepo)
class SahayPayRepoImpl implements SahayPayRepo {
  final ApiProvider apiProvider;
  final PrefsData prefsData;
  final CartDao cartDao;
  final SessionRepo sessionRepo;

  SahayPayRepoImpl(
      this.apiProvider, this.prefsData, this.cartDao, this.sessionRepo);

  @override
  Future<String> accountLookUp(String phoneNumber) async {
    try {
      final isUserBusiness = await sessionRepo.hasUserSwitchedToBusiness();
      final payLoad = {
        "UserType": isUserBusiness ? "B" : "C",
        "ServiceCode": "SAHAY-LOOKUP",
        "PhoneNumber": phoneNumber
      };
      final response = await apiProvider.post(payLoad, EndPoints.pay.url);
      if (response['statusCode'] == '000') {
        final resObject = SahayAccConfirmDto.fromJson(response);
        if (resObject.customerName == null) {
          throw 'Unable to verify phone number';
        }
        return resObject.customerName!;
      } else {
        throw response['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> paymentCheckOut(String phoneNumber) async {
    try {
      final isUserBusiness = await sessionRepo.hasUserSwitchedToBusiness();

      final orderRef = await prefsData.readData("order_ref");
      final payLoad = {
        "ServiceCode": "CHECKOUT",
        "PaymentType": "SAHAY",
        "PaymentMode": "SAHAY",
        "UserType": isUserBusiness ? "B" : "C",
        "PhoneNumber": phoneNumber,
        "OrderRef": orderRef,
        "Currency": "ETB"
      };

      final response = await apiProvider.post(payLoad, EndPoints.pay.url);
      if (response['statusCode'] == '000') {
        final resObject = SahayPayCheckoutDto.fromJson(response);
        if (resObject.transRef == null) {
          throw 'Unable to get transaction ref! Try again';
        }
        return resObject.transRef!;
      } else {
        throw response['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> confirmPaymentCheckOut(String transRef, String otp) async {
    try {
      final isUserBusiness = await sessionRepo.hasUserSwitchedToBusiness();
      final orderRef = await prefsData.readData("order_ref");
      final payLoad = {
        "ServiceCode": "SAHAY-CONFIRM-PAYMENT",
        "UserType": isUserBusiness ? "B" : "C",
        "OrderRef": orderRef,
        "TransRef": transRef,
        "otp": otp
      };
      final response = await apiProvider.post(payLoad, EndPoints.pay.url);
      if (response['statusCode'] == '000') {
        await cartDao.nuke();

        return 'Order successfully placed';
      } else {
        throw response['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
