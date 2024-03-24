import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/side_nav/side_nav_widget.dart';
import 'entities_widget.dart' show EntitiesWidget;
import 'package:flutter/material.dart';

class EntitiesModel extends FlutterFlowModel<EntitiesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for entityDropDown widget.
  String? entityDropDownValue;
  FormFieldController<String>? entityDropDownValueController;
  // State field(s) for countyDropDown widget.
  String? countyDropDownValue;
  FormFieldController<String>? countyDropDownValueController;
  // State field(s) for regionDropDown widget.
  String? regionDropDownValue;
  FormFieldController<String>? regionDropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
