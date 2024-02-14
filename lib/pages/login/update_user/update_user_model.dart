import '/flutter_flow/flutter_flow_util.dart';
import 'update_user_widget.dart' show UpdateUserWidget;
import 'package:flutter/material.dart';

class UpdateUserModel extends FlutterFlowModel<UpdateUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for userName widget.
  FocusNode? userNameFocusNode1;
  TextEditingController? userNameController1;
  String? Function(BuildContext, String?)? userNameController1Validator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for userName widget.
  FocusNode? userNameFocusNode2;
  TextEditingController? userNameController2;
  String? Function(BuildContext, String?)? userNameController2Validator;
  // State field(s) for userName widget.
  FocusNode? userNameFocusNode3;
  TextEditingController? userNameController3;
  String? Function(BuildContext, String?)? userNameController3Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userNameFocusNode1?.dispose();
    userNameController1?.dispose();

    phoneFocusNode?.dispose();
    phoneController?.dispose();

    userNameFocusNode2?.dispose();
    userNameController2?.dispose();

    userNameFocusNode3?.dispose();
    userNameController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
