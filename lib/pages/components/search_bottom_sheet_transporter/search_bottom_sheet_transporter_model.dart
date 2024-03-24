import '/flutter_flow/flutter_flow_util.dart';
import 'search_bottom_sheet_transporter_widget.dart'
    show SearchBottomSheetTransporterWidget;
import 'package:flutter/material.dart';

class SearchBottomSheetTransporterModel
    extends FlutterFlowModel<SearchBottomSheetTransporterWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
