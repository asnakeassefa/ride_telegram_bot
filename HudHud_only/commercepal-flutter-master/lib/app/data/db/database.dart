
import 'package:commercepal/core/cart-core/dao/cart_dao.dart';
import 'package:floor/floor.dart';


import 'dart:async';

import '../../../core/cart-core/domain/cart_item.dart';

import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';


@Database(version: 2, entities: [CartItem])
abstract class AppDatabase extends FloorDatabase {
  CartDao get cartDao;
}
