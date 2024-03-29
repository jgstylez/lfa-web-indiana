import '/flutter_flow/flutter_flow_util.dart';
import 'pickup_signature_widget.dart' show PickupSignatureWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class PickupSignatureModel extends FlutterFlowModel<PickupSignatureWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Signature widget.
  SignatureController? signatureController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    signatureController?.dispose();
  }
}
