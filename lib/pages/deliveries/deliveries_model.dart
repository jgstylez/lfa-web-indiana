import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/delivery_list/delivery_list_widget.dart';
import 'deliveries_widget.dart' show DeliveriesWidget;
import 'package:flutter/material.dart';

class DeliveriesModel extends FlutterFlowModel<DeliveriesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for deliveryList component.
  late DeliveryListModel deliveryListModel;

  @override
  void initState(BuildContext context) {
    deliveryListModel = createModel(context, () => DeliveryListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    deliveryListModel.dispose();
  }
}
