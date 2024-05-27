import '/flutter_flow/flutter_flow_util.dart';
import 'welcome_old_widget.dart' show WelcomeOldWidget;
import 'package:flutter/material.dart';

class WelcomeOldModel extends FlutterFlowModel<WelcomeOldWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
