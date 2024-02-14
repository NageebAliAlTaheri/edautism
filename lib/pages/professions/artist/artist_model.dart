import '/flutter_flow/flutter_flow_util.dart';
import 'artist_widget.dart' show ArtistWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class ArtistModel extends FlutterFlowModel<ArtistWidget> {
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
