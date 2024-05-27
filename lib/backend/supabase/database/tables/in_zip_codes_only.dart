import '../database.dart';

class InZipCodesOnlyTable extends SupabaseTable<InZipCodesOnlyRow> {
  @override
  String get tableName => 'in_zip_codes_only';

  @override
  InZipCodesOnlyRow createRow(Map<String, dynamic> data) =>
      InZipCodesOnlyRow(data);
}

class InZipCodesOnlyRow extends SupabaseDataRow {
  InZipCodesOnlyRow(super.data);

  @override
  SupabaseTable get table => InZipCodesOnlyTable();

  String? get zipCode => getField<String>('zip_code');
  set zipCode(String? value) => setField<String>('zip_code', value);
}
