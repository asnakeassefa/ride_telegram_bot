import '../data/dto/financial_mark_ups_dto.dart';
import '../data/model/financial_institution_dto.dart';

abstract class CustomerLoanRepo {
  Future<List<FinancialInstitution>> fetchFinancialInstitutions();

  Future<List<MarkUpItem>> fetchFinancialMarkUps(num institutionId);

  Future<num> newProductPrice(num markId, num productPrice);

  Future<String> createLoanOrder(num markId);

  Future<num?> getDeliveryFee();
}
