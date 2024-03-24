import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bol_data_table_model.dart';
export 'bol_data_table_model.dart';

class BolDataTableWidget extends StatefulWidget {
  const BolDataTableWidget({super.key});

  @override
  State<BolDataTableWidget> createState() => _BolDataTableWidgetState();
}

class _BolDataTableWidgetState extends State<BolDataTableWidget> {
  late BolDataTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BolDataTableModel());

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
        final pageBOL = BillOfLadingStatus.values.toList();
        return FlutterFlowDataTable<BillOfLadingStatus>(
          controller: _model.paginatedDataTableController,
          data: pageBOL,
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
                  'Created',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              onSort: onSortChanged,
            ),
          ],
          dataRowBuilder:
              (pageBOLItem, pageBOLIndex, selected, onSelectChanged) => DataRow(
            color: MaterialStateProperty.all(
              pageBOLIndex % 2 == 0
                  ? FlutterFlowTheme.of(context).tertiary
                  : FlutterFlowTheme.of(context).primary,
            ),
            cells: [
              Text(
                'BOL Status',
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
                'Date Created',
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
