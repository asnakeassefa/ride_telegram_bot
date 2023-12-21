abstract class SahayPayRepo {
  Future<String> accountLookUp(String phoneNumber);
  Future<String> paymentCheckOut(String phoneNumber);
  Future<String> confirmPaymentCheckOut(String transRef, String otp);
}
