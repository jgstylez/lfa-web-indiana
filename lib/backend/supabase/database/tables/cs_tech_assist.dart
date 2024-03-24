import '../database.dart';

class CsTechAssistTable extends SupabaseTable<CsTechAssistRow> {
  @override
  String get tableName => 'cs_tech_assist';

  @override
  CsTechAssistRow createRow(Map<String, dynamic> data) => CsTechAssistRow(data);
}

class CsTechAssistRow extends SupabaseDataRow {
  CsTechAssistRow(super.data);

  @override
  SupabaseTable get table => CsTechAssistTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  List<String> get technicalAssist => getListField<String>('technical_assist');
  set technicalAssist(List<String>? value) =>
      setListField<String>('technical_assist', value);

  String? get other => getField<String>('other');
  set other(String? value) => setField<String>('other', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
