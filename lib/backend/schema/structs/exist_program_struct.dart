// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExistProgramStruct extends BaseStruct {
  ExistProgramStruct({
    String? programName,
    String? contactName,
    String? contactPhone,
    String? contactEmail,
  })  : _programName = programName,
        _contactName = contactName,
        _contactPhone = contactPhone,
        _contactEmail = contactEmail;

  // "program_name" field.
  String? _programName;
  String get programName => _programName ?? '';
  set programName(String? val) => _programName = val;
  bool hasProgramName() => _programName != null;

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

  static ExistProgramStruct fromMap(Map<String, dynamic> data) =>
      ExistProgramStruct(
        programName: data['program_name'] as String?,
        contactName: data['contact_name'] as String?,
        contactPhone: data['contact_phone'] as String?,
        contactEmail: data['contact_email'] as String?,
      );

  static ExistProgramStruct? maybeFromMap(dynamic data) => data is Map
      ? ExistProgramStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'program_name': _programName,
        'contact_name': _contactName,
        'contact_phone': _contactPhone,
        'contact_email': _contactEmail,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'program_name': serializeParam(
          _programName,
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

  static ExistProgramStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExistProgramStruct(
        programName: deserializeParam(
          data['program_name'],
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
  String toString() => 'ExistProgramStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExistProgramStruct &&
        programName == other.programName &&
        contactName == other.contactName &&
        contactPhone == other.contactPhone &&
        contactEmail == other.contactEmail;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([programName, contactName, contactPhone, contactEmail]);
}

ExistProgramStruct createExistProgramStruct({
  String? programName,
  String? contactName,
  String? contactPhone,
  String? contactEmail,
}) =>
    ExistProgramStruct(
      programName: programName,
      contactName: contactName,
      contactPhone: contactPhone,
      contactEmail: contactEmail,
    );
