import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_f_s_n_c_info_bottom_sheet_widget.dart'
    show EditFSNCInfoBottomSheetWidget;
import 'package:flutter/material.dart';

class EditFSNCInfoBottomSheetModel
    extends FlutterFlowModel<EditFSNCInfoBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for hasDonated widget.
  FormFieldController<String>? hasDonatedValueController;
  // State field(s) for hasSoldFood widget.
  FormFieldController<String>? hasSoldFoodValueController;
  // State field(s) for hasFSNC widget.
  FormFieldController<String>? hasFSNCValueController;
  // State field(s) for networkOrg widget.
  FocusNode? networkOrgFocusNode;
  TextEditingController? networkOrgTextController;
  String? Function(BuildContext, String?)? networkOrgTextControllerValidator;
  // State field(s) for networkName widget.
  FocusNode? networkNameFocusNode;
  TextEditingController? networkNameTextController;
  String? Function(BuildContext, String?)? networkNameTextControllerValidator;
  // State field(s) for networkPhone widget.
  FocusNode? networkPhoneFocusNode;
  TextEditingController? networkPhoneTextController;
  String? Function(BuildContext, String?)? networkPhoneTextControllerValidator;
  // State field(s) for networkEmail widget.
  FocusNode? networkEmailFocusNode;
  TextEditingController? networkEmailTextController;
  String? Function(BuildContext, String?)? networkEmailTextControllerValidator;
  // State field(s) for hasExistingProgram widget.
  FormFieldController<String>? hasExistingProgramValueController;
  // State field(s) for programOrg widget.
  FocusNode? programOrgFocusNode;
  TextEditingController? programOrgTextController;
  String? Function(BuildContext, String?)? programOrgTextControllerValidator;
  // State field(s) for programName widget.
  FocusNode? programNameFocusNode;
  TextEditingController? programNameTextController;
  String? Function(BuildContext, String?)? programNameTextControllerValidator;
  // State field(s) for programPhone widget.
  FocusNode? programPhoneFocusNode;
  TextEditingController? programPhoneTextController;
  String? Function(BuildContext, String?)? programPhoneTextControllerValidator;
  // State field(s) for programEmail widget.
  FocusNode? programEmailFocusNode;
  TextEditingController? programEmailTextController;
  String? Function(BuildContext, String?)? programEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    networkOrgFocusNode?.dispose();
    networkOrgTextController?.dispose();

    networkNameFocusNode?.dispose();
    networkNameTextController?.dispose();

    networkPhoneFocusNode?.dispose();
    networkPhoneTextController?.dispose();

    networkEmailFocusNode?.dispose();
    networkEmailTextController?.dispose();

    programOrgFocusNode?.dispose();
    programOrgTextController?.dispose();

    programNameFocusNode?.dispose();
    programNameTextController?.dispose();

    programPhoneFocusNode?.dispose();
    programPhoneTextController?.dispose();

    programEmailFocusNode?.dispose();
    programEmailTextController?.dispose();
  }

  /// Additional helper methods.
  String? get hasDonatedValue => hasDonatedValueController?.value;
  String? get hasSoldFoodValue => hasSoldFoodValueController?.value;
  String? get hasFSNCValue => hasFSNCValueController?.value;
  String? get hasExistingProgramValue =>
      hasExistingProgramValueController?.value;
}
