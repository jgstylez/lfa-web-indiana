import '../database.dart';

class BillOfLadingTable extends SupabaseTable<BillOfLadingRow> {
  @override
  String get tableName => 'bill_of_lading';

  @override
  BillOfLadingRow createRow(Map<String, dynamic> data) => BillOfLadingRow(data);
}

class BillOfLadingRow extends SupabaseDataRow {
  BillOfLadingRow(super.data);

  @override
  SupabaseTable get table => BillOfLadingTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get transporter => getField<String>('transporter');
  set transporter(String? value) => setField<String>('transporter', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get sender => getField<String>('sender');
  set sender(String? value) => setField<String>('sender', value);

  String? get recipient => getField<String>('recipient');
  set recipient(String? value) => setField<String>('recipient', value);

  bool? get markedPaid => getField<bool>('marked_paid');
  set markedPaid(bool? value) => setField<bool>('marked_paid', value);

  bool? get markedReceived => getField<bool>('marked_received');
  set markedReceived(bool? value) => setField<bool>('marked_received', value);

  List<String> get products => getListField<String>('products');
  set products(List<String>? value) => setListField<String>('products', value);

  String? get invoiceUrl => getField<String>('invoice_url');
  set invoiceUrl(String? value) => setField<String>('invoice_url', value);

  int get bolId => getField<int>('bol_id')!;
  set bolId(int value) => setField<int>('bol_id', value);

  String? get recipientId => getField<String>('recipient_id');
  set recipientId(String? value) => setField<String>('recipient_id', value);

  String? get senderId => getField<String>('sender_id');
  set senderId(String? value) => setField<String>('sender_id', value);

  String? get transporterId => getField<String>('transporter_id');
  set transporterId(String? value) => setField<String>('transporter_id', value);

  dynamic get bolProducts => getField<dynamic>('bol_products');
  set bolProducts(dynamic value) => setField<dynamic>('bol_products', value);

  String? get senderEmail => getField<String>('sender_email');
  set senderEmail(String? value) => setField<String>('sender_email', value);

  String? get recipientEmail => getField<String>('recipient_email');
  set recipientEmail(String? value) =>
      setField<String>('recipient_email', value);

  String? get transporterEmail => getField<String>('transporter_email');
  set transporterEmail(String? value) =>
      setField<String>('transporter_email', value);
}
