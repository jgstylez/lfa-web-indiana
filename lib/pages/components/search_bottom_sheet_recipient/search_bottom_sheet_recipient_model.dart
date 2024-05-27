import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'search_bottom_sheet_recipient_widget.dart'
    show SearchBottomSheetRecipientWidget;
import 'package:flutter/material.dart';

class SearchBottomSheetRecipientModel
    extends FlutterFlowModel<SearchBottomSheetRecipientWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SearchTF widget.
  final searchTFKey = GlobalKey();
  FocusNode? searchTFFocusNode;
  TextEditingController? searchTFTextController;
  String? searchTFSelectedOption;
  String? Function(BuildContext, String?)? searchTFTextControllerValidator;
  Completer<List<ProfileRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTFFocusNode?.dispose();
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
