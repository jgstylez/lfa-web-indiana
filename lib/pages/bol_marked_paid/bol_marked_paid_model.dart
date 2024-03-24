import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bol_marked_paid_widget.dart' show BolMarkedPaidWidget;
import 'package:flutter/material.dart';

class BolMarkedPaidModel extends FlutterFlowModel<BolMarkedPaidWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Update Row(s)] action in markPaidButton widget.
  List<BillOfLadingRow>? newOrderDeliveryDoc;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
