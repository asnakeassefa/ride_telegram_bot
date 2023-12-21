

import 'schema_settings_model.dart';

abstract class HomeRepository {
   Future<List<SchemaSettingsModel>?> fetchHomeSchemas();
}
