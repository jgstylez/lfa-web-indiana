import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'delivery_list_model.dart';
export 'delivery_list_model.dart';

class DeliveryListWidget extends StatefulWidget {
  const DeliveryListWidget({super.key});

  @override
  State<DeliveryListWidget> createState() => _DeliveryListWidgetState();
}

class _DeliveryListWidgetState extends State<DeliveryListWidget> {
  late DeliveryListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryListModel());

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(
          maxWidth: 1170.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiary,
          boxShadow: const [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 1.0),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 40.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 112.0,
                          height: 20.0,
                          decoration: const BoxDecoration(),
                        ),
                      ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Recipient',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Sent At',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Status',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Invoice',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: Container(
                        width: double.infinity,
                        height: 110.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: FlutterFlowTheme.of(context).alternate,
                              offset: const Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Ana Rodgers',
                                  textAlign: TextAlign.start,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Feb 29, 2024',
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 28.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          'In Progress',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Jan. 30th, 2023',
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
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
          ],
        ),
      ),
    );
  }
}
