import '../database.dart';

class TotalUsersTable extends SupabaseTable<TotalUsersRow> {
  @override
  String get tableName => 'total_users';

  @override
  TotalUsersRow createRow(Map<String, dynamic> data) => TotalUsersRow(data);
}

class TotalUsersRow extends SupabaseDataRow {
  TotalUsersRow(super.data);

  @override
  SupabaseTable get table => TotalUsersTable();

  int? get totalUsers => getField<int>('total_users');
  set totalUsers(int? value) => setField<int>('total_users', value);
}
