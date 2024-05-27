import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'edit_farm_products_bottom_sheet_model.dart';
export 'edit_farm_products_bottom_sheet_model.dart';

class EditFarmProductsBottomSheetWidget extends StatefulWidget {
  const EditFarmProductsBottomSheetWidget({super.key});

  @override
  State<EditFarmProductsBottomSheetWidget> createState() =>
      _EditFarmProductsBottomSheetWidgetState();
}

class _EditFarmProductsBottomSheetWidgetState
    extends State<EditFarmProductsBottomSheetWidget> {
  late EditFarmProductsBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditFarmProductsBottomSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: FutureBuilder<List<CsFarmProductRow>>(
        future: CsFarmProductTable().querySingleRow(
          queryFn: (q) => q.eq(
            'id',
            currentUserUid,
          ),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<CsFarmProductRow> containerCsFarmProductRowList = snapshot.data!;
          final containerCsFarmProductRow =
              containerCsFarmProductRowList.isNotEmpty
                  ? containerCsFarmProductRowList.first
                  : null;
          return Container(
            width: 700.0,
            decoration: const BoxDecoration(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      'Edit Farm Products Information',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What do you produce?',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: FlutterFlowCheckboxGroup(
                              options: const [
                                'Produce (Vegetables / Fruits',
                                'Proteins (Beef / Poultry / Pork)',
                                'Dairy (Milk / Cheese)',
                                'Eggs',
                                'Value Added Products'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.productsOfferedCGValues = val),
                              controller:
                                  _model.productsOfferedCGValueController ??=
                                      FormFieldController<List<String>>(
                                containerCsFarmProductRow?.productsOffered,
                              ),
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                              checkboxBorderColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              checkboxBorderRadius: BorderRadius.circular(4.0),
                              initialized:
                                  _model.productsOfferedCGValues != null,
                            ),
                          ),
                          Text(
                            'How long have you been producing the above product offerings?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.productionDDValueController ??=
                                  FormFieldController<String>(
                                _model.productionDDValue ??=
                                    containerCsFarmProductRow
                                        ?.productionDuration,
                              ),
                              options: const [
                                '1-5 years',
                                '6-10 years',
                                '11-15 years',
                                '16 - 20 years',
                                '21+ years'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.productionDDValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Please select...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).secondary,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Text(
                            'Where are your product offerings typically marketed or sold?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: FlutterFlowCheckboxGroup(
                              options: const [
                                'Farmers Market',
                                'Stores',
                                'Wholesale',
                                'Retail',
                                'CSA / Co-op Box'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.marketLocationsCGValues = val),
                              controller:
                                  _model.marketLocationsCGValueController ??=
                                      FormFieldController<List<String>>(
                                containerCsFarmProductRow?.marketLocations,
                              ),
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                              checkboxBorderColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              checkboxBorderRadius: BorderRadius.circular(4.0),
                              initialized:
                                  _model.marketLocationsCGValues != null,
                            ),
                          ),
                          Text(
                            'Which of your product offerings are you interested in supplying as part of the IN LFPA program? And what quantity can you provide?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: FlutterFlowCheckboxGroup(
                              options: const [
                                'Produce (Vegetables / Fruits',
                                'Proteins (Beef / Poultry / Pork)',
                                'Dairy (Milk / Cheese)',
                                'Eggs',
                                'Value Added Products'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.supplyOfferingsCGValues = val),
                              controller:
                                  _model.supplyOfferingsCGValueController ??=
                                      FormFieldController<List<String>>(
                                containerCsFarmProductRow?.supplyOfferings,
                              ),
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                              checkboxBorderColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              checkboxBorderRadius: BorderRadius.circular(4.0),
                              initialized:
                                  _model.supplyOfferingsCGValues != null,
                            ),
                          ),
                          Text(
                            'In what quantities can you provide?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.quantityTypeDDValueController ??=
                                      FormFieldController<String>(
                                _model.quantityTypeDDValue ??= 'Lbs',
                              ),
                              options: const [
                                'Items',
                                'Dozen',
                                'Lbs',
                                'Pallets',
                                'Other'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.quantityTypeDDValue = val),
                              width: 300.0,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Quantity (per item/each/dozen)',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).secondary,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Text(
                            'Do you have any certifications (Organic, Certified Naturally Grown, GAP, etc)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: FlutterFlowRadioButton(
                              options: ['Yes', 'No'].toList(),
                              onChanged: (val) => setState(() {}),
                              controller:
                                  _model.certificationsRBValueController ??=
                                      FormFieldController<String>(
                                          containerCsFarmProductRow
                                                      ?.certifications ==
                                                  'Yes'
                                              ? 'Yes'
                                              : 'No'),
                              optionHeight: 32.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              selectedTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              textPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 20.0, 0.0),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.horizontal,
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).accent1,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                          Text(
                            'How many years have you been farming?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.farmingExpDDValueController ??=
                                  FormFieldController<String>(
                                _model.farmingExpDDValue ??=
                                    containerCsFarmProductRow?.farmingYearsExp,
                              ),
                              options: const [
                                '1-5 years',
                                '6-10 years',
                                '11-15 years',
                                '16 - 20 years',
                                '21+ years'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.farmingExpDDValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Please select...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).secondary,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Text(
                            'Do you farm full or part-time?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.farmStatusDDValueController ??=
                                  FormFieldController<String>(
                                _model.farmStatusDDValue ??=
                                    containerCsFarmProductRow?.farmingStatus,
                              ),
                              options: const ['Full-time', 'Part-time'],
                              onChanged: (val) => setState(
                                  () => _model.farmStatusDDValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Please select...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).secondary,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await CsFarmProductTable().update(
                                        data: {
                                          'products_offered':
                                              _model.productsOfferedCGValues,
                                          'farming_years_exp':
                                              _model.farmingExpDDValue,
                                          'production_duration':
                                              _model.productionDDValue,
                                          'market_locations':
                                              _model.marketLocationsCGValues,
                                          'farming_status':
                                              _model.farmStatusDDValue,
                                          'certifications':
                                              _model.certificationsRBValue,
                                          'supply_offerings':
                                              _model.supplyOfferingsCGValues,
                                          'supply_quantity':
                                              _model.quantityTypeDDValue,
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'id',
                                          currentUserUid,
                                        ),
                                      );
                                      Navigator.pop(context);
                                    },
                                    text: 'Update',
                                    options: FFButtonOptions(
                                      width: 330.0,
                                      height: 50.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                    text: 'Cancel',
                                    options: FFButtonOptions(
                                      width: 330.0,
                                      height: 50.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 12.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
