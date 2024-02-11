import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c2r_widget.dart' show C2rWidget;
import 'package:flutter/material.dart';

class C2rModel extends FlutterFlowModel<C2rWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDownband1 widget.
  String? dropDownband1Value;
  FormFieldController<String>? dropDownband1ValueController;
  // State field(s) for DropDownband2 widget.
  String? dropDownband2Value;
  FormFieldController<String>? dropDownband2ValueController;
  // State field(s) for DropDownband3 widget.
  String? dropDownband3Value;
  FormFieldController<String>? dropDownband3ValueController;
  // State field(s) for DropDownMultiplier widget.
  String? dropDownMultiplierValue;
  FormFieldController<String>? dropDownMultiplierValueController;
  // State field(s) for DropDownTolerance widget.
  String? dropDownToleranceValue;
  FormFieldController<String>? dropDownToleranceValueController;
  // State field(s) for DropDownTempCoeff widget.
  String? dropDownTempCoeffValue;
  FormFieldController<String>? dropDownTempCoeffValueController;
  // State field(s) for DropDownNumband widget.
  String? dropDownNumbandValue;
  FormFieldController<String>? dropDownNumbandValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
