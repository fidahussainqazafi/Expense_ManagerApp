// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payee_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PayeeModelAdapter extends TypeAdapter<PayeeModel> {
  @override
  final int typeId = 0;

  @override
  PayeeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PayeeModel(
      title: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PayeeModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayeeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
