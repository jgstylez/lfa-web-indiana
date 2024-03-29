import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_questions_product_distribution_widget.dart'
    show SignUpQuestionsProductDistributionWidget;
import 'package:flutter/material.dart';

class SignUpQuestionsProductDistributionModel
    extends FlutterFlowModel<SignUpQuestionsProductDistributionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for transportTextField widget.
  FocusNode? transportTextFieldFocusNode;
  TextEditingController? transportTextFieldController;
  String? Function(BuildContext, String?)?
      transportTextFieldControllerValidator;
  String? _transportTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for wholesalerTextField widget.
  FocusNode? wholesalerTextFieldFocusNode;
  TextEditingController? wholesalerTextFieldController;
  String? Function(BuildContext, String?)?
      wholesalerTextFieldControllerValidator;
  String? _wholesalerTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for handlingSystemTextField widget.
  FocusNode? handlingSystemTextFieldFocusNode;
  TextEditingController? handlingSystemTextFieldController;
  String? Function(BuildContext, String?)?
      handlingSystemTextFieldControllerValidator;
  String? _handlingSystemTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for servicesCheckboxGroup widget.
  List<String>? servicesCheckboxGroupValues;
  FormFieldController<List<String>>? servicesCheckboxGroupValueController;

  @override
  void initState(BuildContext context) {
    transportTextFieldControllerValidator =
        _transportTextFieldControllerValidator;
    wholesalerTextFieldControllerValidator =
        _wholesalerTextFieldControllerValidator;
    handlingSystemTextFieldControllerValidator =
        _handlingSystemTextFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    transportTextFieldFocusNode?.dispose();
    transportTextFieldController?.dispose();

    wholesalerTextFieldFocusNode?.dispose();
    wholesalerTextFieldController?.dispose();

    handlingSystemTextFieldFocusNode?.dispose();
    handlingSystemTextFieldController?.dispose();
  }
}
