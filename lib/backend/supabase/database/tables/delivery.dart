import '../database.dart';

class DeliveryTable extends SupabaseTable<DeliveryRow> {
  @override
  String get tableName => 'delivery';

  @override
  DeliveryRow createRow(Map<String, dynamic> data) => DeliveryRow(data);
}

class DeliveryRow extends SupabaseDataRow {
  DeliveryRow(super.data);

  @override
  SupabaseTable get table => DeliveryTable();

  int get deliveryId => getField<int>('delivery_id')!;
  set deliveryId(int value) => setField<int>('delivery_id', value);

  String get sender => getField<String>('sender')!;
  set sender(String value) => setField<String>('sender', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get bolId => getField<int>('bol_id');
  set bolId(int? value) => setField<int>('bol_id', value);

  String? get transporter => getField<String>('transporter');
  set transporter(String? value) => setField<String>('transporter', value);

  String? get finalRecipient => getField<String>('final_recipient');
  set finalRecipient(String? value) =>
      setField<String>('final_recipient', value);

  String? get signatureImage => getField<String>('signature_image');
  set signatureImage(String? value) =>
      setField<String>('signature_image', value);

  String? get productImage => getField<String>('product_image');
  set productImage(String? value) => setField<String>('product_image', value);

  String? get recipient => getField<String>('recipient');
  set recipient(String? value) => setField<String>('recipient', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
