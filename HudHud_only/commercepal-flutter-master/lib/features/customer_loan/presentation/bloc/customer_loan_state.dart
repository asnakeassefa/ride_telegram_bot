import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/new_priced_product.dart';
import '../../data/prices_summary.dart';


part 'customer_loan_state.freezed.dart';

@freezed
class CustomerLoanState with _$CustomerLoanState {
  const factory CustomerLoanState.init() = CustomerLoanStateInit;

  const factory CustomerLoanState.loading(String msg) =
      CustomerLoanStateLoading;

  const factory CustomerLoanState.error(String msg) = CustomerLoanStateError;

  const factory CustomerLoanState.displayError(String msg) =
      CustomerLoanStateDisplayError;

  const factory CustomerLoanState.success(String msg) =
      CustomerLoanStateSuccess;

  const factory CustomerLoanState.products(
          List<NewPricedProduct> products, PricesSummary pricesSummary) =
      CustomerLoanStateProducts;
}
