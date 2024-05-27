import '../database.dart';

class CsFarmProductTable extends SupabaseTable<CsFarmProductRow> {
  @override
  String get tableName => 'cs_farm_product';

  @override
  CsFarmProductRow createRow(Map<String, dynamic> data) =>
      CsFarmProductRow(data);
}

class CsFarmProductRow extends SupabaseDataRow {
  CsFarmProductRow(super.data);

  @override
  SupabaseTable get table => CsFarmProductTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  List<String> get productsOffered => getListField<String>('products_offered');
  set productsOffered(List<String>? value) =>
      setListField<String>('products_offered', value);

  String? get farmingYearsExp => getField<String>('farming_years_exp');
  set farmingYearsExp(String? value) =>
      setField<String>('farming_years_exp', value);

  String? get productionDuration => getField<String>('production_duration');
  set productionDuration(String? value) =>
      setField<String>('production_duration', value);

  List<String> get marketLocations => getListField<String>('market_locations');
  set marketLocations(List<String>? value) =>
      setListField<String>('market_locations', value);

  String? get farmingStatus => getField<String>('farming_status');
  set farmingStatus(String? value) => setField<String>('farming_status', value);

  String? get certifications => getField<String>('certifications');
  set certifications(String? value) =>
      setField<String>('certifications', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  List<String> get supplyOfferings => getListField<String>('supply_offerings');
  set supplyOfferings(List<String>? value) =>
      setListField<String>('supply_offerings', value);

  String? get supplyQuantity => getField<String>('supply_quantity');
  set supplyQuantity(String? value) =>
      setField<String>('supply_quantity', value);
}
