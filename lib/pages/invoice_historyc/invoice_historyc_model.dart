import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/invoice_history_comp/invoice_history_comp_widget.dart';
import 'invoice_historyc_widget.dart' show InvoiceHistorycWidget;
import 'package:flutter/material.dart';

class InvoiceHistorycModel extends FlutterFlowModel<InvoiceHistorycWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for invoiceHistoryComp component.
  late InvoiceHistoryCompModel invoiceHistoryCompModel;

  @override
  void initState(BuildContext context) {
    invoiceHistoryCompModel =
        createModel(context, () => InvoiceHistoryCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    invoiceHistoryCompModel.dispose();
  }
}
