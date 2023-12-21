import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/schema_settings_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.init() = HomeStateInit;

  const factory HomeState.loading() = HomeStateLoading;

  const factory HomeState.schemas(SchemaSettingsModel homePageSchema) =
      HomeStateSchemas;

  const factory HomeState.error(String message) = HomeStateError;
}
