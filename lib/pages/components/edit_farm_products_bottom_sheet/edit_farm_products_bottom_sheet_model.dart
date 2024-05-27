import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_farm_products_bottom_sheet_widget.dart'
    show EditFarmProductsBottomSheetWidget;
import 'package:flutter/material.dart';

class EditFarmProductsBottomSheetModel
    extends FlutterFlowModel<EditFarmProductsBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for productsOfferedCG widget.
  List<String>? productsOfferedCGValues;
  FormFieldController<List<String>>? productsOfferedCGValueController;
  // State field(s) for productionDD widget.
  String? productionDDValue;
  FormFieldController<String>? productionDDValueController;
  // State field(s) for marketLocationsCG widget.
  List<String>? marketLocationsCGValues;
  FormFieldController<List<String>>? marketLocationsCGValueController;
  // State field(s) for supplyOfferingsCG widget.
  List<String>? supplyOfferingsCGValues;
  FormFieldController<List<String>>? supplyOfferingsCGValueController;
  // State field(s) for quantityTypeDD widget.
  String? quantityTypeDDValue;
  FormFieldController<String>? quantityTypeDDValueController;
  // State field(s) for certificationsRB widget.
  FormFieldController<String>? certificationsRBValueController;
  // State field(s) for farmingExpDD widget.
  String? farmingExpDDValue;
  FormFieldController<String>? farmingExpDDValueController;
  // State field(s) for farmStatusDD widget.
  String? farmStatusDDValue;
  FormFieldController<String>? farmStatusDDValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get certificationsRBValue => certificationsRBValueController?.value;
}
