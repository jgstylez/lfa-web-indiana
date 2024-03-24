import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'view_delivery_details_model.dart';
export 'view_delivery_details_model.dart';

class ViewDeliveryDetailsWidget extends StatefulWidget {
  const ViewDeliveryDetailsWidget({
    super.key,
    required this.deliveryInfo,
  });

  final DeliveryRow? deliveryInfo;

  @override
  State<ViewDeliveryDetailsWidget> createState() =>
      _ViewDeliveryDetailsWidgetState();
}

class _ViewDeliveryDetailsWidgetState extends State<ViewDeliveryDetailsWidget> {
  late ViewDeliveryDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewDeliveryDetailsModel());

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
                      Icons.cancel_sharp,
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
                      'Delivery Details',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).headlineSmall,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ID#:',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    '100000000',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Status:',
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
                children: [
                  Text(
                    'Transporter:',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    'Yellow Road Farms',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sender:',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    'Yellow Road Farms',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recipient:',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  Text(
                    'Brown Food Storage',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Started On:',
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
                    'Region:',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product:',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://picsum.photos/seed/893/600',
                      width: 100.0,
                      height: 80.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Signature:',
                    style: FlutterFlowTheme.of(context).bodyLarge,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://picsum.photos/seed/893/600',
                      width: 100.0,
                      height: 80.0,
                      fit: BoxFit.fill,
                    ),
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
