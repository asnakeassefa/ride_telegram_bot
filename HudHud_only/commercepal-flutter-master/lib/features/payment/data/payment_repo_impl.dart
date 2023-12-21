import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/features/payment/data/dto/payment_modes_dto.dart';
import 'package:injectable/injectable.dart';

import '../domain/payment_repo.dart';

@Injectable(as: PaymentRepo)
class PaymentRepoImpl implements PaymentRepo {
  final ApiProvider apiProvider;

  PaymentRepoImpl(this.apiProvider);

  @override
  Future<List<PaymentMethods>> fetchPaymentModes() async {
    try {
      final response = await apiProvider.get(EndPoints.paymentModes.url);
      if (response['statusCode'] == '000') {
        final rObject = PaymentModesDto.fromJson(response);
        if (rObject.data?.paymentMethods?.isEmpty == true) {
          throw 'Payment modes not found';
        }
        return rObject.data!.paymentMethods!;
      } else {
        throw response['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
