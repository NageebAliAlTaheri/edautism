import '/flutter_flow/flutter_flow_util.dart';
import 'page_type_sex_widget.dart' show PageTypeSexWidget;
import 'package:flutter/material.dart';

class PageTypeSexModel extends FlutterFlowModel<PageTypeSexWidget> {
  ///  Local state fields for this page.

  String? sexphoto = '1';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;

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
