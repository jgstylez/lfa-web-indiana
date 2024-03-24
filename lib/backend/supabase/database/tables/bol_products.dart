import '../database.dart';

class BolProductsTable extends SupabaseTable<BolProductsRow> {
  @override
  String get tableName => 'bol_products';

  @override
  BolProductsRow createRow(Map<String, dynamic> data) => BolProductsRow(data);
}

class BolProductsRow extends SupabaseDataRow {
  BolProductsRow(super.data);

  @override
  SupabaseTable get table => BolProductsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  int? get weight => getField<int>('weight');
  set weight(int? value) => setField<int>('weight', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int get bolId => getField<int>('bol_id')!;
  set bolId(int value) => setField<int>('bol_id', value);
}
