import '/flutter_flow/flutter_flow_util.dart';
import 'new_user_widget.dart' show NewUserWidget;
import 'package:flutter/material.dart';

class NewUserModel extends FlutterFlowModel<NewUserWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for RePassword widget.
  FocusNode? rePasswordFocusNode;
  TextEditingController? rePasswordController;
  late bool rePasswordVisibility;
  String? Function(BuildContext, String?)? rePasswordControllerValidator;
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

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
    passwordVisibility = false;
    rePasswordVisibility = false;
  }

  @override
  void dispose() {
    listViewController?.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    rePasswordFocusNode?.dispose();
    rePasswordController?.dispose();

    phoneFocusNode?.dispose();
    phoneController?.dispose();

    ageFocusNode?.dispose();
    ageController?.dispose();

    sexFocusNode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
