import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/test/save/save_widget.dart';
import 'quatation_page_widget.dart' show QuatationPageWidget;
import 'package:flutter/material.dart';

class QuatationPageModel extends FlutterFlowModel<QuatationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RadioButton1 widget.
  FormFieldController<String>? radioButton1ValueController;
  // State field(s) for RadioButton2 widget.
  FormFieldController<String>? radioButton2ValueController;
  // State field(s) for RadioButton3 widget.
  FormFieldController<String>? radioButton3ValueController;
  // State field(s) for RadioButton4 widget.
  FormFieldController<String>? radioButton4ValueController;
  // State field(s) for RadioButton5 widget.
  FormFieldController<String>? radioButton5ValueController;
  // State field(s) for RadioButton6 widget.
  FormFieldController<String>? radioButton6ValueController;
  // State field(s) for RadioButton7 widget.
  FormFieldController<String>? radioButton7ValueController;
  // State field(s) for RadioButton8 widget.
  FormFieldController<String>? radioButton8ValueController;
  // State field(s) for RadioButton9 widget.
  FormFieldController<String>? radioButton9ValueController;
  // State field(s) for RadioButton100 widget.
  FormFieldController<String>? radioButton100ValueController;
  // State field(s) for RadioButton11 widget.
  FormFieldController<String>? radioButton11ValueController;
  // State field(s) for RadioButton12 widget.
  FormFieldController<String>? radioButton12ValueController;
  // State field(s) for RadioButton13 widget.
  FormFieldController<String>? radioButton13ValueController;
  // State field(s) for RadioButton14 widget.
  FormFieldController<String>? radioButton14ValueController;
  // State field(s) for RadioButton15 widget.
  FormFieldController<String>? radioButton15ValueController;
  // State field(s) for RadioButton16 widget.
  FormFieldController<String>? radioButton16ValueController;
  // State field(s) for RadioButton17 widget.
  FormFieldController<String>? radioButton17ValueController;
  // Model for save component.
  late SaveModel saveModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    saveModel = createModel(context, () => SaveModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    saveModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButton1Value => radioButton1ValueController?.value;
  String? get radioButton2Value => radioButton2ValueController?.value;
  String? get radioButton3Value => radioButton3ValueController?.value;
  String? get radioButton4Value => radioButton4ValueController?.value;
  String? get radioButton5Value => radioButton5ValueController?.value;
  String? get radioButton6Value => radioButton6ValueController?.value;
  String? get radioButton7Value => radioButton7ValueController?.value;
  String? get radioButton8Value => radioButton8ValueController?.value;
  String? get radioButton9Value => radioButton9ValueController?.value;
  String? get radioButton100Value => radioButton100ValueController?.value;
  String? get radioButton11Value => radioButton11ValueController?.value;
  String? get radioButton12Value => radioButton12ValueController?.value;
  String? get radioButton13Value => radioButton13ValueController?.value;
  String? get radioButton14Value => radioButton14ValueController?.value;
  String? get radioButton15Value => radioButton15ValueController?.value;
  String? get radioButton16Value => radioButton16ValueController?.value;
  String? get radioButton17Value => radioButton17ValueController?.value;
}
