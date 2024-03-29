import '/flutter_flow/flutter_flow_util.dart';
import 'add_product_bottom_sheet_widget.dart' show AddProductBottomSheetWidget;
import 'package:flutter/material.dart';

class AddProductBottomSheetModel
    extends FlutterFlowModel<AddProductBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TitleTextField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldController;
  String? Function(BuildContext, String?)? titleTextFieldControllerValidator;
  String? _titleTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Product Title is required';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }

    return null;
  }

  // State field(s) for QuantityTextField widget.
  FocusNode? quantityTextFieldFocusNode;
  TextEditingController? quantityTextFieldController;
  String? Function(BuildContext, String?)? quantityTextFieldControllerValidator;
  // State field(s) for WeightTextField widget.
  FocusNode? weightTextFieldFocusNode;
  TextEditingController? weightTextFieldController;
  String? Function(BuildContext, String?)? weightTextFieldControllerValidator;
  // State field(s) for shortMsgTF widget.
  FocusNode? shortMsgTFFocusNode;
  TextEditingController? shortMsgTFController;
  String? Function(BuildContext, String?)? shortMsgTFControllerValidator;

  @override
  void initState(BuildContext context) {
    titleTextFieldControllerValidator = _titleTextFieldControllerValidator;
  }

  @override
  void dispose() {
    titleTextFieldFocusNode?.dispose();
    titleTextFieldController?.dispose();

    quantityTextFieldFocusNode?.dispose();
    quantityTextFieldController?.dispose();

    weightTextFieldFocusNode?.dispose();
    weightTextFieldController?.dispose();

    shortMsgTFFocusNode?.dispose();
    shortMsgTFController?.dispose();
  }
}
