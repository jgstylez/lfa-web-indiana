import '/flutter_flow/flutter_flow_util.dart';
import 'admin_mobile_menu_widget.dart' show AdminMobileMenuWidget;
import 'package:flutter/material.dart';

class AdminMobileMenuModel extends FlutterFlowModel<AdminMobileMenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
