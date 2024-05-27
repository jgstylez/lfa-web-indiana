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

  List<String> get transportMethod => getListField<String>('transport_method');
  set transportMethod(List<String>? value) =>
      setListField<String>('transport_method', value);

  String? get wholesalePartnerName =>
      getField<String>('wholesale_partner_name');
  set wholesalePartnerName(String? value) =>
      setField<String>('wholesale_partner_name', value);

  List<String> get postHarvestHandling =>
      getListField<String>('post_harvest_handling');
  set postHarvestHandling(List<String>? value) =>
      setListField<String>('post_harvest_handling', value);

  List<String> get productAssistance =>
      getListField<String>('product_assistance');
  set productAssistance(List<String>? value) =>
      setListField<String>('product_assistance', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get aggregatorDistributor => getField<bool>('aggregator_distributor');
  set aggregatorDistributor(bool? value) =>
      setField<bool>('aggregator_distributor', value);

  String? get productAssistanceOther =>
      getField<String>('product_assistance_other');
  set productAssistanceOther(String? value) =>
      setField<String>('product_assistance_other', value);

  bool? get becomeContractMember => getField<bool>('become_contract_member');
  set becomeContractMember(bool? value) =>
      setField<bool>('become_contract_member', value);

  bool? get needPhhSystem => getField<bool>('need_phh_system');
  set needPhhSystem(bool? value) => setField<bool>('need_phh_system', value);
}
