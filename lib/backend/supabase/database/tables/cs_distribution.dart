import '../database.dart';

class CsDistributionTable extends SupabaseTable<CsDistributionRow> {
  @override
  String get tableName => 'cs_distribution';

  @override
  CsDistributionRow createRow(Map<String, dynamic> data) =>
      CsDistributionRow(data);
}

class CsDistributionRow extends SupabaseDataRow {
  CsDistributionRow(super.data);

  @override
  SupabaseTable get table => CsDistributionTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get transportMethod => getField<String>('transport_method');
  set transportMethod(String? value) =>
      setField<String>('transport_method', value);

  String? get wholesalePartner => getField<String>('wholesale_partner');
  set wholesalePartner(String? value) =>
      setField<String>('wholesale_partner', value);

  String? get postHarvestHandling => getField<String>('post_harvest_handling');
  set postHarvestHandling(String? value) =>
      setField<String>('post_harvest_handling', value);

  List<String> get productAssistance =>
      getListField<String>('product_assistance');
  set productAssistance(List<String>? value) =>
      setListField<String>('product_assistance', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
