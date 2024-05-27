import '/flutter_flow/flutter_flow_util.dart';
import 'delivery_details_widget.dart' show DeliveryDetailsWidget;
import 'package:flutter/material.dart';

class DeliveryDetailsModel extends FlutterFlowModel<DeliveryDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
