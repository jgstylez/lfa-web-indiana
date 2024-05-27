import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_product_bottom_sheet_widget.dart' show AddProductBottomSheetWidget;
import 'package:flutter/material.dart';

class AddProductBottomSheetModel
    extends FlutterFlowModel<AddProductBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TitleTextField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldTextController;
  String? Function(BuildContext, String?)?
      titleTextFieldTextControllerValidator;
  String? _titleTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Product Title is required';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }

    return null;
  }

  // State field(s) for QtyWtDD widget.
  String? qtyWtDDValue;
  FormFieldController<String>? qtyWtDDValueController;
  // State field(s) for QuantityAmtTextField widget.
  FocusNode? quantityAmtTextFieldFocusNode;
  TextEditingController? quantityAmtTextFieldTextController;
  String? Function(BuildContext, String?)?
      quantityAmtTextFieldTextControllerValidator;
  // State field(s) for qtyTypeDD widget.
  String? qtyTypeDDValue;
  FormFieldController<String>? qtyTypeDDValueController;
  // State field(s) for WeightAmtTextField widget.
  FocusNode? weightAmtTextFieldFocusNode;
  TextEditingController? weightAmtTextFieldTextController;
  String? Function(BuildContext, String?)?
      weightAmtTextFieldTextControllerValidator;
  // State field(s) for weightTypeDD widget.
  String? weightTypeDDValue;
  FormFieldController<String>? weightTypeDDValueController;
  // State field(s) for AddMsgCheckbox widget.
  bool? addMsgCheckboxValue;
  // State field(s) for shortMsgTF widget.
  FocusNode? shortMsgTFFocusNode;
  TextEditingController? shortMsgTFTextController;
  String? Function(BuildContext, String?)? shortMsgTFTextControllerValidator;

  @override
  void initState(BuildContext context) {
    titleTextFieldTextControllerValidator =
        _titleTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    quantityAmtTextFieldFocusNode?.dispose();
    quantityAmtTextFieldTextController?.dispose();

    weightAmtTextFieldFocusNode?.dispose();
    weightAmtTextFieldTextController?.dispose();

    shortMsgTFFocusNode?.dispose();
    shortMsgTFTextController?.dispose();
  }
}
