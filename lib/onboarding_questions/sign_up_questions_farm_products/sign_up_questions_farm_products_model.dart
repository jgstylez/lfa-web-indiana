import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_questions_farm_products_widget.dart'
    show SignUpQuestionsFarmProductsWidget;
import 'package:flutter/material.dart';

class SignUpQuestionsFarmProductsModel
    extends FlutterFlowModel<SignUpQuestionsFarmProductsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for productsOfferedTextField widget.
  FocusNode? productsOfferedTextFieldFocusNode;
  TextEditingController? productsOfferedTextFieldController;
  String? Function(BuildContext, String?)?
      productsOfferedTextFieldControllerValidator;
  String? _productsOfferedTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for howLongProduceDropDown widget.
  String? howLongProduceDropDownValue;
  FormFieldController<String>? howLongProduceDropDownValueController;
  // State field(s) for whereSoldTextField widget.
  FocusNode? whereSoldTextFieldFocusNode;
  TextEditingController? whereSoldTextFieldController;
  String? Function(BuildContext, String?)?
      whereSoldTextFieldControllerValidator;
  String? _whereSoldTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for productQuantityTextField widget.
  FocusNode? productQuantityTextFieldFocusNode;
  TextEditingController? productQuantityTextFieldController;
  String? Function(BuildContext, String?)?
      productQuantityTextFieldControllerValidator;
  String? _productQuantityTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for certifiedRadioButton widget.
  FormFieldController<String>? certifiedRadioButtonValueController;
  // State field(s) for howLongFarmingDropDown widget.
  String? howLongFarmingDropDownValue;
  FormFieldController<String>? howLongFarmingDropDownValueController;
  // State field(s) for farmingStatusDropDown widget.
  String? farmingStatusDropDownValue;
  FormFieldController<String>? farmingStatusDropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    productsOfferedTextFieldControllerValidator =
        _productsOfferedTextFieldControllerValidator;
    whereSoldTextFieldControllerValidator =
        _whereSoldTextFieldControllerValidator;
    productQuantityTextFieldControllerValidator =
        _productQuantityTextFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    productsOfferedTextFieldFocusNode?.dispose();
    productsOfferedTextFieldController?.dispose();

    whereSoldTextFieldFocusNode?.dispose();
    whereSoldTextFieldController?.dispose();

    productQuantityTextFieldFocusNode?.dispose();
    productQuantityTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get certifiedRadioButtonValue =>
      certifiedRadioButtonValueController?.value;
}
