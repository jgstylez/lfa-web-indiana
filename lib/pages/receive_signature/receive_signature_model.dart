import '/flutter_flow/flutter_flow_util.dart';
import 'receive_signature_widget.dart' show ReceiveSignatureWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class ReceiveSignatureModel extends FlutterFlowModel<ReceiveSignatureWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    unfocusNode.dispose();
    signatureController?.dispose();
  }
}
