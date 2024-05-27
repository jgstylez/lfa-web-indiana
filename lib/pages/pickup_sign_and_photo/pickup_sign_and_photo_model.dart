import '/flutter_flow/flutter_flow_util.dart';
import 'pickup_sign_and_photo_widget.dart' show PickupSignAndPhotoWidget;
import 'package:flutter/material.dart';

class PickupSignAndPhotoModel
    extends FlutterFlowModel<PickupSignAndPhotoWidget> {
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
