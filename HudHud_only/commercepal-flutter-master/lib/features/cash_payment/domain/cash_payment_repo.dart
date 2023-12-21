abstract class CashPaymentRepo {
  Future<String> cashCheckOut(String phoneNumber, String cashType);
  Future<String> validateHelloCashPayment(String transactionRef);
}
