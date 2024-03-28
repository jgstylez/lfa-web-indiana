import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_questions_contact_info_widget.dart'
    show SignUpQuestionsContactInfoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpQuestionsContactInfoModel
    extends FlutterFlowModel<SignUpQuestionsContactInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  String? _firstNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'First Name is required';
    }

    return null;
  }

  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  String? _lastNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Last Name is required';
    }

    return null;
  }

  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  final phoneNumberMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  String? _phoneNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone is required';
    }

    return null;
  }

  // State field(s) for BusinessName widget.
  FocusNode? businessNameFocusNode;
  TextEditingController? businessNameController;
  String? Function(BuildContext, String?)? businessNameControllerValidator;
  String? _businessNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Business is required';
    }

    return null;
  }

  // State field(s) for Address1 widget.
  FocusNode? address1FocusNode;
  TextEditingController? address1Controller;
  String? Function(BuildContext, String?)? address1ControllerValidator;
  String? _address1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Address is required';
    }

    return null;
  }

  // State field(s) for Address2 widget.
  FocusNode? address2FocusNode;
  TextEditingController? address2Controller;
  String? Function(BuildContext, String?)? address2ControllerValidator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  String? _cityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'City is required';
    }

    return null;
  }

  // State field(s) for State widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  String? _stateControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'State is required';
    }

    return null;
  }

  // State field(s) for ZipCode widget.
  FocusNode? zipCodeFocusNode;
  TextEditingController? zipCodeController;
  String? Function(BuildContext, String?)? zipCodeControllerValidator;
  String? _zipCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Zip Code is required';
    }

    return null;
  }

  // State field(s) for CountyDropDown widget.
  String? countyDropDownValue;
  FormFieldController<String>? countyDropDownValueController;
  // State field(s) for RegionDropDown widget.
  String? regionDropDownValue;
  FormFieldController<String>? regionDropDownValueController;
  // State field(s) for EntityDropDown widget.
  List<String>? entityDropDownValue;
  FormFieldController<List<String>>? entityDropDownValueController;
  // State field(s) for BestFormOfContactDropDown widget.
  String? bestFormOfContactDropDownValue;
  FormFieldController<String>? bestFormOfContactDropDownValueController;
  // State field(s) for BestTimeOfContactDropDown widget.
  String? bestTimeOfContactDropDownValue;
  FormFieldController<String>? bestTimeOfContactDropDownValueController;
  // State field(s) for diffFarmAddessRB widget.
  FormFieldController<String>? diffFarmAddessRBValueController;
  // State field(s) for differentFarmAddress widget.
  FocusNode? differentFarmAddressFocusNode;
  TextEditingController? differentFarmAddressController;
  String? Function(BuildContext, String?)?
      differentFarmAddressControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    firstNameControllerValidator = _firstNameControllerValidator;
    lastNameControllerValidator = _lastNameControllerValidator;
    phoneNumberControllerValidator = _phoneNumberControllerValidator;
    businessNameControllerValidator = _businessNameControllerValidator;
    address1ControllerValidator = _address1ControllerValidator;
    cityControllerValidator = _cityControllerValidator;
    stateControllerValidator = _stateControllerValidator;
    zipCodeControllerValidator = _zipCodeControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    businessNameFocusNode?.dispose();
    businessNameController?.dispose();

    address1FocusNode?.dispose();
    address1Controller?.dispose();

    address2FocusNode?.dispose();
    address2Controller?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    stateFocusNode?.dispose();
    stateController?.dispose();

    zipCodeFocusNode?.dispose();
    zipCodeController?.dispose();

    differentFarmAddressFocusNode?.dispose();
    differentFarmAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get diffFarmAddessRBValue => diffFarmAddessRBValueController?.value;
}
