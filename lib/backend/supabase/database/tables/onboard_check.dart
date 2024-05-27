import '../database.dart';

class OnboardCheckTable extends SupabaseTable<OnboardCheckRow> {
  @override
  String get tableName => 'onboard_check';

  @override
  OnboardCheckRow createRow(Map<String, dynamic> data) => OnboardCheckRow(data);
}

class OnboardCheckRow extends SupabaseDataRow {
  OnboardCheckRow(super.data);

  @override
  SupabaseTable get table => OnboardCheckTable();

  bool? get isCompleted => getField<bool>('is_completed');
  set isCompleted(bool? value) => setField<bool>('is_completed', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);
}
