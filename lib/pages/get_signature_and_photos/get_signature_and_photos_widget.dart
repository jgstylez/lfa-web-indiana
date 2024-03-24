import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/components/final_recipient/final_recipient_widget.dart';
import '/pages/components/pickup_signature/pickup_signature_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'get_signature_and_photos_model.dart';
export 'get_signature_and_photos_model.dart';

class GetSignatureAndPhotosWidget extends StatefulWidget {
  const GetSignatureAndPhotosWidget({super.key});

  @override
  State<GetSignatureAndPhotosWidget> createState() =>
      _GetSignatureAndPhotosWidgetState();
}

class _GetSignatureAndPhotosWidgetState
    extends State<GetSignatureAndPhotosWidget> {
  late GetSignatureAndPhotosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetSignatureAndPhotosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'getSignatureAndPhotos',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primary,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                iconTheme: IconThemeData(
                    color: FlutterFlowTheme.of(context).secondaryText),
                automaticallyImplyLeading: true,
                title: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'UPLOAD',
                      style: FlutterFlowTheme.of(context).headlineMedium,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('userHomePage');
                        },
                        child: Icon(
                          Icons.home_filled,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
                actions: const [],
                centerTitle: true,
                toolbarHeight: 100.0,
                elevation: 0.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    constraints: const BoxConstraints(
                      minWidth: 500.0,
                      maxWidth: 500.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.person_search,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 32.0,
                            ),
                            title: Text(
                              'Recipient',
                              style: FlutterFlowTheme.of(context).titleSmall,
                            ),
                            subtitle: Text(
                              'Business Name | Display Name',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent2,
                                    lineHeight: 1.5,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context).tertiary,
                            dense: false,
                            contentPadding: const EdgeInsets.all(16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                barrierColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () => _model
                                            .unfocusNode.canRequestFocus
                                        ? FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode)
                                        : FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const PickupSignatureWidget(
                                        signature: '',
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).tertiary,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 7.0,
                                    color: Color(0x2F1D2429),
                                    offset: Offset(0.0, 3.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 12.0, 0.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.file_upload_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 32.0,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 8.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFAppState().signature !=
                                                          ''
                                                  ? 'Signature received'
                                                  : 'Get signature',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (FFAppState().signature != '')
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          FFAppState().signature,
                                          width: 50.0,
                                          height: 50.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderRadius: 8.0,
                                      icon: Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                storageFolderPath: 'users/products',
                                maxWidth: 1500.00,
                                maxHeight: 1500.00,
                                imageQuality: 90,
                                allowPhoto: true,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => _model.isDataUploading = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
                                          ))
                                      .toList();

                                  downloadUrls =
                                      await uploadSupabaseStorageFiles(
                                    bucketName: 'products',
                                    selectedFiles: selectedMedia,
                                  );
                                } finally {
                                  _model.isDataUploading = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  setState(() {
                                    _model.uploadedLocalFile =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl = downloadUrls.first;
                                  });
                                } else {
                                  setState(() {});
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
                                    offset: Offset(0.0, 3.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 12.0, 0.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.add_a_photo_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 32.0,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 8.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFAppState()
                                                              .productPhoto !=
                                                          ''
                                                  ? 'Photo received'
                                                  : 'Get product photo',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (FFAppState().productPhoto != '')
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/483/600',
                                          width: 50.0,
                                          height: 50.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderRadius: 8.0,
                                      icon: Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 2,
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      barrierColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const FinalRecipientWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));

                                    if (FFAppState().isFinalRecipient) {
                                      await DeliveryTable().insert({
                                        'final_recipient': '',
                                        'signature_image': '',
                                        'product_image': '',
                                        'sender': '',
                                      });

                                      context.pushNamed('userHomePage');
                                    } else {
                                      context.pushNamed('userHomePage');
                                    }
                                  },
                                  text: 'Done',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).accent1,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(width: 16.0))
                                .around(const SizedBox(width: 16.0)),
                          ),
                          const Spacer(),
                        ].divide(const SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
