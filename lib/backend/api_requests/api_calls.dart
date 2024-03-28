import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchUserCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchUser',
      apiUrl:
          'https://diqkwxzcspfoijdshesk.supabase.co/rest/v1/profile?select=business_name,display_name',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRpcWt3eHpjc3Bmb2lqZHNoZXNrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg1NDE5NjEsImV4cCI6MjAyNDExNzk2MX0.ilILX7XCTzWyuBdiEAMya_OOhj61jNf5Pp0e9p14FeY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRpcWt3eHpjc3Bmb2lqZHNoZXNrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg1NDE5NjEsImV4cCI6MjAyNDExNzk2MX0.ilILX7XCTzWyuBdiEAMya_OOhj61jNf5Pp0e9p14FeY',
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
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
