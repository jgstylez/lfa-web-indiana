import '../database.dart';

class InCitiesTable extends SupabaseTable<InCitiesRow> {
  @override
  String get tableName => 'in_cities';

  @override
  InCitiesRow createRow(Map<String, dynamic> data) => InCitiesRow(data);
}

class InCitiesRow extends SupabaseDataRow {
  InCitiesRow(super.data);

  @override
  SupabaseTable get table => InCitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get cityName => getField<String>('city_name')!;
  set cityName(String value) => setField<String>('city_name', value);
}
