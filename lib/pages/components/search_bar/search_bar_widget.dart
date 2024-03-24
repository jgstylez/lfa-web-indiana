import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'search_bar_model.dart';
export 'search_bar_model.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  late SearchBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchBarModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 8.0, 8.0),
      child: TextFormField(
        controller: _model.textController,
        focusNode: _model.textFieldFocusNode,
        autofocus: true,
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'Search or scan for entity',
          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
          alignLabelWithHint: false,
          hintStyle: FlutterFlowTheme.of(context).titleSmall,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).secondary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          filled: true,
          fillColor: FlutterFlowTheme.of(context).secondary,
          prefixIcon: Icon(
            Icons.search_sharp,
            color: FlutterFlowTheme.of(context).primary,
          ),
          suffixIcon: Icon(
            Icons.qr_code_scanner_sharp,
            color: FlutterFlowTheme.of(context).secondaryText,
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyMedium,
        validator: _model.textControllerValidator.asValidator(context),
      ),
    );
  }
}
