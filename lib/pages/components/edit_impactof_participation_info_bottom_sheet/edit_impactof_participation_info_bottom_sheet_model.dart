import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_impactof_participation_info_bottom_sheet_widget.dart'
    show EditImpactofParticipationInfoBottomSheetWidget;
import 'package:flutter/material.dart';

class EditImpactofParticipationInfoBottomSheetModel
    extends FlutterFlowModel<EditImpactofParticipationInfoBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
