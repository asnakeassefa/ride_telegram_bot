import 'package:commercepal/features/addresses/presentation/addresses_page.dart';
import 'package:commercepal/features/cash_payment/presentation/cash_payment_page.dart';
import 'package:commercepal/features/change_password/presentation/change_password_page.dart';
import 'package:commercepal/features/check_out/presentation/check_out_page.dart';
import 'package:commercepal/features/dashboard/dashboard_page.dart';
import 'package:commercepal/features/order_tracking/presentation/order_tracking_page.dart';
import 'package:commercepal/features/payment/presentation/payment_page.dart';
import 'package:commercepal/features/products/presentation/products_page.dart';
import 'package:commercepal/features/selected_product/presentation/selected_product_page.dart';
import 'package:commercepal/features/special_order/presentantion/special_order_page.dart';
import 'package:commercepal/features/splash/splash_page.dart';
import 'package:commercepal/features/sub_categories/presentation/sub_categories_page.dart';
import 'package:commercepal/features/user_orders/presentation/user_orders_page.dart';
import 'package:commercepal/features/user_registration/presentation/user_registration_page.dart';
import 'package:commercepal/features/validate_phone_email/presentation/validate_phone_email_page.dart';
import 'package:flutter/material.dart';

import '../../features/addresses/presentation/add_address_page.dart';
import '../../features/addresses/presentation/edit_address_page.dart';
import '../../features/customer_loan/presentation/customer_loan_page.dart';
import '../../features/force_update/force_update_page.dart';
import '../../features/login/presentation/login_page.dart';
import '../../features/reset_password/presentation/reset_pass_page.dart';
import '../../features/sahay_payment/presentation/sahay_pay_page.dart';
import '../../features/set_password/presentation/user_set_password_page.dart';
import '../../features/special_order/presentantion/list_special_orders_page.dart';

final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => const SplashPage(),
  DashboardPage.routeName: (context) => const DashboardPage(),
  SubCategoriesPage.routeName: (context) => const SubCategoriesPage(),
  ProductsPage.routeName: (context) => const ProductsPage(),
  SelectedProductPage.routeName: (context) => const SelectedProductPage(),
  LoginPage.routeName: (context) => const LoginPage(),
  CheckOutPage.routeName: (context) => const CheckOutPage(),
  PaymentPage.routeName: (context) => const PaymentPage(),
  SahayPayPage.routeName: (context) => const SahayPayPage(),
  CashPaymentPage.routeName: (context) => const CashPaymentPage(),
  UserOrdersPage.routeName: (context) => const UserOrdersPage(),
  OrderTrackingPage.routeName: (context) => const OrderTrackingPage(),
  AddressesPage.routeName: (context) => const AddressesPage(),
  AddAddressPage.routeName: (context) => const AddAddressPage(),
  EditAddressPage.routeName: (context) => const EditAddressPage(),
  UserRegistrationPage.routeName: (context) => const UserRegistrationPage(),
  UserSetPasswordPage.routeName: (context) => const UserSetPasswordPage(),
  ValidatePhoneEmailPage.routeName: (context) => const ValidatePhoneEmailPage(),
  ForceUpdatePage.routeName: (context) => const ForceUpdatePage(),
  ChangePasswordPage.routeName: (context) => const ChangePasswordPage(),
  ResetPassPage.routeName: (context) => const ResetPassPage(),
  SpecialOrderPage.routeName: (context) => const SpecialOrderPage(),
  ListSpecialOrdersPage.routeName: (context) => const ListSpecialOrdersPage(),
  CustomerLoanPage.routeName: (context) => const CustomerLoanPage(),
};

void redirectUserToLogin() {
  Navigator.of(navigationKey.currentContext!).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const LoginPage()),
      (route) => false);
}

void redirectUserToForcedUpdate() {
  Navigator.of(navigationKey.currentContext!).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const ForceUpdatePage()),
      (route) => false);
}
