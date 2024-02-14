import '/flutter_flow/flutter_flow_util.dart';
import 'doctor_page_widget.dart' show DoctorPageWidget;
import 'package:flutter/material.dart';

class DoctorPageModel extends FlutterFlowModel<DoctorPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageController;
  String? Function(BuildContext, String?)? ageControllerValidator;
  // State field(s) for Sex widget.
  final sexKey = GlobalKey();
  FocusNode? sexFocusNode;
  TextEditingController? sexController;
  String? sexSelectedOption;
  String? Function(BuildContext, String?)? sexControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    phoneFocusNode?.dispose();
    phoneController?.dispose();

    ageFocusNode?.dispose();
    ageController?.dispose();

    sexFocusNode?.dispose();

    textFieldFocusNode1?.dispose();
    textController6?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
