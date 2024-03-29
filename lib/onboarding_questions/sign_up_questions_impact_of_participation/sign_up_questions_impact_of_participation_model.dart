import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_questions_impact_of_participation_widget.dart'
    show SignUpQuestionsImpactOfParticipationWidget;
import 'package:flutter/material.dart';

class SignUpQuestionsImpactOfParticipationModel
    extends FlutterFlowModel<SignUpQuestionsImpactOfParticipationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for impactTextField widget.
  FocusNode? impactTextFieldFocusNode;
  TextEditingController? impactTextFieldController;
  String? Function(BuildContext, String?)? impactTextFieldControllerValidator;
  String? _impactTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    impactTextFieldControllerValidator = _impactTextFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    impactTextFieldFocusNode?.dispose();
    impactTextFieldController?.dispose();
  }
}
