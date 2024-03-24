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

  List<String> get occupation => getListField<String>('occupation');
  set occupation(List<String>? value) =>
      setListField<String>('occupation', value);

  List<String> get farmerSpec => getListField<String>('farmer_spec');
  set farmerSpec(List<String>? value) =>
      setListField<String>('farmer_spec', value);

  List<String> get publications => getListField<String>('publications');
  set publications(List<String>? value) =>
      setListField<String>('publications', value);

  List<String> get eventsResources => getListField<String>('events_resources');
  set eventsResources(List<String>? value) =>
      setListField<String>('events_resources', value);

  String? get additionalNotes => getField<String>('additional_notes');
  set additionalNotes(String? value) =>
      setField<String>('additional_notes', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
