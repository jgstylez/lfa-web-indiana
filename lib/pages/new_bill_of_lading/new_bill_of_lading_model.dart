import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_bill_of_lading_widget.dart' show NewBillOfLadingWidget;
import 'package:flutter/material.dart';

class NewBillOfLadingModel extends FlutterFlowModel<NewBillOfLadingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for deliverSwitch widget.
  bool? deliverSwitchValue;
  // Stores action output result for [Backend Call - Insert Row] action in SendButton widget.
  BillOfLadingRow? bolOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
