import 'package:commercepal/core/customer_loan/data/dto/financial_mark_ups_dto.dart';
import 'package:commercepal/core/data/prefs_data_impl.dart';
import 'package:injectable/injectable.dart';

import '../../../app/data/network/api_provider.dart';
import '../../../app/data/network/end_points.dart';
import '../../cart-core/dao/cart_dao.dart';
import '../../data/prefs_data.dart';
import '../../session/domain/session_repo.dart';
import '../domain/customer_loan_repo.dart';
import 'model/financial_institution_dto.dart';

@Injectable(as: CustomerLoanRepo)
class CustomerLoanRepoImpl implements CustomerLoanRepo {
  final ApiProvider apiProvider;
  final PrefsData prefsData;
  final CartDao cartDao;
  final SessionRepo sessionRepo;

  CustomerLoanRepoImpl(this.apiProvider, this.prefsData, this.cartDao, this.sessionRepo);

  @override
  Future<List<FinancialInstitution>> fetchFinancialInstitutions() async {
    try {
      List<FinancialInstitution> financialInst = [];
      final response =
          await apiProvider.get(EndPoints.financialInstitutions.url);
      response.forEach((v) {
        financialInst.add(FinancialInstitution.fromJson(v));
      });
      if (financialInst.isEmpty) throw 'Financial institutions not found';
      return financialInst;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<MarkUpItem>> fetchFinancialMarkUps(num institutionId) async {
    try {
      final response = await apiProvider
          .get("${EndPoints.financialMarkUps.url}?institution=$institutionId");
      if (response['statusCode'] == "000") {
        final responseObj = FinancialMarkUpsDto.fromJson(response);
        if (responseObj.markUps?.isEmpty == true) {
          throw 'Mark ups not found at the moment. Try later';
        }
        return responseObj.markUps!;
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<num> newProductPrice(num markId, num productPrice) async {
    try {
      final payload = {"MarkId": markId, "ProductPrice": productPrice};
      final response =
          await apiProvider.post(payload, EndPoints.calculateByProduct.url);
      if (response['statusCode'] == '000') {
        return response['newPrice'];
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> createLoanOrder(num markId) async {
    try {
      final orderRef = await prefsData.readData("order_ref");
      final isUserBusiness = await sessionRepo.hasUserSwitchedToBusiness();
      final payLoad = {
        "ServiceCode": "LOAN-REQUEST",
        "PaymentType": "FINANCE-INST",
        "PaymentMode": "FINANCIAL_AWASH",
        "UserType": isUserBusiness ? "B" : "C",
        "MarkUpId": markId,
        "LoanType": "COL",
        "OrderRef": orderRef,
        "Currency": "ETB"
      };
      final response = await apiProvider.post(payLoad, EndPoints.pay.url);
      // clear cart
      await cartDao.nuke();
      return "Order placed successfully";
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<num?> getDeliveryFee() async {
    try {
      final amount = await  prefsData.readData(PrefsKeys.deliveryFee.name);
      return num.tryParse(amount!);
    } catch (e) {
      rethrow;
    }
  }
}
