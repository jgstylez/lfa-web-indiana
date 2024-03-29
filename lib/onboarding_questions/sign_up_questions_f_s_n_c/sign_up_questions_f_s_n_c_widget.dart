import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'sign_up_questions_f_s_n_c_model.dart';
export 'sign_up_questions_f_s_n_c_model.dart';

class SignUpQuestionsFSNCWidget extends StatefulWidget {
  const SignUpQuestionsFSNCWidget({super.key});

  @override
  State<SignUpQuestionsFSNCWidget> createState() =>
      _SignUpQuestionsFSNCWidgetState();
}

class _SignUpQuestionsFSNCWidgetState extends State<SignUpQuestionsFSNCWidget> {
  late SignUpQuestionsFSNCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpQuestionsFSNCModel());

    _model.connectionsTextFieldController ??= TextEditingController();
    _model.connectionsTextFieldFocusNode ??= FocusNode();

    _model.existingProgramsTextFieldController ??= TextEditingController();
    _model.existingProgramsTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'SignUpQuestions_FSNC',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primary,
            body: SafeArea(
              top: true,
              child: Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    shape: BoxShape.rectangle,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 32.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                  'SignUpQuestions_ImpactOfParticipation');
                                            },
                                            child: Text(
                                              'Food Security \nNetwork Connections',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displayMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, -1.0),
                                    child: Text(
                                      ' ',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 0.0, 25.0, 0.0),
                                    child: Form(
                                      key: _model.formKey,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    -1.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      30.0, 12.0, 30.0, 0.0),
                                              child: Text(
                                                'Have you previously donated farm products to a food pantry, food bank program or community food access effort?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    -1.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      24.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowRadioButton(
                                                options: ['Yes', 'No'].toList(),
                                                onChanged: (val) =>
                                                    setState(() {}),
                                                controller: _model
                                                        .hasDonatedRadioButtonValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                optionHeight: 32.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                selectedTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                buttonPosition:
                                                    RadioButtonPosition.left,
                                                direction: Axis.horizontal,
                                                radioButtonColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                inactiveRadioButtonColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                toggleable: false,
                                                horizontalAlignment:
                                                    WrapAlignment.start,
                                                verticalAlignment:
                                                    WrapCrossAlignment.start,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    -1.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      30.0, 12.0, 30.0, 0.0),
                                              child: Text(
                                                'Have you previously sold food to a food pantry, food bank program or community food access effort?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    -1.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      24.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowRadioButton(
                                                options: ['Yes', 'No'].toList(),
                                                onChanged: (val) =>
                                                    setState(() {}),
                                                controller: _model
                                                        .hasSoldRadioButtonValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                optionHeight: 32.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                selectedTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                buttonPosition:
                                                    RadioButtonPosition.left,
                                                direction: Axis.horizontal,
                                                radioButtonColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                inactiveRadioButtonColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                toggleable: false,
                                                horizontalAlignment:
                                                    WrapAlignment.start,
                                                verticalAlignment:
                                                    WrapCrossAlignment.start,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    -1.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      30.0, 12.0, 30.0, 0.0),
                                              child: Text(
                                                'Please share food security network connections you would like to create as a participating producer.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .connectionsTextFieldController,
                                              focusNode: _model
                                                  .connectionsTextFieldFocusNode,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        24.0, 12.0, 24.0, 12.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: null,
                                              validator: _model
                                                  .connectionsTextFieldControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    -1.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      30.0, 12.0, 30.0, 0.0),
                                              child: Text(
                                                'Is there an existing program you would like your products to go to?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .existingProgramsTextFieldController,
                                              focusNode: _model
                                                  .existingProgramsTextFieldFocusNode,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        24.0, 12.0, 24.0, 12.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: null,
                                              validator: _model
                                                  .existingProgramsTextFieldControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                                10.0, 24.0, 10.0, 24.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Expanded(
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      context.safePop();
                                                    },
                                                    text: 'Back',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 40.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(24.0,
                                                              0.0, 24.0, 0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(0.0,
                                                              0.0, 0.0, 0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: FFButtonWidget(
                                                    onPressed: ((_model
                                                                        .hasDonatedRadioButtonValue ==
                                                                    null ||
                                                                _model.hasDonatedRadioButtonValue ==
                                                                    '') ||
                                                            (_model.hasSoldRadioButtonValue ==
                                                                    null ||
                                                                _model.hasSoldRadioButtonValue ==
                                                                    '') ||
                                                            (/* NOT RECOMMENDED */ _model
                                                                    .connectionsTextFieldController
                                                                    .text ==
                                                                'true') ||
                                                            (/* NOT RECOMMENDED */ _model
                                                                    .existingProgramsTextFieldController
                                                                    .text ==
                                                                'true'))
                                                        ? null
                                                        : () async {
                                                            if (_model.formKey
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }
                                                            if (_model
                                                                    .hasDonatedRadioButtonValue ==
                                                                null) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Please answer \'Yes\' or \'No\'',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent2,
                                                                ),
                                                              );
                                                              return;
                                                            }
                                                            if (_model
                                                                    .hasSoldRadioButtonValue ==
                                                                null) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Have you previously sold food to a food pantry, food bank program or community food access effort?',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent2,
                                                                ),
                                                              );
                                                              return;
                                                            }
                                                            await CsFsncTable()
                                                                .insert({
                                                              'id':
                                                                  currentUserUid,
                                                              'existing_program':
                                                                  _model
                                                                      .existingProgramsTextFieldController
                                                                      .text,
                                                              'network_connections':
                                                                  _model
                                                                      .connectionsTextFieldController
                                                                      .text,
                                                              'has_donated':
                                                                  _model.hasDonatedRadioButtonValue ==
                                                                      'True',
                                                              'has_sold': _model
                                                                      .hasSoldRadioButtonValue ==
                                                                  'True',
                                                            });
                                                            if (Navigator.of(
                                                                    context)
                                                                .canPop()) {
                                                              context.pop();
                                                            }
                                                            context.pushNamed(
                                                                'SignUpQuestions_ImpactOfParticipation');
                                                          },
                                                    text: 'Next',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 40.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(24.0,
                                                              0.0, 24.0, 0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(0.0,
                                                              0.0, 0.0, 0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                      disabledColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                  ),
                                                ),
                                              ].divide(
                                                  const SizedBox(width: 24.0)),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 20.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-1.0, -1.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 1200.0,
                                      constraints: BoxConstraints(
                                        minWidth:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        minHeight:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        maxWidth:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        maxHeight: 1500.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: Image.network(
                                            'https://hvnzublzljmybszdaeho.supabase.co/storage/v1/object/public/images/lfa-fsnc-bg.jpg',
                                          ).image,
                                        ),
                                      ),
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                      child: const Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Spacer(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
