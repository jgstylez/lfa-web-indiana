import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_blk_loam_info_bottom_sheet_widget.dart'
    show EditBlkLoamInfoBottomSheetWidget;
import 'package:flutter/material.dart';

class EditBlkLoamInfoBottomSheetModel
    extends FlutterFlowModel<EditBlkLoamInfoBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in editBlkLoamInfoBottomSheet widget.
  List<CsBlkLoamRow>? outputBLKLoam;
  // State field(s) for learnMoreRadioButton widget.
  FormFieldController<String>? learnMoreRadioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get learnMoreRadioButtonValue =>
      learnMoreRadioButtonValueController?.value;
}
