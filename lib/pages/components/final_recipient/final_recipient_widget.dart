import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'final_recipient_model.dart';
export 'final_recipient_model.dart';

class FinalRecipientWidget extends StatefulWidget {
  const FinalRecipientWidget({super.key});

  @override
  State<FinalRecipientWidget> createState() => _FinalRecipientWidgetState();
}

class _FinalRecipientWidgetState extends State<FinalRecipientWidget> {
  late FinalRecipientModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinalRecipientModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 500.0,
        ),
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Are you the\nfinal recipient?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        FFAppState().isFinalRecipient = true;
                      });
                      Navigator.pop(context);
                    },
                    text: 'Yes',
                    options: FFButtonOptions(
                      width: 150.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).accent1,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        FFAppState().isFinalRecipient = false;
                      });
                      Navigator.pop(context);
                    },
                    text: 'No',
                    options: FFButtonOptions(
                      width: 150.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primaryText,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ].divide(const SizedBox(width: 24.0)).around(const SizedBox(width: 24.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
