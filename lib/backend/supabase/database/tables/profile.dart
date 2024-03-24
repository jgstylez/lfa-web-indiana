import '../database.dart';

class ProfileTable extends SupabaseTable<ProfileRow> {
  @override
  String get tableName => 'profile';

  @override
  ProfileRow createRow(Map<String, dynamic> data) => ProfileRow(data);
}

class ProfileRow extends SupabaseDataRow {
  ProfileRow(super.data);

  @override
  SupabaseTable get table => ProfileTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get phoneNumber => getField<String>('phone_number')!;
  set phoneNumber(String value) => setField<String>('phone_number', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get businessName => getField<String>('business_name');
  set businessName(String? value) => setField<String>('business_name', value);

  String? get businessAddress => getField<String>('business_address');
  set businessAddress(String? value) =>
      setField<String>('business_address', value);

  String? get county => getField<String>('county');
  set county(String? value) => setField<String>('county', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  String? get bestContactForm => getField<String>('best_contact_form');
  set bestContactForm(String? value) =>
      setField<String>('best_contact_form', value);

  String? get bestContactTime => getField<String>('best_contact_time');
  set bestContactTime(String? value) =>
      setField<String>('best_contact_time', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get addressOptional => getField<String>('address_optional');
  set addressOptional(String? value) =>
      setField<String>('address_optional', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get zipCode => getField<String>('zip_code');
  set zipCode(String? value) => setField<String>('zip_code', value);

  List<String> get entity => getListField<String>('entity');
  set entity(List<String>? value) => setListField<String>('entity', value);
}
