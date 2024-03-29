import '/flutter_flow/flutter_flow_util.dart';
import 'lfa_widget.dart' show LfaWidget;
import 'package:flutter/material.dart';

class LfaModel extends FlutterFlowModel<LfaWidget> {
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
