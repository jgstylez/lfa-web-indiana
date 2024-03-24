import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_questions_s_d_h_u_widget.dart' show SignUpQuestionsSDHUWidget;
import 'package:flutter/material.dart';

class SignUpQuestionsSDHUModel
    extends FlutterFlowModel<SignUpQuestionsSDHUWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for bipocRadioButton widget.
  FormFieldController<String>? bipocRadioButtonValueController;
  // State field(s) for sdRadioButton widget.
  FormFieldController<String>? sdRadioButtonValueController;
  // State field(s) for huRadioButton widget.
  FormFieldController<String>? huRadioButtonValueController;
  // State field(s) for ethnicityRadioButton widget.
  FormFieldController<String>? ethnicityRadioButtonValueController;
  // State field(s) for additionalTextField widget.
  FocusNode? additionalTextFieldFocusNode;
  TextEditingController? additionalTextFieldController;
  String? Function(BuildContext, String?)?
      additionalTextFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    additionalTextFieldFocusNode?.dispose();
    additionalTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get bipocRadioButtonValue => bipocRadioButtonValueController?.value;
  String? get sdRadioButtonValue => sdRadioButtonValueController?.value;
  String? get huRadioButtonValue => huRadioButtonValueController?.value;
  String? get ethnicityRadioButtonValue =>
      ethnicityRadioButtonValueController?.value;
}
