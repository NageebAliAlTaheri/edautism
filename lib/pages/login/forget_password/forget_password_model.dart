import '/flutter_flow/flutter_flow_util.dart';
import 'forget_password_widget.dart' show ForgetPasswordWidget;
import 'package:flutter/material.dart';

class ForgetPasswordModel extends FlutterFlowModel<ForgetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for YourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailController;
  String? Function(BuildContext, String?)? yourEmailControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    yourEmailFocusNode?.dispose();
    yourEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
