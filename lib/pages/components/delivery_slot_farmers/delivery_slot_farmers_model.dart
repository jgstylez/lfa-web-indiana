import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'delivery_slot_farmers_widget.dart' show DeliverySlotFarmersWidget;
import 'package:flutter/material.dart';

class DeliverySlotFarmersModel
    extends FlutterFlowModel<DeliverySlotFarmersWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<DeliveryRow>? updatedBolPickupSlots;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
