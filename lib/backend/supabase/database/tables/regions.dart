import '../database.dart';

class RegionsTable extends SupabaseTable<RegionsRow> {
  @override
  String get tableName => 'regions';

  @override
  RegionsRow createRow(Map<String, dynamic> data) => RegionsRow(data);
}

class RegionsRow extends SupabaseDataRow {
  RegionsRow(super.data);

  @override
  SupabaseTable get table => RegionsTable();

  int get regionId => getField<int>('region_id')!;
  set regionId(int value) => setField<int>('region_id', value);

  String get regionName => getField<String>('region_name')!;
  set regionName(String value) => setField<String>('region_name', value);
}
