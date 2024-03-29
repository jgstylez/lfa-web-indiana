import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'google_sign_in_button_model.dart';
export 'google_sign_in_button_model.dart';

class GoogleSignInButtonWidget extends StatefulWidget {
  const GoogleSignInButtonWidget({super.key});

  @override
  State<GoogleSignInButtonWidget> createState() =>
      _GoogleSignInButtonWidgetState();
}

class _GoogleSignInButtonWidgetState extends State<GoogleSignInButtonWidget> {
  late GoogleSignInButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoogleSignInButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: 'Continue with Google',
        icon: const FaIcon(
          FontAwesomeIcons.google,
          size: 20.0,
        ),
        options: FFButtonOptions(
          width: double.infinity,
          height: 44.0,
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: FlutterFlowTheme.of(context).secondaryBackground,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
              ),
          elevation: 0.0,
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).alternate,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
          hoverColor: FlutterFlowTheme.of(context).primaryBackground,
        ),
      ),
    );
  }
}
