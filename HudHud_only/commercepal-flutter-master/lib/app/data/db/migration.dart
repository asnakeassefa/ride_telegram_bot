// create migration
import 'package:floor/floor.dart';

final migration1to2 = Migration(1, 2, (database) async {
  await database.execute('ALTER TABLE CartItem ADD merchantId INT');
});
