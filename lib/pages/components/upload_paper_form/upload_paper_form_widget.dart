import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'upload_paper_form_model.dart';
export 'upload_paper_form_model.dart';

class UploadPaperFormWidget extends StatefulWidget {
  const UploadPaperFormWidget({super.key});

  @override
  State<UploadPaperFormWidget> createState() => _UploadPaperFormWidgetState();
}

class _UploadPaperFormWidgetState extends State<UploadPaperFormWidget> {
  late UploadPaperFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadPaperFormModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        final selectedMedia = await selectMedia(
          maxWidth: 1500.00,
          maxHeight: 1500.00,
          multiImage: false,
        );
        if (selectedMedia != null &&
            selectedMedia
                .every((m) => validateFileFormat(m.storagePath, context))) {
          setState(() => _model.isDataUploading = true);
          var selectedUploadedFiles = <FFUploadedFile>[];

          try {
            showUploadMessage(
              context,
              'Uploading file...',
              showLoading: true,
            );
            selectedUploadedFiles = selectedMedia
                .map((m) => FFUploadedFile(
                      name: m.storagePath.split('/').last,
                      bytes: m.bytes,
                      height: m.dimensions?.height,
                      width: m.dimensions?.width,
                      blurHash: m.blurHash,
                    ))
                .toList();
          } finally {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            _model.isDataUploading = false;
          }
          if (selectedUploadedFiles.length == selectedMedia.length) {
            setState(() {
              _model.uploadedLocalFile = selectedUploadedFiles.first;
            });
            showUploadMessage(context, 'Success!');
          } else {
            setState(() {});
            showUploadMessage(context, 'Failed to upload data');
            return;
          }
        }
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiary,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7.0,
              color: Color(0x2F1D2429),
              offset: Offset(
                0.0,
                3.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: Icon(
                Icons.add_a_photo_outlined,
                color: FlutterFlowTheme.of(context).secondary,
                size: 32.0,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 8.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Take photo of paper invoice',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).tertiary,
              borderRadius: 8.0,
              buttonSize: 46.0,
              icon: Icon(
                Icons.keyboard_arrow_right_sharp,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
        ),
      ),
    );
  }
}
