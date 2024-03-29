import '/flutter_flow/flutter_flow_util.dart';
import 'signature_confirmation_widget.dart' show SignatureConfirmationWidget;
import 'package:flutter/material.dart';

class SignatureConfirmationModel
    extends FlutterFlowModel<SignatureConfirmationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
