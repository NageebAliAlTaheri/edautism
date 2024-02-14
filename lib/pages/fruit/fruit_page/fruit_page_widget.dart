import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'fruit_page_model.dart';
export 'fruit_page_model.dart';

class FruitPageWidget extends StatefulWidget {
  const FruitPageWidget({super.key});

  @override
  State<FruitPageWidget> createState() => _FruitPageWidgetState();
}

class _FruitPageWidgetState extends State<FruitPageWidget> {
  late FruitPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FruitPageModel());

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
              '49xgdg9j' /* الفواكهة */,
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
          child: SizedBox(
            width: double.infinity,
            height: 700.0,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                  child: PageView(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    onPageChanged: (_) async {
                      _model.soundPlayer4?.stop();
                      _model.soundPlayer7?.stop();
                      _model.soundPlayer4?.stop();
                      _model.soundPlayer5?.stop();
                      _model.soundPlayer2?.stop();
                      _model.soundPlayer6?.stop();
                      _model.soundPlayer8?.stop();
                      _model.soundPlayer1?.stop();
                      _model.soundPlayer3?.stop();
                      await Future.delayed(const Duration(milliseconds: 5000));
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
                              .setAsset('assets/audios/apple.mp3')
                              .then((_) => _model.soundPlayer1!.play());

                          _model.soundPlayer2?.stop();
                          await Future.delayed(
                              const Duration(milliseconds: 5000));
                        },
                        child: Image.asset(
                          'assets/images/apple.png',
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
                              .setAsset('assets/audios/an_orange.mp3')
                              .then((_) => _model.soundPlayer2!.play());

                          _model.soundPlayer1?.stop();
                          await Future.delayed(
                              const Duration(milliseconds: 5000));
                          _model.soundPlayer3?.stop();
                        },
                        child: Image.asset(
                          'assets/images/an_orange.png',
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
                              .setAsset('assets/audios/banana.mp3')
                              .then((_) => _model.soundPlayer3!.play());

                          _model.soundPlayer2?.stop();
                          await Future.delayed(
                              const Duration(milliseconds: 5000));
                          _model.soundPlayer4?.stop();
                        },
                        child: Image.asset(
                          'assets/images/banana.png',
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
                              .setAsset('assets/audios/watermelon.mp3')
                              .then((_) => _model.soundPlayer4!.play());

                          _model.soundPlayer3?.stop();
                          await Future.delayed(
                              const Duration(milliseconds: 5000));
                          _model.soundPlayer5?.stop();
                        },
                        child: Image.asset(
                          'assets/images/watermelon.png',
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
                              .setAsset('assets/audios/pears.mp3')
                              .then((_) => _model.soundPlayer5!.play());

                          _model.soundPlayer4?.stop();
                          await Future.delayed(
                              const Duration(milliseconds: 5000));
                          _model.soundPlayer6?.stop();
                        },
                        child: Image.asset(
                          'assets/images/pears.png',
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
                              .setAsset('assets/audios/blueberry.mp3')
                              .then((_) => _model.soundPlayer6!.play());

                          _model.soundPlayer5?.stop();
                          await Future.delayed(
                              const Duration(milliseconds: 5000));
                          _model.soundPlayer7?.stop();
                        },
                        child: Image.asset(
                          'assets/images/blueberry.png',
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
                              .setAsset('assets/audios/pineapple.mp3')
                              .then((_) => _model.soundPlayer7!.play());

                          _model.soundPlayer6?.stop();
                          _model.soundPlayer8?.stop();
                          await Future.delayed(
                              const Duration(milliseconds: 5000));
                        },
                        child: Image.asset(
                          'assets/images/pineapple.png',
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
                              .setAsset('assets/audios/queQue.mp3')
                              .then((_) => _model.soundPlayer8!.play());

                          _model.soundPlayer7?.stop();
                          await Future.delayed(
                              const Duration(milliseconds: 5000));
                        },
                        child: Image.asset(
                          'assets/images/queQue.png',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: smooth_page_indicator.SmoothPageIndicator(
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      count: 8,
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
                            FlutterFlowTheme.of(context).primaryBtnText,
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
