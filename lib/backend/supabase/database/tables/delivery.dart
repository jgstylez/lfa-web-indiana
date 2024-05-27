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

  String? get county => getField<String>('county');
  set county(String? value) => setField<String>('county', value);

  String? get recipientId => getField<String>('recipient_id');
  set recipientId(String? value) => setField<String>('recipient_id', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  String? get senderId => getField<String>('sender_id');
  set senderId(String? value) => setField<String>('sender_id', value);

  String? get transporterId => getField<String>('transporter_id');
  set transporterId(String? value) => setField<String>('transporter_id', value);

  List<String> get pickupSlots => getListField<String>('pickup_slots');
  set pickupSlots(List<String>? value) =>
      setListField<String>('pickup_slots', value);

  String? get deliveryTime => getField<String>('delivery_time');
  set deliveryTime(String? value) => setField<String>('delivery_time', value);

  String? get senderEmail => getField<String>('sender_email');
  set senderEmail(String? value) => setField<String>('sender_email', value);

  String? get recipientEmail => getField<String>('recipient_email');
  set recipientEmail(String? value) =>
      setField<String>('recipient_email', value);

  String? get transporterEmail => getField<String>('transporter_email');
  set transporterEmail(String? value) =>
      setField<String>('transporter_email', value);
}
