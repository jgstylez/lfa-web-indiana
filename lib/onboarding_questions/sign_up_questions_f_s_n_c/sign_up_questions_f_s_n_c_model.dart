import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_questions_f_s_n_c_widget.dart' show SignUpQuestionsFSNCWidget;
import 'package:flutter/material.dart';

class SignUpQuestionsFSNCModel
    extends FlutterFlowModel<SignUpQuestionsFSNCWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for hasDonatedRadioButton widget.
  FormFieldController<String>? hasDonatedRadioButtonValueController;
  // State field(s) for hasSoldRadioButton widget.
  FormFieldController<String>? hasSoldRadioButtonValueController;
  // State field(s) for connectionsTextField widget.
  FocusNode? connectionsTextFieldFocusNode;
  TextEditingController? connectionsTextFieldController;
  String? Function(BuildContext, String?)?
      connectionsTextFieldControllerValidator;
  String? _connectionsTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for existingProgramsTextField widget.
  FocusNode? existingProgramsTextFieldFocusNode;
  TextEditingController? existingProgramsTextFieldController;
  String? Function(BuildContext, String?)?
      existingProgramsTextFieldControllerValidator;
  String? _existingProgramsTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    connectionsTextFieldControllerValidator =
        _connectionsTextFieldControllerValidator;
    existingProgramsTextFieldControllerValidator =
        _existingProgramsTextFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    connectionsTextFieldFocusNode?.dispose();
    connectionsTextFieldController?.dispose();

    existingProgramsTextFieldFocusNode?.dispose();
    existingProgramsTextFieldController?.dispose();
  }

  /// Additional helper methods.
  String? get hasDonatedRadioButtonValue =>
      hasDonatedRadioButtonValueController?.value;
  String? get hasSoldRadioButtonValue =>
      hasSoldRadioButtonValueController?.value;
}
