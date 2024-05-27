import '../database.dart';

class CsFsncTable extends SupabaseTable<CsFsncRow> {
  @override
  String get tableName => 'cs_fsnc';

  @override
  CsFsncRow createRow(Map<String, dynamic> data) => CsFsncRow(data);
}

class CsFsncRow extends SupabaseDataRow {
  CsFsncRow(super.data);

  @override
  SupabaseTable get table => CsFsncTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  bool? get existingProgram => getField<bool>('existing_program');
  set existingProgram(bool? value) => setField<bool>('existing_program', value);

  String? get connectionsInfo => getField<String>('connections_info');
  set connectionsInfo(String? value) =>
      setField<String>('connections_info', value);

  bool? get hasDonated => getField<bool>('has_donated');
  set hasDonated(bool? value) => setField<bool>('has_donated', value);

  bool? get hasSold => getField<bool>('has_sold');
  set hasSold(bool? value) => setField<bool>('has_sold', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get fsncConnections => getField<bool>('fsnc_connections');
  set fsncConnections(bool? value) => setField<bool>('fsnc_connections', value);

  String? get existingProgramInfo => getField<String>('existing_program_info');
  set existingProgramInfo(String? value) =>
      setField<String>('existing_program_info', value);

  dynamic get networkConnection => getField<dynamic>('network_connection');
  set networkConnection(dynamic value) =>
      setField<dynamic>('network_connection', value);

  dynamic get infoExistPrograms => getField<dynamic>('info_exist_programs');
  set infoExistPrograms(dynamic value) =>
      setField<dynamic>('info_exist_programs', value);
}
