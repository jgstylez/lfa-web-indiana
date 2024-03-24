import '/flutter_flow/flutter_flow_util.dart';
import 'upload_paper_form_widget.dart' show UploadPaperFormWidget;
import 'package:flutter/material.dart';

class UploadPaperFormModel extends FlutterFlowModel<UploadPaperFormWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
