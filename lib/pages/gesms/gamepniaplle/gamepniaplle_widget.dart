import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'gamepniaplle_model.dart';
export 'gamepniaplle_model.dart';

class GamepniaplleWidget extends StatefulWidget {
  const GamepniaplleWidget({super.key});

  @override
  State<GamepniaplleWidget> createState() => _GamepniaplleWidgetState();
}

class _GamepniaplleWidgetState extends State<GamepniaplleWidget> {
  late GamepniaplleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GamepniaplleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'aladxppl' /* اين ظلي؟ */,
            ),
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'mz57yn4i' /* اختر  الظل المشابه للصورة */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 20.0,
                          ),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'bgoc3grc' /* الف مبروك نتيجتك 70 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 40.0,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.05),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/photo1_o.png',
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.soundPlayer1 ??= AudioPlayer();
                            if (_model.soundPlayer1!.playing) {
                              await _model.soundPlayer1!.stop();
                            }
                            _model.soundPlayer1!.setVolume(1.0);
                            _model.soundPlayer1!
                                .setAsset('assets/audios/answre_True.mp3')
                                .then((_) => _model.soundPlayer1!.play());

                            await Future.delayed(
                                const Duration(milliseconds: 5000));

                            context.pushNamed('Gamebnanas');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/photo1_c.png',
                              width: 80.0,
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.soundPlayer2 ??= AudioPlayer();
                            if (_model.soundPlayer2!.playing) {
                              await _model.soundPlayer2!.stop();
                            }
                            _model.soundPlayer2!.setVolume(1.0);
                            _model.soundPlayer2!
                                .setAsset('assets/audios/Answer_false.mp3')
                                .then((_) => _model.soundPlayer2!.play());
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/photo4_c.png',
                              width: 80.0,
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.soundPlayer3 ??= AudioPlayer();
                            if (_model.soundPlayer3!.playing) {
                              await _model.soundPlayer3!.stop();
                            }
                            _model.soundPlayer3!.setVolume(1.0);
                            _model.soundPlayer3!
                                .setAsset('assets/audios/Answer_false.mp3')
                                .then((_) => _model.soundPlayer3!.play());
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/photo2_c.png',
                              width: 80.0,
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}