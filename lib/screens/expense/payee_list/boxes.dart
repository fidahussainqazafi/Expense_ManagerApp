import 'package:expense_manager/screens/expense/payee_list/payee_model.dart';
import 'package:hive/hive.dart';

class Boxes{
  static Box<PayeeModel> getDAta() => Hive.box("notes");
}
