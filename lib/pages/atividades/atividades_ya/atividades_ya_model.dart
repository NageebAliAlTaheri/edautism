import '/flutter_flow/flutter_flow_util.dart';
import 'atividades_ya_widget.dart' show AtividadesYaWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AtividadesYaModel extends FlutterFlowModel<AtividadesYaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer;

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
