import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'orders_data_table_model.dart';
export 'orders_data_table_model.dart';

class OrdersDataTableWidget extends StatefulWidget {
  const OrdersDataTableWidget({super.key});

  @override
  State<OrdersDataTableWidget> createState() => _OrdersDataTableWidgetState();
}

class _OrdersDataTableWidgetState extends State<OrdersDataTableWidget> {
  late OrdersDataTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdersDataTableModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final pageBol = OrderDeliveryStatus.values.toList();
        return FlutterFlowDataTable<OrderDeliveryStatus>(
          controller: _model.oDataController,
          data: pageBol,
          columnsBuilder: (onSortChanged) => [
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Status',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Sender',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Recipient',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'County',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              onSort: onSortChanged,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Region',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              onSort: onSortChanged,
            ),
          ],
          dataRowBuilder:
              (pageBolItem, pageBolIndex, selected, onSelectChanged) => DataRow(
            color: MaterialStateProperty.all(
              pageBolIndex % 2 == 0
                  ? FlutterFlowTheme.of(context).tertiary
                  : FlutterFlowTheme.of(context).primary,
            ),
            cells: [
              Text(
                'Order Status',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Text(
                'Business Name',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Text(
                'Business Name',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Text(
                'County',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Text(
                'Region',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ].map((c) => DataCell(c)).toList(),
          ),
          paginated: true,
          selectable: false,
          hidePaginator: false,
          showFirstLastButtons: true,
          headingRowHeight: 56.0,
          dataRowHeight: 48.0,
          columnSpacing: 20.0,
          headingRowColor: FlutterFlowTheme.of(context).secondary,
          sortIconColor: FlutterFlowTheme.of(context).tertiary,
          borderRadius: BorderRadius.circular(8.0),
          addHorizontalDivider: false,
          addTopAndBottomDivider: false,
          hideDefaultHorizontalDivider: true,
          addVerticalDivider: false,
        );
      },
    );
  }
}
