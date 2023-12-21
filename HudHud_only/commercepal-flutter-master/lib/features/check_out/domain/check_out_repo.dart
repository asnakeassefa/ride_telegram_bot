import 'package:commercepal/features/check_out/data/models/address.dart';

abstract class CheckOutRepo {
    Future<List<Address>> fetchAddresses();
    Future<String> generateOrderRef();
    Future<num> getDeliveryFee(String orderRef, int? addressId);
 }
