import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'activities_page_model.dart';
export 'activities_page_model.dart';

class ActivitiesPageWidget extends StatefulWidget {
  const ActivitiesPageWidget({super.key});

  @override
  State<ActivitiesPageWidget> createState() => _ActivitiesPageWidgetState();
}

class _ActivitiesPageWidgetState extends State<ActivitiesPageWidget> {
  late ActivitiesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivitiesPageModel());

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
              '0fcwu45t' /* الأنشطة */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 32.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Image.asset(
                            'assets/images/alfabeto-1-E3r.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              60.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('PageLetter');
                            },
                            child: ListTile(
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'zosybq61' /* الأبجدية */,
                                ),
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                FFLocalizations.of(context).getText(
                                  '0dc53v86' /* يعمل على تطوير التنسيق الحركي ... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                    ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20.0,
                              ),
                              tileColor: const Color(0xFFF5F5F5),
                              dense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Image.asset(
                            'assets/images/numeros-1-GaC.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              60.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Number1');
                            },
                            child: ListTile(
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  '87jyn4ej' /* الأرقام */,
                                ),
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                FFLocalizations.of(context).getText(
                                  'j27lnf13' /* يعمل على إنشاء العلاقة بين الع... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                    ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20.0,
                              ),
                              tileColor: const Color(0xFFF5F5F5),
                              dense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Image.asset(
                            'assets/images/rotina-de-higiene-1.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              60.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (Navigator.of(context).canPop()) {
                                context.pop();
                              }
                              context.pushNamed('RoteenPage');
                            },
                            child: ListTile(
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'ge3jntwn' /* الروتين  */,
                                ),
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                FFLocalizations.of(context).getText(
                                  'if3djq1m' /* يعمل على إنشاء العلاقة بين الع... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                    ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20.0,
                              ),
                              tileColor: const Color(0xFFF5F5F5),
                              dense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Image.asset(
                            'assets/images/avaliacoes-1.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              60.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('ExpressionsPage');
                            },
                            child: ListTile(
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  '98p70awb' /* التعبيرات */,
                                ),
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                FFLocalizations.of(context).getText(
                                  'k2f6x592' /* يعمل على إنشاء العلاقة بين الع... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                    ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20.0,
                              ),
                              tileColor: const Color(0xFFF5F5F5),
                              dense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Image.asset(
                            'assets/images/froog17.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              60.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Anmels11');
                            },
                            child: ListTile(
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'uibxavxy' /* الحيوانات */,
                                ),
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                FFLocalizations.of(context).getText(
                                  'abkjbsti' /* يعمل على إنشاء العلاقة بين الع... */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                    ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20.0,
                              ),
                              tileColor: const Color(0xFFF5F5F5),
                              dense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -0.95),
                          child: Image.asset(
                            'assets/images/tetchure.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              60.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('ProfessionsPage');
                            },
                            child: ListTile(
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  '7opmovb9' /* المهن */,
                                ),
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                FFLocalizations.of(context).getText(
                                  'q56rzuoe' /* يعمل على ادارك الواقع المعيشي  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                    ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20.0,
                              ),
                              tileColor: const Color(0xFFF5F5F5),
                              dense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -0.2),
                          child: Image.asset(
                            'assets/images/fruite.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              60.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('FruitPage');
                            },
                            child: ListTile(
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'on4e6c1p' /* الفواكهة */,
                                ),
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                FFLocalizations.of(context).getText(
                                  '45akr8zx' /* يعمل على إنشاء العلاقة بين الع... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                    ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF303030),
                                size: 20.0,
                              ),
                              tileColor: const Color(0xFFF5F5F5),
                              dense: true,
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
      ),
    );
  }
}
