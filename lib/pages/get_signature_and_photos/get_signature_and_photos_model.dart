import '/flutter_flow/flutter_flow_util.dart';
import 'get_signature_and_photos_widget.dart' show GetSignatureAndPhotosWidget;
import 'package:flutter/material.dart';

class GetSignatureAndPhotosModel
    extends FlutterFlowModel<GetSignatureAndPhotosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
