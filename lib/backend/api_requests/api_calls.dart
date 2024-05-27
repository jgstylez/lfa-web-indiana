import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchEntityCall {
  static Future<ApiCallResponse> call({
    String? searchBusiness = '',
    String? searchName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchEntity',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/profile?or=(?business_name=ilike.*$searchBusiness*&select=*?display_name=ilike.*$searchName*&select=*)',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TotalUserCountCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'totalUserCount',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/total_users?select=total_users',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? entities(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_users''',
      ));
}

class TotalBolCountCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'totalBolCount',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/total_bill_of_ladings?select=total_bill_of_ladings',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? bols(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_bill_of_ladings''',
      ));
}

class TotalDeliveryCountCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'totalDeliveryCount',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/total_delivery?select=total_delivery',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? deliveries(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_delivery''',
      ));
}

class RegionMostDeliveriesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'regionMostDeliveries',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/region_with_most_deliveries?select=region,total_deliveries',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? topRegion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[0].region''',
      ));
  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[0].total_deliveries''',
      ));
}

class CountyMostDeliveriesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'countyMostDeliveries',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/county_with_most_deliveries?select=county,delivery_count',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? county(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[0].county''',
      ));
  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[0].delivery_count''',
      ));
}

class DeliveryCountChartCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'deliveryCountChart',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/deliveries_per_day?select=delivery_count,day',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? count(dynamic response) => (getJsonField(
        response,
        r'''$[:].delivery_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? day(dynamic response) => getJsonField(
        response,
        r'''$[:].day''',
        true,
      ) as List?;
}

class ChangeStatusReceivedCall {
  static Future<ApiCallResponse> call({
    String? status = 'Received',
  }) async {
    final ffApiRequestBody = '''
"$status"''';
    return ApiManager.instance.makeApiCall(
      callName: 'changeStatusReceived',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/bill_of_lading?select=status',
      callType: ApiCallType.PUT,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$[:].status''',
      );
}

class GetZipCodesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getZipCodes',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/in_zip_codes_only?select=zip_code',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? zip(dynamic response) => (getJsonField(
        response,
        r'''$[:].zip_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CheckAdminAccessCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'checkAdminAccess',
      apiUrl: 'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/users',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? displayName(dynamic response) => (getJsonField(
        response,
        r'''$[:].display_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? businessName(dynamic response) => (getJsonField(
        response,
        r'''$[:].business_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? avatarUrl(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? hasAdmin(dynamic response) => (getJsonField(
        response,
        r'''$[:].has_admin_access''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class GetNamesCall {
  static Future<ApiCallResponse> call({
    String? business = '',
    String? name = '',
    bool? adminAccess,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getNames',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/users?select=business_name,display_name,has_admin_access',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {
        'business': business,
        'name': name,
        'access': adminAccess,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? business(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].business_name''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].display_name''',
      ));
  static bool? access(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].has_admin_access''',
      ));
}

class EntityMostDeliveriesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'entityMostDeliveries',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/sender_with_most_deliveries?select=sender,total_deliveries',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? entity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].sender''',
      ));
  static int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total_deliveries''',
      ));
}

class CheckProfileCompleteCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'checkProfileComplete',
      apiUrl:
          'https://pbbcwvkvoiomnfuvvjeu.supabase.co/rest/v1/profile?select=profile_complete',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBiYmN3dmt2b2lvbW5mdXZ2amV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMwOTcxOTYsImV4cCI6MjAyODY3MzE5Nn0.kkI9-BFB3LhBnNFWuDOeMKtQMhk3cIIKk8bdGmWYy2w',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static bool? completionCheck(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$[:].profile_complete''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
