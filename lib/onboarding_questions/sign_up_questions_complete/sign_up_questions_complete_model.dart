import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_questions_complete_widget.dart'
    show SignUpQuestionsCompleteWidget;
import 'package:flutter/material.dart';

class SignUpQuestionsCompleteModel
    extends FlutterFlowModel<SignUpQuestionsCompleteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
