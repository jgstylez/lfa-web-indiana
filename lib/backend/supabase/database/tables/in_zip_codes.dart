import '../database.dart';

class InZipCodesTable extends SupabaseTable<InZipCodesRow> {
  @override
  String get tableName => 'in_zip_codes';

  @override
  InZipCodesRow createRow(Map<String, dynamic> data) => InZipCodesRow(data);
}

class InZipCodesRow extends SupabaseDataRow {
  InZipCodesRow(super.data);

  @override
  SupabaseTable get table => InZipCodesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get county => getField<String>('county');
  set county(String? value) => setField<String>('county', value);

  int? get zipCode => getField<int>('zip_code');
  set zipCode(int? value) => setField<int>('zip_code', value);
}
