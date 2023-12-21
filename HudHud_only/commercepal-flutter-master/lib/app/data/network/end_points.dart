enum EndPoints {
  schemaSettings,
  mobileCatalogue,
  parentCategories,
  categories,
  subCategories,
  products,
  searchProduct,
  login,
  addresses,
  checkOut,
  deliveryFee,
  paymentModes,
  pay,
  userDetails,
  userOrders,
  orderTracking,
  deleteAddress,
  cities,
  countries,
  addAddress,
  updateDeliveryAddress,
  userExists,
  registration,
  confirmCode,
  resetPassword,
  requestValidate,
  validateOtp,
  appVersion,
  changePassword,
  requestPassReset,
  confirmPassReset,
  saveHash,
  specialOrder,
  specialOrderImage,
  mySpecialOrders,
  financialInstitutions,
  financialMarkUps,
  calculateByProduct,
  businessCategories,
  businessProducts,
  businessSearchProducts,
  businessDeliveryFee,
  businessCheckOut
}

extension Url on EndPoints {
  static String baseUrl = 'https://api.commercepal.com:2096/prime/api/v1/app';
  static String baseUrl2 = 'https://api.commercepal.com:2096/prime/api/v1';
  static String baseUrlCustomer =
      'https://api.commercepal.com:2096/prime/api/v1/customer';
  static String baseUrlCustomer2 =
      'https://api.commercepal.com:2095/prime/api/v1/customer';
  static String payments = "https://api.commercepal.com:2095/payment/v1";
  static String financials =
      "https://api.commercepal.com:2087/api/v1/financial/payment";
  static String businessBaseUrl =
      'https://api.commercepal.com:2096/prime/api/v1/business';

  String get url {
    switch (this) {
      case EndPoints.schemaSettings:
        return "$baseUrl/dashboard/get-schema-settings";
      case EndPoints.mobileCatalogue:
        return "$baseUrl/dashboard/get-setting-mobile-catalogue";
      case EndPoints.parentCategories:
        return "$baseUrl/get-parent-categories";
      case EndPoints.categories:
        return '$baseUrl/get-categories';
      case EndPoints.subCategories:
        return '$baseUrl/get-sub-categories';
      case EndPoints.products:
        return "$baseUrl/get-products";
      case EndPoints.searchProduct:
        return "$baseUrl/search-products";
      case EndPoints.login:
        return "$baseUrl2/authenticate";
      case EndPoints.addresses:
        return "$baseUrl2/customer/get-delivery-address";
      case EndPoints.checkOut:
        return "$baseUrlCustomer/order/check-out";
      case EndPoints.deliveryFee:
        return "$baseUrlCustomer/order/assign-delivery-address";
      case EndPoints.paymentModes:
        return '$baseUrl2/service/payment-method?userType=C';
      case EndPoints.pay:
        return '$payments/request';
      case EndPoints.userDetails:
        return '$baseUrl2/get-details';
      case EndPoints.userOrders:
        return '$baseUrlCustomer2/order/my-orders';
      case EndPoints.orderTracking:
        return '$baseUrlCustomer2/order/order-detail-tracking';
      case EndPoints.deleteAddress:
        return '$baseUrlCustomer/delete-delivery-address';
      case EndPoints.cities:
        return "$baseUrl2/service/cities";
      case EndPoints.countries:
        return "$baseUrl2/service/countries";
      case EndPoints.addAddress:
        return "$baseUrlCustomer/add-delivery-address";
      case EndPoints.updateDeliveryAddress:
        return '$baseUrlCustomer/update-delivery-address';
      case EndPoints.userExists:
        return '$baseUrl2/auth-user';
      case EndPoints.registration:
        return '$baseUrl2/registration';
      case EndPoints.confirmCode:
        return '$baseUrl2/confirm-code';
      case EndPoints.resetPassword:
        return '$baseUrl2/reset-password';
      case EndPoints.requestValidate:
        return '$baseUrl2/validate-type-request';
      case EndPoints.validateOtp:
        return '$baseUrl2/validate-confirm-otp';
      case EndPoints.appVersion:
        return '$baseUrl2/service/app-version';
      case EndPoints.changePassword:
        return '$baseUrl2/change-password';
      case EndPoints.requestPassReset:
        return '$baseUrl2/password-type-reset';
      case EndPoints.confirmPassReset:
        return '$baseUrl2/confirm-code';
      case EndPoints.saveHash:
        return '$baseUrl2/service/post-hash';
      case EndPoints.specialOrder:
        return '$baseUrlCustomer/order/special/request-order';
      case EndPoints.specialOrderImage:
        return '$baseUrlCustomer/order/special/upload-image';
      case EndPoints.mySpecialOrders:
        return '$baseUrlCustomer/order/special/my-request-order';
      case EndPoints.financialInstitutions:
        return '$financials/financial-institutions';
      case EndPoints.financialMarkUps:
        return '$financials/get-mark-ups';
      case EndPoints.calculateByProduct:
        return '$financials/calculate-by-product';
      case EndPoints.businessCategories:
        return '$businessBaseUrl/shopping/get-categories';
      case EndPoints.businessProducts:
        return '$businessBaseUrl/shopping/get-products';
      case EndPoints.businessSearchProducts:
        return '$businessBaseUrl/shopping/search-products';
      case EndPoints.businessDeliveryFee:
        return '$businessBaseUrl/order/assign-delivery-address';
      case EndPoints.businessCheckOut:
        return "$businessBaseUrl/order/check-out";
      default:
        throw Exception('Url not set');
    }
  }
}
