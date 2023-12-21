import 'package:commercepal/features/payment/data/dto/payment_modes_dto.dart';

abstract class PaymentRepo {
  Future<List<PaymentMethods>> fetchPaymentModes();
}
