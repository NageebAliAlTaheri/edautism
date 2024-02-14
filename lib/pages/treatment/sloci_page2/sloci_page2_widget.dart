import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'sloci_page2_model.dart';
export 'sloci_page2_model.dart';

class SlociPage2Widget extends StatefulWidget {
  const SlociPage2Widget({super.key});

  @override
  State<SlociPage2Widget> createState() => _SlociPage2WidgetState();
}

class _SlociPage2WidgetState extends State<SlociPage2Widget> {
  late SlociPage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SlociPage2Model());

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
              'yvom9maq' /* صعوبات في العلاقات الاجتماعية ... */,
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
                  'assets/images/ejtem1.jpeg',
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
                      '8j9fisn1' /* لا يستجيب لمناداة اسمه        ... */,
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
                      'ris5xpdm' /* لديه ضعف في الاتصال والتواصل ا... */,
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
                      'k59oy16x' /* يبدو أنه لا يسمع محدّثه       ... */,
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
                      'j33n7t5i' /* يُرفض العناق أو ينكمش على نفسه... */,
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
                      '9z9urdgi' /* يبدو أنه لا يُدرك مشاعر وأحاسي... */,
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
                      '3b91snn8' /* يبدو أنه يُحب أن يلعب لوحده، و... */,
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
                      'kqrlzkhu' /* لا يشير الي الاشياء           ... */,
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
                      'qdphtezy' /* يفضل العب وحده                ... */,
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
