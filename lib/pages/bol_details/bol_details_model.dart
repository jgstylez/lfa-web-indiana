import '/flutter_flow/flutter_flow_util.dart';
import 'bol_details_widget.dart' show BolDetailsWidget;
import 'package:flutter/material.dart';

class BolDetailsModel extends FlutterFlowModel<BolDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
