import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/components/side_nav/side_nav_widget.dart';
import 'dart:async';
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
  Completer<List<ProfileRow>>? requestCompleter;
  // State field(s) for countyDropDown widget.
  String? countyDropDownValue;
  FormFieldController<String>? countyDropDownValueController;
  // State field(s) for regionDropDown widget.
  String? regionDropDownValue;
  FormFieldController<String>? regionDropDownValueController;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
