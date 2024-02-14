import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'gameonline_model.dart';
export 'gameonline_model.dart';

class GameonlineWidget extends StatefulWidget {
  const GameonlineWidget({
    super.key,
    this.stopSound,
  });

  final bool? stopSound;

  @override
  State<GameonlineWidget> createState() => _GameonlineWidgetState();
}

class _GameonlineWidgetState extends State<GameonlineWidget> {
  late GameonlineModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameonlineModel());

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
              if (isWeb) {
                Navigator.pop(context);
                await Future.delayed(const Duration(milliseconds: 1000));

                context.pushNamed('HomePage');

                return;
              } else {
                await Future.delayed(const Duration(milliseconds: 1000));
                context.safePop();
                return;
              }
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'wozrrr6k' /* الالعاب */,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (widget.stopSound ?? true)
                const Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowWebView(
                    content:
                        'https://www.apta-advice.com/ar/toddler/games/animal-kingdom/',
                    bypass: true,
                    width: 400.0,
                    height: 708.0,
                    verticalScroll: true,
                    horizontalScroll: true,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
