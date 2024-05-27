import '../database.dart';

class CsBlkLoamTable extends SupabaseTable<CsBlkLoamRow> {
  @override
  String get tableName => 'cs_blk_loam';

  @override
  CsBlkLoamRow createRow(Map<String, dynamic> data) => CsBlkLoamRow(data);
}

class CsBlkLoamRow extends SupabaseDataRow {
  CsBlkLoamRow(super.data);

  @override
  SupabaseTable get table => CsBlkLoamTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get learnMore => getField<bool>('learn_more');
  set learnMore(bool? value) => setField<bool>('learn_more', value);
}
