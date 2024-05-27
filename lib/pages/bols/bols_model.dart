import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'bols_widget.dart' show BolsWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class BolsModel extends FlutterFlowModel<BolsWidget> {
  ///  Local state fields for this page.

  List<BolProductStruct> productDetails = [];
  void addToProductDetails(BolProductStruct item) => productDetails.add(item);
  void removeFromProductDetails(BolProductStruct item) =>
      productDetails.remove(item);
  void removeAtIndexFromProductDetails(int index) =>
      productDetails.removeAt(index);
  void insertAtIndexInProductDetails(int index, BolProductStruct item) =>
      productDetails.insert(index, item);
  void updateProductDetailsAtIndex(
          int index, Function(BolProductStruct) updateFn) =>
      productDetails[index] = updateFn(productDetails[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool requestCompleted = false;
  String? requestLastUniqueKey;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Query cache managers for this widget.

  final _bolsManager = FutureRequestManager<List<BillOfLadingRow>>();
  Future<List<BillOfLadingRow>> bols({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<BillOfLadingRow>> Function() requestFn,
  }) =>
      _bolsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBolsCache() => _bolsManager.clear();
  void clearBolsCacheKey(String? uniqueKey) =>
      _bolsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();

    /// Dispose query cache managers for this widget.

    clearBolsCache();
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
      final requestComplete = requestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
