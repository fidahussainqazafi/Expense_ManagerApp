
import 'package:hive/hive.dart';
part 'payee_model.g.dart';

@HiveType(typeId: 0)
class PayeeModel extends HiveObject{
  @HiveField(0)
  String title;

  PayeeModel({required this.title});
}

