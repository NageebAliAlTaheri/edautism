import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'sloci_page1_model.dart';
export 'sloci_page1_model.dart';

class SlociPage1Widget extends StatefulWidget {
  const SlociPage1Widget({super.key});

  @override
  State<SlociPage1Widget> createState() => _SlociPage1WidgetState();
}

class _SlociPage1WidgetState extends State<SlociPage1Widget> {
  late SlociPage1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SlociPage1Model());

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
              '9wpju3db' /* صعوبات في المهارات اللغوية */,
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
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Image.asset(
                  'assets/images/loga2.jpeg',
                  width: 390.0,
                  height: 390.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.85, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ca0a3ui7' /*  يبدأ الكلام في سن متأخرة مقار... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.85, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'yh9ok694' /* يفقد القدرة على قول كلمات أو ج... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.85, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'cj4n9gmq' /* يقيم اتصالًا بصريًا حينما يريد... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.85, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'y24y61re' /* يتحدث بصوت غريب و بنبرات وإيقا... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.85, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'pk10zr02' /* لا يستطيع المبادرة إلى محادثة ... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.85, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'yudi03cx' /* قد يكرر كلمات، أو عبارات، أو م... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
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
