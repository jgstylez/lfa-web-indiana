import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_questions_technical_assistance_widget.dart'
    show SignUpQuestionsTechnicalAssistanceWidget;
import 'package:flutter/material.dart';

class SignUpQuestionsTechnicalAssistanceModel
    extends FlutterFlowModel<SignUpQuestionsTechnicalAssistanceWidget> {
  ///  Local state fields for this page.

  String? other;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for techAssist widget.
  List<String>? techAssistValues;
  FormFieldController<List<String>>? techAssistValueController;
  // State field(s) for other widget.
  FocusNode? otherFocusNode;
  TextEditingController? otherController;
  String? Function(BuildContext, String?)? otherControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    otherFocusNode?.dispose();
    otherController?.dispose();
  }
}
