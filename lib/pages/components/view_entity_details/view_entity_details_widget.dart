import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'view_entity_details_model.dart';
export 'view_entity_details_model.dart';

class ViewEntityDetailsWidget extends StatefulWidget {
  const ViewEntityDetailsWidget({
    super.key,
    required this.entityProfile,
  });

  final ProfileRow? entityProfile;

  @override
  State<ViewEntityDetailsWidget> createState() =>
      _ViewEntityDetailsWidgetState();
}

class _ViewEntityDetailsWidgetState extends State<ViewEntityDetailsWidget> {
  late ViewEntityDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewEntityDetailsModel());

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
      alignment: const AlignmentDirectional(1.0, -1.0),
      child: Container(
        width: 700.0,
        height: double.infinity,
        constraints: const BoxConstraints(
          minWidth: 500.0,
          maxWidth: 600.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.all(34.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.cancel,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 32.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      'Entity Details',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).headlineSmall,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/386/600',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Owner Name:',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    'John Doe',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Business Name:',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    'In Progress',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Business Address:',
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '123 County Road 150 Marbury AL 36051',
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Address:',
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '123 County Road 150 Marbury AL 36051',
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Phone:',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    '(555) 555-5555',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'County:',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    'Allen',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Region: ',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    'Central',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Entity: ',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    'Farmer',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Joined On:',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    'March 18, 2024',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Admin:',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    'No',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: 'Close',
                      options: FFButtonOptions(
                        width: 200.0,
                        height: 50.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
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
                  ],
                ),
              ),
            ].divide(const SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
