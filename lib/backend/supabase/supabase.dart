import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://pbbcwvkvoiomnfuvvjeu.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
