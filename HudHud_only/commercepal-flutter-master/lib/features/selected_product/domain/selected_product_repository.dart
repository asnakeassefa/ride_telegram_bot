import '../data/dto/selected_product_dto.dart';

abstract class SelectedProductRepo {
  Future<SelectedProductDetails> getProductDetails(num prodId );
}
