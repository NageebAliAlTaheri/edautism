import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'anmels11_model.dart';
export 'anmels11_model.dart';

class Anmels11Widget extends StatefulWidget {
  const Anmels11Widget({super.key});

  @override
  State<Anmels11Widget> createState() => _Anmels11WidgetState();
}

class _Anmels11WidgetState extends State<Anmels11Widget> {
  late Anmels11Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Anmels11Model());

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
              'fjbwfrb0' /* الحيوانات */,
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
            height: 500.0,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                  child: PageView(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    onPageChanged: (_) async {
                      await Future.delayed(const Duration(milliseconds: 9000));
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/turtle16.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Taigger.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/sheep8.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/rabbit14.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Monky.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Lion.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Hours.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/froog17.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/frog15.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Elphent.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Donky.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Dog2.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Dog.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Deer.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Cow.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Chicken.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Cat.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/Baird.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Future.delayed(
                              const Duration(milliseconds: 9000));
                        },
                        child: const FlutterFlowVideoPlayer(
                          path: 'assets/videos/a-duck18.mp4',
                          videoType: VideoType.asset,
                          autoPlay: true,
                          looping: false,
                          showControls: false,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
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
                      count: 19,
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
                        activeDotColor: FlutterFlowTheme.of(context).primary,
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
