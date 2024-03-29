import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'entity_data_table_model.dart';
export 'entity_data_table_model.dart';

class EntityDataTableWidget extends StatefulWidget {
  const EntityDataTableWidget({super.key});

  @override
  State<EntityDataTableWidget> createState() => _EntityDataTableWidgetState();
}

class _EntityDataTableWidgetState extends State<EntityDataTableWidget> {
  late EntityDataTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EntityDataTableModel());

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
        final order = OrderDeliveryStatus.values.toList();
        return FlutterFlowDataTable<OrderDeliveryStatus>(
          controller: _model.paginatedDataTableController,
          data: order,
          columnsBuilder: (onSortChanged) => [
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Entity',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Business',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Owner',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Visibility(
                  visible: responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ),
                  child: Text(
                    'Joined',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              onSort: onSortChanged,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'County',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              onSort: onSortChanged,
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Region',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              onSort: onSortChanged,
            ),
          ],
          dataRowBuilder: (orderItem, orderIndex, selected, onSelectChanged) =>
              DataRow(
            color: MaterialStateProperty.all(
              orderIndex % 2 == 0
                  ? FlutterFlowTheme.of(context).tertiary
                  : FlutterFlowTheme.of(context).primary,
            ),
            cells: [
              Text(
                'Entity Type',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Business Name',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Display Name',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              Visibility(
                visible: responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ),
                child: Text(
                  'Date',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Text(
                'County',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Region',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
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
