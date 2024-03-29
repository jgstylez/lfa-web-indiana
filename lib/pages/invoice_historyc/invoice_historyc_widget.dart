import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/invoice_history_comp/invoice_history_comp_widget.dart';
import 'package:flutter/material.dart';
import 'invoice_historyc_model.dart';
export 'invoice_historyc_model.dart';

class InvoiceHistorycWidget extends StatefulWidget {
  const InvoiceHistorycWidget({super.key});

  @override
  State<InvoiceHistorycWidget> createState() => _InvoiceHistorycWidgetState();
}

class _InvoiceHistorycWidgetState extends State<InvoiceHistorycWidget> {
  late InvoiceHistorycModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvoiceHistorycModel());

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
        title: 'invoiceHistory',
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
                title: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'INVOICES',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        constraints: const BoxConstraints(
                          minWidth: double.infinity,
                          minHeight: double.infinity,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        child: wrapWithModel(
                          model: _model.invoiceHistoryCompModel,
                          updateCallback: () => setState(() {}),
                          child: const InvoiceHistoryCompWidget(),
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
