import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _tem = [36, 36, 36, 36, 37, 36, 36];
  List<int> get tem => _tem;
  set tem(List<int> value) {
    _tem = value;
  }

  void addToTem(int value) {
    tem.add(value);
  }

  void removeFromTem(int value) {
    tem.remove(value);
  }

  void removeAtIndexFromTem(int index) {
    tem.removeAt(index);
  }

  void updateTemAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    tem[index] = updateFn(_tem[index]);
  }

  void insertAtIndexInTem(int index, int value) {
    tem.insert(index, value);
  }

  List<int> _day = [1, 2, 3, 4, 5, 6, 7];
  List<int> get day => _day;
  set day(List<int> value) {
    _day = value;
  }

  void addToDay(int value) {
    day.add(value);
  }

  void removeFromDay(int value) {
    day.remove(value);
  }

  void removeAtIndexFromDay(int index) {
    day.removeAt(index);
  }

  void updateDayAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    day[index] = updateFn(_day[index]);
  }

  void insertAtIndexInDay(int index, int value) {
    day.insert(index, value);
  }

  List<int> _BloodSugar = [90, 88, 92, 87, 91, 89, 85];
  List<int> get BloodSugar => _BloodSugar;
  set BloodSugar(List<int> value) {
    _BloodSugar = value;
  }

  void addToBloodSugar(int value) {
    BloodSugar.add(value);
  }

  void removeFromBloodSugar(int value) {
    BloodSugar.remove(value);
  }

  void removeAtIndexFromBloodSugar(int index) {
    BloodSugar.removeAt(index);
  }

  void updateBloodSugarAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    BloodSugar[index] = updateFn(_BloodSugar[index]);
  }

  void insertAtIndexInBloodSugar(int index, int value) {
    BloodSugar.insert(index, value);
  }

  List<int> _Oxygen = [97, 97, 95, 97, 96, 97, 96];
  List<int> get Oxygen => _Oxygen;
  set Oxygen(List<int> value) {
    _Oxygen = value;
  }

  void addToOxygen(int value) {
    Oxygen.add(value);
  }

  void removeFromOxygen(int value) {
    Oxygen.remove(value);
  }

  void removeAtIndexFromOxygen(int index) {
    Oxygen.removeAt(index);
  }

  void updateOxygenAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    Oxygen[index] = updateFn(_Oxygen[index]);
  }

  void insertAtIndexInOxygen(int index, int value) {
    Oxygen.insert(index, value);
  }

  List<int> _BloodPressureSystolic = [120, 115, 120, 118, 110, 120, 120];
  List<int> get BloodPressureSystolic => _BloodPressureSystolic;
  set BloodPressureSystolic(List<int> value) {
    _BloodPressureSystolic = value;
  }

  void addToBloodPressureSystolic(int value) {
    BloodPressureSystolic.add(value);
  }

  void removeFromBloodPressureSystolic(int value) {
    BloodPressureSystolic.remove(value);
  }

  void removeAtIndexFromBloodPressureSystolic(int index) {
    BloodPressureSystolic.removeAt(index);
  }

  void updateBloodPressureSystolicAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    BloodPressureSystolic[index] = updateFn(_BloodPressureSystolic[index]);
  }

  void insertAtIndexInBloodPressureSystolic(int index, int value) {
    BloodPressureSystolic.insert(index, value);
  }

  List<int> _BloodPressureDiastolic = [80, 76, 80, 79, 80, 80, 80, 80];
  List<int> get BloodPressureDiastolic => _BloodPressureDiastolic;
  set BloodPressureDiastolic(List<int> value) {
    _BloodPressureDiastolic = value;
  }

  void addToBloodPressureDiastolic(int value) {
    BloodPressureDiastolic.add(value);
  }

  void removeFromBloodPressureDiastolic(int value) {
    BloodPressureDiastolic.remove(value);
  }

  void removeAtIndexFromBloodPressureDiastolic(int index) {
    BloodPressureDiastolic.removeAt(index);
  }

  void updateBloodPressureDiastolicAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    BloodPressureDiastolic[index] = updateFn(_BloodPressureDiastolic[index]);
  }

  void insertAtIndexInBloodPressureDiastolic(int index, int value) {
    BloodPressureDiastolic.insert(index, value);
  }

  List<int> _weight = [76, 74, 75, 74, 76, 75, 75];
  List<int> get weight => _weight;
  set weight(List<int> value) {
    _weight = value;
  }

  void addToWeight(int value) {
    weight.add(value);
  }

  void removeFromWeight(int value) {
    weight.remove(value);
  }

  void removeAtIndexFromWeight(int index) {
    weight.removeAt(index);
  }

  void updateWeightAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    weight[index] = updateFn(_weight[index]);
  }

  void insertAtIndexInWeight(int index, int value) {
    weight.insert(index, value);
  }

  List<int> _HeartRate = [75, 75, 76, 74, 75, 80, 75];
  List<int> get HeartRate => _HeartRate;
  set HeartRate(List<int> value) {
    _HeartRate = value;
  }

  void addToHeartRate(int value) {
    HeartRate.add(value);
  }

  void removeFromHeartRate(int value) {
    HeartRate.remove(value);
  }

  void removeAtIndexFromHeartRate(int index) {
    HeartRate.removeAt(index);
  }

  void updateHeartRateAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    HeartRate[index] = updateFn(_HeartRate[index]);
  }

  void insertAtIndexInHeartRate(int index, int value) {
    HeartRate.insert(index, value);
  }

  List<int> _WaistMeasurement = [55, 56, 55, 56, 55, 54, 55];
  List<int> get WaistMeasurement => _WaistMeasurement;
  set WaistMeasurement(List<int> value) {
    _WaistMeasurement = value;
  }

  void addToWaistMeasurement(int value) {
    WaistMeasurement.add(value);
  }

  void removeFromWaistMeasurement(int value) {
    WaistMeasurement.remove(value);
  }

  void removeAtIndexFromWaistMeasurement(int index) {
    WaistMeasurement.removeAt(index);
  }

  void updateWaistMeasurementAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    WaistMeasurement[index] = updateFn(_WaistMeasurement[index]);
  }

  void insertAtIndexInWaistMeasurement(int index, int value) {
    WaistMeasurement.insert(index, value);
  }

  List<int> _UricAcid = [8, 7, 8, 8, 9, 7, 8];
  List<int> get UricAcid => _UricAcid;
  set UricAcid(List<int> value) {
    _UricAcid = value;
  }

  void addToUricAcid(int value) {
    UricAcid.add(value);
  }

  void removeFromUricAcid(int value) {
    UricAcid.remove(value);
  }

  void removeAtIndexFromUricAcid(int index) {
    UricAcid.removeAt(index);
  }

  void updateUricAcidAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    UricAcid[index] = updateFn(_UricAcid[index]);
  }

  void insertAtIndexInUricAcid(int index, int value) {
    UricAcid.insert(index, value);
  }

  bool _scanbluetooth = false;
  bool get scanbluetooth => _scanbluetooth;
  set scanbluetooth(bool value) {
    _scanbluetooth = value;
  }

  bool _ontime = false;
  bool get ontime => _ontime;
  set ontime(bool value) {
    _ontime = value;
  }

  bool _eatdrug = false;
  bool get eatdrug => _eatdrug;
  set eatdrug(bool value) {
    _eatdrug = value;
  }

  String _question = '';
  String get question => _question;
  set question(String value) {
    _question = value;
  }

  String _question2 = '';
  String get question2 => _question2;
  set question2(String value) {
    _question2 = value;
  }

  String _question3 = '';
  String get question3 => _question3;
  set question3(String value) {
    _question3 = value;
  }

  String _question4 = '';
  String get question4 => _question4;
  set question4(String value) {
    _question4 = value;
  }

  String _question5 = '';
  String get question5 => _question5;
  set question5(String value) {
    _question5 = value;
  }

  String _question6 = '';
  String get question6 => _question6;
  set question6(String value) {
    _question6 = value;
  }

  int _Filtertime = 1;
  int get Filtertime => _Filtertime;
  set Filtertime(int value) {
    _Filtertime = value;
  }

  int _Selectday = 1;
  int get Selectday => _Selectday;
  set Selectday(int value) {
    _Selectday = value;
  }

  bool _picture = false;
  bool get picture => _picture;
  set picture(bool value) {
    _picture = value;
  }
}
