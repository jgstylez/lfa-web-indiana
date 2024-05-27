import '/flutter_flow/flutter_flow_util.dart';
import 'pickup_signature_widget.dart' show PickupSignatureWidget;
import 'package:flutter/material.dart';

class PickupSignatureModel extends FlutterFlowModel<PickupSignatureWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
