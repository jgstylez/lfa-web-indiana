import '../database.dart';

class InCountiesTable extends SupabaseTable<InCountiesRow> {
  @override
  String get tableName => 'in_counties';

  @override
  InCountiesRow createRow(Map<String, dynamic> data) => InCountiesRow(data);
}

class InCountiesRow extends SupabaseDataRow {
  InCountiesRow(super.data);

  @override
  SupabaseTable get table => InCountiesTable();

  int get countyId => getField<int>('county_id')!;
  set countyId(int value) => setField<int>('county_id', value);

  String get countyName => getField<String>('county_name')!;
  set countyName(String value) => setField<String>('county_name', value);

  int? get regionId => getField<int>('region_id');
  set regionId(int? value) => setField<int>('region_id', value);
}
