import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'professions_page_model.dart';
export 'professions_page_model.dart';

class ProfessionsPageWidget extends StatefulWidget {
  const ProfessionsPageWidget({super.key});

  @override
  State<ProfessionsPageWidget> createState() => _ProfessionsPageWidgetState();
}

class _ProfessionsPageWidgetState extends State<ProfessionsPageWidget> {
  late ProfessionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfessionsPageModel());

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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'irqmydsb' /* المهن */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: 500.0,
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: PageView(
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          onPageChanged: (_) async {
                            _model.soundPlayer8?.stop();
                            _model.soundPlayer2?.stop();
                            _model.soundPlayer4?.stop();
                            _model.soundPlayer3?.stop();
                            _model.soundPlayer5?.stop();
                            _model.soundPlayer9?.stop();
                            _model.soundPlayer6?.stop();
                            _model.soundPlayer7?.stop();
                            _model.soundPlayer1?.stop();
                          },
                          scrollDirection: Axis.horizontal,
                          children: [
                            InkWell(
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
                                    .setAsset('assets/audios/tetchure.mp3')
                                    .then((_) => _model.soundPlayer1!.play());
                              },
                              child: Image.asset(
                                'assets/images/tetchure.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
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
                                    .setAsset('assets/audios/Doctor_(2).mp3')
                                    .then((_) => _model.soundPlayer2!.play());
                              },
                              child: Image.asset(
                                'assets/images/Doctor.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
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
                                    .setAsset('assets/audios/engrining.mp3')
                                    .then((_) => _model.soundPlayer3!.play());
                              },
                              child: Image.asset(
                                'assets/images/Engrining.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.soundPlayer4 ??= AudioPlayer();
                                if (_model.soundPlayer4!.playing) {
                                  await _model.soundPlayer4!.stop();
                                }
                                _model.soundPlayer4!.setVolume(1.0);
                                _model.soundPlayer4!
                                    .setAsset('assets/audios/driver.mp3')
                                    .then((_) => _model.soundPlayer4!.play());
                              },
                              child: Image.asset(
                                'assets/images/driver.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.soundPlayer5 ??= AudioPlayer();
                                if (_model.soundPlayer5!.playing) {
                                  await _model.soundPlayer5!.stop();
                                }
                                _model.soundPlayer5!.setVolume(1.0);
                                _model.soundPlayer5!
                                    .setAsset('assets/audios/farmer.mp3')
                                    .then((_) => _model.soundPlayer5!.play());
                              },
                              child: Image.asset(
                                'assets/images/farms.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.soundPlayer6 ??= AudioPlayer();
                                if (_model.soundPlayer6!.playing) {
                                  await _model.soundPlayer6!.stop();
                                }
                                _model.soundPlayer6!.setVolume(1.0);
                                _model.soundPlayer6!
                                    .setAsset('assets/audios/pilot.mp3')
                                    .then((_) => _model.soundPlayer6!.play());
                              },
                              child: Image.asset(
                                'assets/images/pilot.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.soundPlayer7 ??= AudioPlayer();
                                if (_model.soundPlayer7!.playing) {
                                  await _model.soundPlayer7!.stop();
                                }
                                _model.soundPlayer7!.setVolume(1.0);
                                _model.soundPlayer7!
                                    .setAsset('assets/audios/policeman.mp3')
                                    .then((_) => _model.soundPlayer7!.play());
                              },
                              child: Image.asset(
                                'assets/images/policeman.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.soundPlayer8 ??= AudioPlayer();
                                if (_model.soundPlayer8!.playing) {
                                  await _model.soundPlayer8!.stop();
                                }
                                _model.soundPlayer8!.setVolume(1.0);
                                _model.soundPlayer8!
                                    .setAsset('assets/audios/a_cook.mp3')
                                    .then((_) => _model.soundPlayer8!.play());
                              },
                              child: Image.asset(
                                'assets/images/a_cook.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.soundPlayer9 ??= AudioPlayer();
                                if (_model.soundPlayer9!.playing) {
                                  await _model.soundPlayer9!.stop();
                                }
                                _model.soundPlayer9!.setVolume(1.0);
                                _model.soundPlayer9!
                                    .setAsset('assets/audios/paint.mp3')
                                    .then((_) => _model.soundPlayer9!.play());
                              },
                              child: Image.asset(
                                'assets/images/artist.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Image.asset(
                              'assets/images/scuba_diver.png',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.pageViewController ??=
                                PageController(initialPage: 0),
                            count: 10,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _model.pageViewController!.animateToPage(
                                i,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: smooth_page_indicator.ExpandingDotsEffect(
                              expansionFactor: 2.0,
                              spacing: 8.0,
                              radius: 16.0,
                              dotWidth: 16.0,
                              dotHeight: 16.0,
                              dotColor: FlutterFlowTheme.of(context).accent2,
                              activeDotColor:
                                  FlutterFlowTheme.of(context).primary,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
