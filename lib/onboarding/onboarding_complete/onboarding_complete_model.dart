import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding_complete_widget.dart' show OnboardingCompleteWidget;
import 'package:flutter/material.dart';

class OnboardingCompleteModel
    extends FlutterFlowModel<OnboardingCompleteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in onboardingComplete widget.
  List<ProfileRow>? checkProfile;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
