import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'paper_photo_confirmation_model.dart';
export 'paper_photo_confirmation_model.dart';

class PaperPhotoConfirmationWidget extends StatefulWidget {
  const PaperPhotoConfirmationWidget({super.key});

  @override
  State<PaperPhotoConfirmationWidget> createState() =>
      _PaperPhotoConfirmationWidgetState();
}

class _PaperPhotoConfirmationWidgetState
    extends State<PaperPhotoConfirmationWidget> {
  late PaperPhotoConfirmationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaperPhotoConfirmationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'paperPhotoConfirmation',
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
                automaticallyImplyLeading: true,
                title: Text(
                  'REVIEW',
                  style: FlutterFlowTheme.of(context).headlineMedium,
                ),
                actions: const [],
                centerTitle: true,
                toolbarHeight: 100.0,
                elevation: 0.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do you want to keep this:',
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          constraints: const BoxConstraints(
                            minWidth: 500.0,
                            minHeight: double.infinity,
                            maxWidth: double.infinity,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  constraints: const BoxConstraints(
                                    minWidth: 500.0,
                                    maxWidth: 500.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 24.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Retake\n',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 12.0, 24.0, 12.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                      elevation: 1.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Continue',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 12.0, 24.0, 12.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).accent1,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                        ),
                                    elevation: 1.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
