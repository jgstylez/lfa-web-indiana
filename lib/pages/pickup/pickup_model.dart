import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/pickup_list/pickup_list_widget.dart';
import 'pickup_widget.dart' show PickupWidget;
import 'package:flutter/material.dart';

class PickupModel extends FlutterFlowModel<PickupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for pickupList component.
  late PickupListModel pickupListModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pickupListModel = createModel(context, () => PickupListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pickupListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
