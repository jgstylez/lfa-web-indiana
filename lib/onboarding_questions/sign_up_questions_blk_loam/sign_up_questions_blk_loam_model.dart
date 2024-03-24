import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_questions_blk_loam_widget.dart'
    show SignUpQuestionsBlkLoamWidget;
import 'package:flutter/material.dart';

class SignUpQuestionsBlkLoamModel
    extends FlutterFlowModel<SignUpQuestionsBlkLoamWidget> {
  ///  Local state fields for this page.

  String? farmer;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Occupation widget.
  List<String>? occupationValues;
  FormFieldController<List<String>>? occupationValueController;
  // State field(s) for farmerSpecify widget.
  List<String>? farmerSpecifyValues;
  FormFieldController<List<String>>? farmerSpecifyValueController;
  // State field(s) for publications widget.
  List<String>? publicationsValues;
  FormFieldController<List<String>>? publicationsValueController;
  // State field(s) for eventAndResources widget.
  List<String>? eventAndResourcesValues;
  FormFieldController<List<String>>? eventAndResourcesValueController;
  // State field(s) for additionalNotes widget.
  FocusNode? additionalNotesFocusNode;
  TextEditingController? additionalNotesController;
  String? Function(BuildContext, String?)? additionalNotesControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    additionalNotesFocusNode?.dispose();
    additionalNotesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
