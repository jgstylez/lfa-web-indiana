import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'entity_onboarding_widget.dart' show EntityOnboardingWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EntityOnboardingModel extends FlutterFlowModel<EntityOnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for onboardPageView widget.
  PageController? onboardPageViewController;

  int get onboardPageViewCurrentIndex => onboardPageViewController != null &&
          onboardPageViewController!.hasClients &&
          onboardPageViewController!.page != null
      ? onboardPageViewController!.page!.round()
      : 0;
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'First name is required';
    }

    return null;
  }

  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Last name is required';
    }

    return null;
  }

  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  final phoneNumberMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  String? _phoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone number is required';
    }

    return null;
  }

  // State field(s) for FarmBusinessName widget.
  FocusNode? farmBusinessNameFocusNode;
  TextEditingController? farmBusinessNameTextController;
  String? Function(BuildContext, String?)?
      farmBusinessNameTextControllerValidator;
  String? _farmBusinessNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Farm / Business name is required';
    }

    return null;
  }

  // State field(s) for Address1 widget.
  FocusNode? address1FocusNode;
  TextEditingController? address1TextController;
  String? Function(BuildContext, String?)? address1TextControllerValidator;
  String? _address1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Street address is required';
    }

    return null;
  }

  // State field(s) for Address2 widget.
  FocusNode? address2FocusNode;
  TextEditingController? address2TextController;
  String? Function(BuildContext, String?)? address2TextControllerValidator;
  // State field(s) for cityDD widget.
  String? cityDDValue;
  FormFieldController<String>? cityDDValueController;
  // State field(s) for StateTF widget.
  FocusNode? stateTFFocusNode;
  TextEditingController? stateTFTextController;
  String? Function(BuildContext, String?)? stateTFTextControllerValidator;
  String? _stateTFTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'State is required';
    }

    return null;
  }

  // State field(s) for zipTF widget.
  FocusNode? zipTFFocusNode;
  TextEditingController? zipTFTextController;
  String? Function(BuildContext, String?)? zipTFTextControllerValidator;
  // State field(s) for countyDD widget.
  String? countyDDValue;
  FormFieldController<String>? countyDDValueController;
  // State field(s) for regionDD widget.
  String? regionDDValue;
  FormFieldController<String>? regionDDValueController;
  // State field(s) for entityDD widget.
  List<String>? entityDDValue;
  FormFieldController<List<String>>? entityDDValueController;
  // State field(s) for formContactDD widget.
  String? formContactDDValue;
  FormFieldController<String>? formContactDDValueController;
  // State field(s) for timeContactDD widget.
  String? timeContactDDValue;
  FormFieldController<String>? timeContactDDValueController;
  // State field(s) for differentFarmLocationRadioButton widget.
  FormFieldController<String>? differentFarmLocationRadioButtonValueController;
  // State field(s) for differentAddress widget.
  FocusNode? differentAddressFocusNode;
  TextEditingController? differentAddressTextController;
  String? Function(BuildContext, String?)?
      differentAddressTextControllerValidator;
  // State field(s) for bipocRB widget.
  FormFieldController<String>? bipocRBValueController;
  // State field(s) for sdRB widget.
  FormFieldController<String>? sdRBValueController;
  // State field(s) for huRB widget.
  FormFieldController<String>? huRBValueController;
  // State field(s) for ethnicRadioButton widget.
  FormFieldController<String>? ethnicRadioButtonValueController;
  // State field(s) for otherEthTextField widget.
  FocusNode? otherEthTextFieldFocusNode;
  TextEditingController? otherEthTextFieldTextController;
  String? Function(BuildContext, String?)?
      otherEthTextFieldTextControllerValidator;
  // State field(s) for productOfferingCG widget.
  List<String>? productOfferingCGValues;
  FormFieldController<List<String>>? productOfferingCGValueController;
  // State field(s) for productHowLongDD widget.
  String? productHowLongDDValue;
  FormFieldController<String>? productHowLongDDValueController;
  // State field(s) for whereSoldCG widget.
  List<String>? whereSoldCGValues;
  FormFieldController<List<String>>? whereSoldCGValueController;
  // State field(s) for productSupplyCG widget.
  List<String>? productSupplyCGValues;
  FormFieldController<List<String>>? productSupplyCGValueController;
  // State field(s) for qtyTypeDD widget.
  String? qtyTypeDDValue;
  FormFieldController<String>? qtyTypeDDValueController;
  // State field(s) for certificationsRB widget.
  FormFieldController<String>? certificationsRBValueController;
  // State field(s) for farmingHowLong widget.
  String? farmingHowLongValue;
  FormFieldController<String>? farmingHowLongValueController;
  // State field(s) for farmStatusDD widget.
  String? farmStatusDDValue;
  FormFieldController<String>? farmStatusDDValueController;
  // State field(s) for transportCG widget.
  List<String>? transportCGValues;
  FormFieldController<List<String>>? transportCGValueController;
  // State field(s) for hasWholesalePartner widget.
  FormFieldController<String>? hasWholesalePartnerValueController;
  // State field(s) for wholesaleNameTF widget.
  FocusNode? wholesaleNameTFFocusNode;
  TextEditingController? wholesaleNameTFTextController;
  String? Function(BuildContext, String?)?
      wholesaleNameTFTextControllerValidator;
  // State field(s) for need_phh_systemRB widget.
  FormFieldController<String>? needPhhSystemRBValueController;
  // State field(s) for handlingSystemCG widget.
  List<String>? handlingSystemCGValues;
  FormFieldController<List<String>>? handlingSystemCGValueController;
  // State field(s) for isConMemberRB widget.
  FormFieldController<String>? isConMemberRBValueController;
  // State field(s) for assistanceProductCG widget.
  List<String>? assistanceProductCGValues;
  FormFieldController<List<String>>? assistanceProductCGValueController;
  // State field(s) for otherProdAssistTF widget.
  FocusNode? otherProdAssistTFFocusNode;
  TextEditingController? otherProdAssistTFTextController;
  String? Function(BuildContext, String?)?
      otherProdAssistTFTextControllerValidator;
  // State field(s) for techAssistCG widget.
  List<String>? techAssistCGValues;
  FormFieldController<List<String>>? techAssistCGValueController;
  // State field(s) for otherTechAssistTF widget.
  FocusNode? otherTechAssistTFFocusNode;
  TextEditingController? otherTechAssistTFTextController;
  String? Function(BuildContext, String?)?
      otherTechAssistTFTextControllerValidator;
  // State field(s) for hasDonatedRB widget.
  FormFieldController<String>? hasDonatedRBValueController;
  // State field(s) for hasSoldRB widget.
  FormFieldController<String>? hasSoldRBValueController;
  // State field(s) for fsncRB widget.
  FormFieldController<String>? fsncRBValueController;
  // State field(s) for orgName1TF widget.
  FocusNode? orgName1TFFocusNode;
  TextEditingController? orgName1TFTextController;
  String? Function(BuildContext, String?)? orgName1TFTextControllerValidator;
  // State field(s) for contactName1TF widget.
  FocusNode? contactName1TFFocusNode;
  TextEditingController? contactName1TFTextController;
  String? Function(BuildContext, String?)?
      contactName1TFTextControllerValidator;
  // State field(s) for contactPhone1TF widget.
  FocusNode? contactPhone1TFFocusNode;
  TextEditingController? contactPhone1TFTextController;
  final contactPhone1TFMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)?
      contactPhone1TFTextControllerValidator;
  // State field(s) for contactEmail1TF widget.
  FocusNode? contactEmail1TFFocusNode;
  TextEditingController? contactEmail1TFTextController;
  String? Function(BuildContext, String?)?
      contactEmail1TFTextControllerValidator;
  // State field(s) for existingProgramRB widget.
  FormFieldController<String>? existingProgramRBValueController;
  // State field(s) for orgName2TF widget.
  FocusNode? orgName2TFFocusNode;
  TextEditingController? orgName2TFTextController;
  String? Function(BuildContext, String?)? orgName2TFTextControllerValidator;
  // State field(s) for contactName2TF widget.
  FocusNode? contactName2TFFocusNode;
  TextEditingController? contactName2TFTextController;
  String? Function(BuildContext, String?)?
      contactName2TFTextControllerValidator;
  // State field(s) for contactPhone2TF widget.
  FocusNode? contactPhone2TFFocusNode;
  TextEditingController? contactPhone2TFTextController;
  final contactPhone2TFMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)?
      contactPhone2TFTextControllerValidator;
  // State field(s) for contactEmail2TF widget.
  FocusNode? contactEmail2TFFocusNode;
  TextEditingController? contactEmail2TFTextController;
  String? Function(BuildContext, String?)?
      contactEmail2TFTextControllerValidator;
  // State field(s) for impactRB widget.
  FormFieldController<String>? impactRBValueController;
  // State field(s) for impactHowCG widget.
  List<String>? impactHowCGValues;
  FormFieldController<List<String>>? impactHowCGValueController;
  // State field(s) for learnMoreRB widget.
  FormFieldController<String>? learnMoreRBValueController;
  // State field(s) for occupationCG widget.
  List<String>? occupationCGValues;
  FormFieldController<List<String>>? occupationCGValueController;
  // State field(s) for specFarmerCG widget.
  List<String>? specFarmerCGValues;
  FormFieldController<List<String>>? specFarmerCGValueController;
  // State field(s) for publicationsCG widget.
  List<String>? publicationsCGValues;
  FormFieldController<List<String>>? publicationsCGValueController;
  // State field(s) for eventsResourcesCG widget.
  List<String>? eventsResourcesCGValues;
  FormFieldController<List<String>>? eventsResourcesCGValueController;
  // State field(s) for additionalNotesTF widget.
  FocusNode? additionalNotesTFFocusNode;
  TextEditingController? additionalNotesTFTextController;
  String? Function(BuildContext, String?)?
      additionalNotesTFTextControllerValidator;

  @override
  void initState(BuildContext context) {
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
    phoneNumberTextControllerValidator = _phoneNumberTextControllerValidator;
    farmBusinessNameTextControllerValidator =
        _farmBusinessNameTextControllerValidator;
    address1TextControllerValidator = _address1TextControllerValidator;
    stateTFTextControllerValidator = _stateTFTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    farmBusinessNameFocusNode?.dispose();
    farmBusinessNameTextController?.dispose();

    address1FocusNode?.dispose();
    address1TextController?.dispose();

    address2FocusNode?.dispose();
    address2TextController?.dispose();

    stateTFFocusNode?.dispose();
    stateTFTextController?.dispose();

    zipTFFocusNode?.dispose();
    zipTFTextController?.dispose();

    differentAddressFocusNode?.dispose();
    differentAddressTextController?.dispose();

    otherEthTextFieldFocusNode?.dispose();
    otherEthTextFieldTextController?.dispose();

    wholesaleNameTFFocusNode?.dispose();
    wholesaleNameTFTextController?.dispose();

    otherProdAssistTFFocusNode?.dispose();
    otherProdAssistTFTextController?.dispose();

    otherTechAssistTFFocusNode?.dispose();
    otherTechAssistTFTextController?.dispose();

    orgName1TFFocusNode?.dispose();
    orgName1TFTextController?.dispose();

    contactName1TFFocusNode?.dispose();
    contactName1TFTextController?.dispose();

    contactPhone1TFFocusNode?.dispose();
    contactPhone1TFTextController?.dispose();

    contactEmail1TFFocusNode?.dispose();
    contactEmail1TFTextController?.dispose();

    orgName2TFFocusNode?.dispose();
    orgName2TFTextController?.dispose();

    contactName2TFFocusNode?.dispose();
    contactName2TFTextController?.dispose();

    contactPhone2TFFocusNode?.dispose();
    contactPhone2TFTextController?.dispose();

    contactEmail2TFFocusNode?.dispose();
    contactEmail2TFTextController?.dispose();

    additionalNotesTFFocusNode?.dispose();
    additionalNotesTFTextController?.dispose();
  }

  /// Additional helper methods.
  String? get differentFarmLocationRadioButtonValue =>
      differentFarmLocationRadioButtonValueController?.value;
  String? get bipocRBValue => bipocRBValueController?.value;
  String? get sdRBValue => sdRBValueController?.value;
  String? get huRBValue => huRBValueController?.value;
  String? get ethnicRadioButtonValue => ethnicRadioButtonValueController?.value;
  String? get certificationsRBValue => certificationsRBValueController?.value;
  String? get hasWholesalePartnerValue =>
      hasWholesalePartnerValueController?.value;
  String? get needPhhSystemRBValue => needPhhSystemRBValueController?.value;
  String? get isConMemberRBValue => isConMemberRBValueController?.value;
  String? get hasDonatedRBValue => hasDonatedRBValueController?.value;
  String? get hasSoldRBValue => hasSoldRBValueController?.value;
  String? get fsncRBValue => fsncRBValueController?.value;
  String? get existingProgramRBValue => existingProgramRBValueController?.value;
  String? get impactRBValue => impactRBValueController?.value;
  String? get learnMoreRBValue => learnMoreRBValueController?.value;
}
