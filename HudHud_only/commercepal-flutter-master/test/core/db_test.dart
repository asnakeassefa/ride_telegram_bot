import 'package:commercepal/app/data/db/database.dart';

Future<AppDatabase> setUpTestDb() async {
  return await $FloorAppDatabase.inMemoryDatabaseBuilder().build();
}
