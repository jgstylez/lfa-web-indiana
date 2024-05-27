import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _bolSender = prefs.getString('ff_bolSender') ?? _bolSender;
    });
    _safeInit(() {
      _avatar = prefs.getString('ff_avatar') ?? _avatar;
    });
    _safeInit(() {
      _displayName = prefs.getString('ff_displayName') ?? _displayName;
    });
    _safeInit(() {
      _senderID = prefs.getString('ff_senderID') ?? _senderID;
    });
    _safeInit(() {
      _firstName = prefs.getString('ff_firstName') ?? _firstName;
    });
    _safeInit(() {
      _hasAdminAccess = prefs.getBool('ff_hasAdminAccess') ?? _hasAdminAccess;
    });
    _safeInit(() {
      _onboardingStage =
          prefs.getString('ff_onboardingStage') ?? _onboardingStage;
    });
    _safeInit(() {
      _notifications = prefs.getInt('ff_notifications') ?? _notifications;
    });
    _safeInit(() {
      _apiKey = prefs.getString('ff_apiKey') ?? _apiKey;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isFarmer = false;
  bool get isFarmer => _isFarmer;
  set isFarmer(bool value) {
    _isFarmer = value;
  }

  String _bolStatus = '';
  String get bolStatus => _bolStatus;
  set bolStatus(String value) {
    _bolStatus = value;
  }

  String _uploadedInvoice = '';
  String get uploadedInvoice => _uploadedInvoice;
  set uploadedInvoice(String value) {
    _uploadedInvoice = value;
  }

  String _signature = '';
  String get signature => _signature;
  set signature(String value) {
    _signature = value;
  }

  bool _isFinalRecipient = false;
  bool get isFinalRecipient => _isFinalRecipient;
  set isFinalRecipient(bool value) {
    _isFinalRecipient = value;
  }

  String _bolRecipient = '';
  String get bolRecipient => _bolRecipient;
  set bolRecipient(String value) {
    _bolRecipient = value;
  }

  String _bolSender = '';
  String get bolSender => _bolSender;
  set bolSender(String value) {
    _bolSender = value;
    prefs.setString('ff_bolSender', value);
  }

  String _bolTransporter = '';
  String get bolTransporter => _bolTransporter;
  set bolTransporter(String value) {
    _bolTransporter = value;
  }

  String _recipientEmail = '';
  String get recipientEmail => _recipientEmail;
  set recipientEmail(String value) {
    _recipientEmail = value;
  }

  List<String> _multipleRecipients = [];
  List<String> get multipleRecipients => _multipleRecipients;
  set multipleRecipients(List<String> value) {
    _multipleRecipients = value;
  }

  void addToMultipleRecipients(String value) {
    _multipleRecipients.add(value);
  }

  void removeFromMultipleRecipients(String value) {
    _multipleRecipients.remove(value);
  }

  void removeAtIndexFromMultipleRecipients(int index) {
    _multipleRecipients.removeAt(index);
  }

  void updateMultipleRecipientsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _multipleRecipients[index] = updateFn(_multipleRecipients[index]);
  }

  void insertAtIndexInMultipleRecipients(int index, String value) {
    _multipleRecipients.insert(index, value);
  }

  String _avatar =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/lfa-supa-x42c0t/assets/qdeakbmcx1gb/default-avatar-img.svg';
  String get avatar => _avatar;
  set avatar(String value) {
    _avatar = value;
    prefs.setString('ff_avatar', value);
  }

  String _displayName = '';
  String get displayName => _displayName;
  set displayName(String value) {
    _displayName = value;
    prefs.setString('ff_displayName', value);
  }

  String _productPhoto = '';
  String get productPhoto => _productPhoto;
  set productPhoto(String value) {
    _productPhoto = value;
  }

  List<BolProductStruct> _bolProducts = [];
  List<BolProductStruct> get bolProducts => _bolProducts;
  set bolProducts(List<BolProductStruct> value) {
    _bolProducts = value;
  }

  void addToBolProducts(BolProductStruct value) {
    _bolProducts.add(value);
  }

  void removeFromBolProducts(BolProductStruct value) {
    _bolProducts.remove(value);
  }

  void removeAtIndexFromBolProducts(int index) {
    _bolProducts.removeAt(index);
  }

  void updateBolProductsAtIndex(
    int index,
    BolProductStruct Function(BolProductStruct) updateFn,
  ) {
    _bolProducts[index] = updateFn(_bolProducts[index]);
  }

  void insertAtIndexInBolProducts(int index, BolProductStruct value) {
    _bolProducts.insert(index, value);
  }

  List<BolProductStruct> _getProductList = [];
  List<BolProductStruct> get getProductList => _getProductList;
  set getProductList(List<BolProductStruct> value) {
    _getProductList = value;
  }

  void addToGetProductList(BolProductStruct value) {
    _getProductList.add(value);
  }

  void removeFromGetProductList(BolProductStruct value) {
    _getProductList.remove(value);
  }

  void removeAtIndexFromGetProductList(int index) {
    _getProductList.removeAt(index);
  }

  void updateGetProductListAtIndex(
    int index,
    BolProductStruct Function(BolProductStruct) updateFn,
  ) {
    _getProductList[index] = updateFn(_getProductList[index]);
  }

  void insertAtIndexInGetProductList(int index, BolProductStruct value) {
    _getProductList.insert(index, value);
  }

  List<DateTime> _dashboardDateChart = [
    DateTime.fromMillisecondsSinceEpoch(1709311020000),
    DateTime.fromMillisecondsSinceEpoch(1709397420000),
    DateTime.fromMillisecondsSinceEpoch(1709483820000),
    DateTime.fromMillisecondsSinceEpoch(1709656620000),
    DateTime.fromMillisecondsSinceEpoch(1709743080000),
    DateTime.fromMillisecondsSinceEpoch(1709829480000)
  ];
  List<DateTime> get dashboardDateChart => _dashboardDateChart;
  set dashboardDateChart(List<DateTime> value) {
    _dashboardDateChart = value;
  }

  void addToDashboardDateChart(DateTime value) {
    _dashboardDateChart.add(value);
  }

  void removeFromDashboardDateChart(DateTime value) {
    _dashboardDateChart.remove(value);
  }

  void removeAtIndexFromDashboardDateChart(int index) {
    _dashboardDateChart.removeAt(index);
  }

  void updateDashboardDateChartAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    _dashboardDateChart[index] = updateFn(_dashboardDateChart[index]);
  }

  void insertAtIndexInDashboardDateChart(int index, DateTime value) {
    _dashboardDateChart.insert(index, value);
  }

  List<int> _dashboardCountChart = [345, 35, 355, 34, 757, 45];
  List<int> get dashboardCountChart => _dashboardCountChart;
  set dashboardCountChart(List<int> value) {
    _dashboardCountChart = value;
  }

  void addToDashboardCountChart(int value) {
    _dashboardCountChart.add(value);
  }

  void removeFromDashboardCountChart(int value) {
    _dashboardCountChart.remove(value);
  }

  void removeAtIndexFromDashboardCountChart(int index) {
    _dashboardCountChart.removeAt(index);
  }

  void updateDashboardCountChartAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _dashboardCountChart[index] = updateFn(_dashboardCountChart[index]);
  }

  void insertAtIndexInDashboardCountChart(int index, int value) {
    _dashboardCountChart.insert(index, value);
  }

  String _senderID = '2741e497-50e4-4f80-9cc2-cc1cb50095a1';
  String get senderID => _senderID;
  set senderID(String value) {
    _senderID = value;
    prefs.setString('ff_senderID', value);
  }

  String _recipientID = '';
  String get recipientID => _recipientID;
  set recipientID(String value) {
    _recipientID = value;
  }

  String _transporterID = '';
  String get transporterID => _transporterID;
  set transporterID(String value) {
    _transporterID = value;
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String value) {
    _firstName = value;
    prefs.setString('ff_firstName', value);
  }

  bool _hasAdminAccess = false;
  bool get hasAdminAccess => _hasAdminAccess;
  set hasAdminAccess(bool value) {
    _hasAdminAccess = value;
    prefs.setBool('ff_hasAdminAccess', value);
  }

  String _searchQuery = '';
  String get searchQuery => _searchQuery;
  set searchQuery(String value) {
    _searchQuery = value;
  }

  String _onboardingStage = '';
  String get onboardingStage => _onboardingStage;
  set onboardingStage(String value) {
    _onboardingStage = value;
    prefs.setString('ff_onboardingStage', value);
  }

  String _transporterEmail = '';
  String get transporterEmail => _transporterEmail;
  set transporterEmail(String value) {
    _transporterEmail = value;
  }

  int _notifications = 0;
  int get notifications => _notifications;
  set notifications(int value) {
    _notifications = value;
    prefs.setInt('ff_notifications', value);
  }

  String _apiKey = '';
  String get apiKey => _apiKey;
  set apiKey(String value) {
    _apiKey = value;
    prefs.setString('ff_apiKey', value);
  }

  String _entityFilterKey = '';
  String get entityFilterKey => _entityFilterKey;
  set entityFilterKey(String value) {
    _entityFilterKey = value;
  }

  String _countyFilterKey = '';
  String get countyFilterKey => _countyFilterKey;
  set countyFilterKey(String value) {
    _countyFilterKey = value;
  }

  String _regionFilterKey = '';
  String get regionFilterKey => _regionFilterKey;
  set regionFilterKey(String value) {
    _regionFilterKey = value;
  }

  List<String> _queryFilter = [];
  List<String> get queryFilter => _queryFilter;
  set queryFilter(List<String> value) {
    _queryFilter = value;
  }

  void addToQueryFilter(String value) {
    _queryFilter.add(value);
  }

  void removeFromQueryFilter(String value) {
    _queryFilter.remove(value);
  }

  void removeAtIndexFromQueryFilter(int index) {
    _queryFilter.removeAt(index);
  }

  void updateQueryFilterAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _queryFilter[index] = updateFn(_queryFilter[index]);
  }

  void insertAtIndexInQueryFilter(int index, String value) {
    _queryFilter.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
