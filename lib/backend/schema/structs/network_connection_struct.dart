// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NetworkConnectionStruct extends BaseStruct {
  NetworkConnectionStruct({
    String? networkName,
    String? contactName,
    String? contactPhone,
    String? contactEmail,
  })  : _networkName = networkName,
        _contactName = contactName,
        _contactPhone = contactPhone,
        _contactEmail = contactEmail;

  // "network_name" field.
  String? _networkName;
  String get networkName => _networkName ?? '';
  set networkName(String? val) => _networkName = val;
  bool hasNetworkName() => _networkName != null;

  // "contact_name" field.
  String? _contactName;
  String get contactName => _contactName ?? '';
  set contactName(String? val) => _contactName = val;
  bool hasContactName() => _contactName != null;

  // "contact_phone" field.
  String? _contactPhone;
  String get contactPhone => _contactPhone ?? '';
  set contactPhone(String? val) => _contactPhone = val;
  bool hasContactPhone() => _contactPhone != null;

  // "contact_email" field.
  String? _contactEmail;
  String get contactEmail => _contactEmail ?? '';
  set contactEmail(String? val) => _contactEmail = val;
  bool hasContactEmail() => _contactEmail != null;

  static NetworkConnectionStruct fromMap(Map<String, dynamic> data) =>
      NetworkConnectionStruct(
        networkName: data['network_name'] as String?,
        contactName: data['contact_name'] as String?,
        contactPhone: data['contact_phone'] as String?,
        contactEmail: data['contact_email'] as String?,
      );

  static NetworkConnectionStruct? maybeFromMap(dynamic data) => data is Map
      ? NetworkConnectionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'network_name': _networkName,
        'contact_name': _contactName,
        'contact_phone': _contactPhone,
        'contact_email': _contactEmail,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'network_name': serializeParam(
          _networkName,
          ParamType.String,
        ),
        'contact_name': serializeParam(
          _contactName,
          ParamType.String,
        ),
        'contact_phone': serializeParam(
          _contactPhone,
          ParamType.String,
        ),
        'contact_email': serializeParam(
          _contactEmail,
          ParamType.String,
        ),
      }.withoutNulls;

  static NetworkConnectionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NetworkConnectionStruct(
        networkName: deserializeParam(
          data['network_name'],
          ParamType.String,
          false,
        ),
        contactName: deserializeParam(
          data['contact_name'],
          ParamType.String,
          false,
        ),
        contactPhone: deserializeParam(
          data['contact_phone'],
          ParamType.String,
          false,
        ),
        contactEmail: deserializeParam(
          data['contact_email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NetworkConnectionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NetworkConnectionStruct &&
        networkName == other.networkName &&
        contactName == other.contactName &&
        contactPhone == other.contactPhone &&
        contactEmail == other.contactEmail;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([networkName, contactName, contactPhone, contactEmail]);
}

NetworkConnectionStruct createNetworkConnectionStruct({
  String? networkName,
  String? contactName,
  String? contactPhone,
  String? contactEmail,
}) =>
    NetworkConnectionStruct(
      networkName: networkName,
      contactName: contactName,
      contactPhone: contactPhone,
      contactEmail: contactEmail,
    );
