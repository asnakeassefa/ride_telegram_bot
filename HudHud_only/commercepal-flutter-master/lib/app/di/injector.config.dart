// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i11;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/addresses-core/data/address_repo_impl.dart' as _i53;
import '../../core/addresses-core/domain/address_repo.dart' as _i52;
import '../../core/cart-core/bloc/cart_core_cubit.dart' as _i54;
import '../../core/cart-core/dao/cart_dao.dart' as _i4;
import '../../core/cart-core/repository/cart_repository.dart' as _i5;
import '../../core/cart-core/repository/cart_repository_impl.dart' as _i6;
import '../../core/cities-core/data/city_core_repo_impl.dart' as _i24;
import '../../core/cities-core/domain/city_core_repo.dart' as _i23;
import '../../core/cities-core/presentation/bloc/city_core_cubit.dart' as _i62;
import '../../core/core-phonenumber/phone_number_utils.dart' as _i13;
import '../../core/core-phonenumber/phone_number_utils_impl.dart' as _i14;
import '../../core/core-utils/core_utils.dart' as _i7;
import '../../core/core-utils/core_utils_impl.dart' as _i8;
import '../../core/customer_loan/data/customer_loan_repo_impl.dart' as _i64;
import '../../core/customer_loan/domain/customer_loan_repo.dart' as _i63;
import '../../core/data/prefs_data.dart' as _i15;
import '../../core/data/prefs_data_impl.dart' as _i16;
import '../../core/device-info/device_info.dart' as _i9;
import '../../core/device-info/device_info_impl.dart' as _i10;
import '../../core/session/data/session_repo_impl.dart' as _i36;
import '../../core/session/domain/session_repo.dart' as _i35;
import '../../core/session/presentation/session_bloc.dart' as _i78;
import '../../features/addresses/presentation/bloc/address_cubit.dart' as _i83;
import '../../features/cash_payment/data/cash_payment_repo_impl.dart' as _i56;
import '../../features/cash_payment/domain/cash_payment_repo.dart' as _i55;
import '../../features/cash_payment/presentation/bloc/cash_payment_cubit.dart'
    as _i84;
import '../../features/categories/presentation/bloc/categories_cubit.dart'
    as _i85;
import '../../features/categories/repository/categories_repo.dart' as _i57;
import '../../features/categories/repository/categories_repo_impl.dart' as _i58;
import '../../features/change_password/data/change_password_repo_impl.dart'
    as _i22;
import '../../features/change_password/domain/change_password_repo.dart'
    as _i21;
import '../../features/change_password/presentation/bloc/change_password_cubit.dart'
    as _i59;
import '../../features/check_out/data/repository/check_out_repo_impl.dart'
    as _i61;
import '../../features/check_out/domain/check_out_repo.dart' as _i60;
import '../../features/check_out/presentation/bloc/check_out_cubit.dart'
    as _i86;
import '../../features/customer_loan/presentation/bloc/customer_loan_cubit.dart'
    as _i87;
import '../../features/dashboard/bloc/dashboard_cubit.dart' as _i65;
import '../../features/home/data/home_repo_impl.dart' as _i26;
import '../../features/home/domain/home_repostory.dart' as _i25;
import '../../features/home/presentation/cubit/home_cubit.dart' as _i66;
import '../../features/login/data/login_repo_impl.dart' as _i28;
import '../../features/login/domain/login_repository.dart' as _i27;
import '../../features/login/presentation/bloc/login_cubit.dart' as _i67;
import '../../features/order_tracking/data/order_tracking_repo_impl.dart'
    as _i30;
import '../../features/order_tracking/domain/order_tracking_repo.dart' as _i29;
import '../../features/order_tracking/presentation/bloc/order_tracking_cubit.dart'
    as _i68;
import '../../features/payment/data/payment_repo_impl.dart' as _i32;
import '../../features/payment/domain/payment_repo.dart' as _i31;
import '../../features/payment/presentation/bloc/payment_cubit.dart' as _i69;
import '../../features/products/data/products_repository_impl.dart' as _i71;
import '../../features/products/domain/products_repository.dart' as _i70;
import '../../features/products/presentation/cubit/product_cubit.dart' as _i88;
import '../../features/reset_password/data/reset_pass_repo_impl.dart' as _i34;
import '../../features/reset_password/domain/reset_pass_repo.dart' as _i33;
import '../../features/reset_password/presentation/cubit/reset_pass_cubit.dart'
    as _i72;
import '../../features/sahay_payment/data/sahay_pay_repo_impl.dart' as _i74;
import '../../features/sahay_payment/domain/sahay_pay_repo.dart' as _i73;
import '../../features/sahay_payment/presentation/bloc/sahay_payment_cubit.dart'
    as _i75;
import '../../features/selected_product/data/selected_product_repository_impl.dart'
    as _i77;
import '../../features/selected_product/domain/selected_product_repository.dart'
    as _i76;
import '../../features/selected_product/presentation/bloc/selected_product_cubit.dart'
    as _i89;
import '../../features/set_password/data/set_password_repo_impl.dart' as _i38;
import '../../features/set_password/domain/set_password_repo.dart' as _i37;
import '../../features/set_password/presentation/bloc/user_set_password_cubit.dart'
    as _i49;
import '../../features/special_order/data/special_order_repo_impl.dart' as _i40;
import '../../features/special_order/domain/special_order_repo.dart' as _i39;
import '../../features/special_order/presentantion/bloc/special_order_cubit.dart'
    as _i79;
import '../../features/splash/bloc/splash_page_cubit.dart' as _i17;
import '../../features/sub_categories/data/sub_category_impl.dart' as _i42;
import '../../features/sub_categories/domain/sub_category_repository.dart'
    as _i41;
import '../../features/sub_categories/presentation/bloc/sub_category_cubit.dart'
    as _i80;
import '../../features/user/data/user_repo_impl.dart' as _i19;
import '../../features/user/domain/user_repo.dart' as _i18;
import '../../features/user/presentation/bloc/user_cubit.dart' as _i43;
import '../../features/user_orders/data/user_orders_repo_impl.dart' as _i45;
import '../../features/user_orders/domain/user_orders_repo.dart' as _i44;
import '../../features/user_orders/presentation/bloc/user_orders_bloc.dart'
    as _i46;
import '../../features/user_registration/data/user_registration_repo_impl.dart'
    as _i48;
import '../../features/user_registration/domain/user_registration_repo.dart'
    as _i47;
import '../../features/user_registration/presentation/bloc/user_registration_cubit.dart'
    as _i81;
import '../../features/validate_phone_email/data/validate_repo_impl.dart'
    as _i51;
import '../../features/validate_phone_email/domain/validate_repo.dart' as _i50;
import '../../features/validate_phone_email/presentation/blocs/validate_cubit.dart'
    as _i82;
import '../data/db/database.dart' as _i3;
import '../data/db/database_module.dart' as _i90;
import '../data/network/api_provider.dart' as _i20;
import '../data/network/dio_client.dart' as _i91;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final databaseNodule = _$DatabaseNodule();
  final dioClient = _$DioClient();
  await gh.lazySingletonAsync<_i3.AppDatabase>(
    () => databaseNodule.database,
    preResolve: true,
  );
  gh.factory<_i4.CartDao>(
      () => databaseNodule.getCartDao(gh<_i3.AppDatabase>()));
  gh.factory<_i5.CartRepository>(
      () => _i6.CartRepositoryImpl(gh<_i4.CartDao>()));
  gh.factory<_i7.CoreUtils>(() => _i8.CoreUtilsImpl());
  gh.factory<_i9.DeviceInfo>(() => _i10.DeviceInfoImpl());
  gh.lazySingleton<_i11.Dio>(() => dioClient.dio);
  gh.lazySingleton<_i12.FlutterSecureStorage>(
      () => databaseNodule.createFlutterSecureStorag());
  gh.factory<_i13.PhoneNumberUtils>(() => _i14.PhoneNumberUtilsImpl());
  gh.factory<_i15.PrefsData>(
      () => _i16.PrefsDataImpl(gh<_i12.FlutterSecureStorage>()));
  gh.factory<_i17.SplashPageCubit>(() => _i17.SplashPageCubit());
  gh.factory<_i18.UserRepo>(() => _i19.UserRepoImpl(
        gh<_i15.PrefsData>(),
        gh<_i4.CartDao>(),
      ));
  gh.singleton<_i20.ApiProvider>(_i20.ApiProvider(gh<_i11.Dio>()));
  gh.factory<_i21.ChangePasswordRepo>(() => _i22.ChangePasswordRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i15.PrefsData>(),
      ));
  gh.factory<_i23.CityCoreRepo>(
      () => _i24.CityCoreRepoImpl(gh<_i20.ApiProvider>()));
  gh.factory<_i25.HomeRepository>(
      () => _i26.HomeRepositoryImpl(gh<_i20.ApiProvider>()));
  gh.factory<_i27.LoginRepository>(() => _i28.LoginRepositoryImpl(
        gh<_i15.PrefsData>(),
        gh<_i20.ApiProvider>(),
      ));
  gh.factory<_i29.OrderTrackingRepo>(
      () => _i30.OrderTrackingRepoImpl(gh<_i20.ApiProvider>()));
  gh.factory<_i31.PaymentRepo>(
      () => _i32.PaymentRepoImpl(gh<_i20.ApiProvider>()));
  gh.factory<_i33.ResetPassRepo>(() => _i34.ResetPassRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i15.PrefsData>(),
      ));
  gh.factory<_i35.SessionRepo>(() => _i36.SessionRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i15.PrefsData>(),
      ));
  gh.factory<_i37.SetPasswordRepo>(() => _i38.SetPasswordRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i9.DeviceInfo>(),
        gh<_i15.PrefsData>(),
      ));
  gh.factory<_i39.SpecialOrderRepo>(
      () => _i40.SpecialOrderRepoImpl(gh<_i20.ApiProvider>()));
  gh.factory<_i41.SubCategoryRepository>(
      () => _i42.SubCategoryImpl(gh<_i20.ApiProvider>()));
  gh.factory<_i43.UserCubit>(() => _i43.UserCubit(
        gh<_i18.UserRepo>(),
        gh<_i7.CoreUtils>(),
      ));
  gh.factory<_i44.UserOrderRepo>(
      () => _i45.UserOrderRepoImpl(gh<_i20.ApiProvider>()));
  gh.factory<_i46.UserOrdersBloc>(
      () => _i46.UserOrdersBloc(gh<_i44.UserOrderRepo>()));
  gh.factory<_i47.UserRegistrationRepo>(() => _i48.UserRegistrationRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i9.DeviceInfo>(),
        gh<_i15.PrefsData>(),
      ));
  gh.factory<_i49.UserSetPasswordCubit>(
      () => _i49.UserSetPasswordCubit(gh<_i37.SetPasswordRepo>()));
  gh.factory<_i50.ValidateRepo>(() => _i51.ValidateRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i15.PrefsData>(),
      ));
  gh.factory<_i52.AddressRepo>(() => _i53.AddressRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i15.PrefsData>(),
      ));
  gh.factory<_i54.CartCoreCubit>(() => _i54.CartCoreCubit(
        gh<_i5.CartRepository>(),
        gh<_i27.LoginRepository>(),
      ));
  gh.factory<_i55.CashPaymentRepo>(() => _i56.CashPaymentRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i15.PrefsData>(),
        gh<_i4.CartDao>(),
        gh<_i35.SessionRepo>(),
      ));
  gh.factory<_i57.CategoriesRepo>(() => _i58.CategoriesRepoImpl(
        gh<_i35.SessionRepo>(),
        gh<_i20.ApiProvider>(),
      ));
  gh.factory<_i59.ChangePasswordCubit>(
      () => _i59.ChangePasswordCubit(gh<_i21.ChangePasswordRepo>()));
  gh.factory<_i60.CheckOutRepo>(() => _i61.CheckOutRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i4.CartDao>(),
        gh<_i15.PrefsData>(),
        gh<_i35.SessionRepo>(),
      ));
  gh.factory<_i62.CityCoreCubit>(
      () => _i62.CityCoreCubit(gh<_i23.CityCoreRepo>()));
  gh.factory<_i63.CustomerLoanRepo>(() => _i64.CustomerLoanRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i15.PrefsData>(),
        gh<_i4.CartDao>(),
        gh<_i35.SessionRepo>(),
      ));
  gh.factory<_i65.DashboardCubit>(
      () => _i65.DashboardCubit(gh<_i35.SessionRepo>()));
  gh.factory<_i66.HomeCubit>(
      () => _i66.HomeCubit(homeRepository: gh<_i25.HomeRepository>()));
  gh.factory<_i67.LoginCubit>(() => _i67.LoginCubit(
        gh<_i27.LoginRepository>(),
        gh<_i13.PhoneNumberUtils>(),
      ));
  gh.factory<_i68.OrderTrackingCubit>(
      () => _i68.OrderTrackingCubit(gh<_i29.OrderTrackingRepo>()));
  gh.factory<_i69.PaymentCubit>(() => _i69.PaymentCubit(
        gh<_i31.PaymentRepo>(),
        gh<_i63.CustomerLoanRepo>(),
      ));
  gh.factory<_i70.ProductRepository>(() => _i71.ProductsRepositoryImpl(
        gh<_i35.SessionRepo>(),
        gh<_i20.ApiProvider>(),
      ));
  gh.factory<_i72.ResetPassCubit>(() => _i72.ResetPassCubit(
        gh<_i33.ResetPassRepo>(),
        gh<_i13.PhoneNumberUtils>(),
      ));
  gh.factory<_i73.SahayPayRepo>(() => _i74.SahayPayRepoImpl(
        gh<_i20.ApiProvider>(),
        gh<_i15.PrefsData>(),
        gh<_i4.CartDao>(),
        gh<_i35.SessionRepo>(),
      ));
  gh.factory<_i75.SahayPaymentCubit>(() => _i75.SahayPaymentCubit(
        gh<_i73.SahayPayRepo>(),
        gh<_i13.PhoneNumberUtils>(),
      ));
  gh.factory<_i76.SelectedProductRepo>(
      () => _i77.SelectedProductPageRepositoryImpl(
            gh<_i35.SessionRepo>(),
            gh<_i20.ApiProvider>(),
          ));
  gh.factory<_i78.SessionCubit>(() => _i78.SessionCubit(
        gh<_i35.SessionRepo>(),
        gh<_i9.DeviceInfo>(),
      ));
  gh.factory<_i79.SpecialOrderCubit>(
      () => _i79.SpecialOrderCubit(gh<_i39.SpecialOrderRepo>()));
  gh.factory<_i80.SubCategoryCubit>(() => _i80.SubCategoryCubit(
      subCategoryRepository: gh<_i41.SubCategoryRepository>()));
  gh.factory<_i81.UserRegistrationCubit>(() => _i81.UserRegistrationCubit(
        gh<_i47.UserRegistrationRepo>(),
        gh<_i13.PhoneNumberUtils>(),
      ));
  gh.factory<_i82.ValidateCubit>(
      () => _i82.ValidateCubit(gh<_i50.ValidateRepo>()));
  gh.factory<_i83.AddressCubit>(
      () => _i83.AddressCubit(gh<_i52.AddressRepo>()));
  gh.factory<_i84.CashPaymentCubit>(() => _i84.CashPaymentCubit(
        gh<_i55.CashPaymentRepo>(),
        gh<_i13.PhoneNumberUtils>(),
      ));
  gh.factory<_i85.CategoriesCubit>(
      () => _i85.CategoriesCubit(categoriesRepo: gh<_i57.CategoriesRepo>()));
  gh.factory<_i86.CheckOutCubit>(() => _i86.CheckOutCubit(
        gh<_i60.CheckOutRepo>(),
        gh<_i5.CartRepository>(),
        gh<_i35.SessionRepo>(),
      ));
  gh.factory<_i87.CustomerLoanCubit>(() => _i87.CustomerLoanCubit(
        gh<_i5.CartRepository>(),
        gh<_i63.CustomerLoanRepo>(),
      ));
  gh.factory<_i88.ProductCubit>(
      () => _i88.ProductCubit(productRepository: gh<_i70.ProductRepository>()));
  gh.factory<_i89.SelectedProductCubit>(
      () => _i89.SelectedProductCubit(gh<_i76.SelectedProductRepo>()));
  return getIt;
}

class _$DatabaseNodule extends _i90.DatabaseNodule {}

class _$DioClient extends _i91.DioClient {}
