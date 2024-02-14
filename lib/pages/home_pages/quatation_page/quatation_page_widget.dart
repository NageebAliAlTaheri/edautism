import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/test/save/save_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'quatation_page_model.dart';
export 'quatation_page_model.dart';

class QuatationPageWidget extends StatefulWidget {
  const QuatationPageWidget({super.key});

  @override
  State<QuatationPageWidget> createState() => _QuatationPageWidgetState();
}

class _QuatationPageWidgetState extends State<QuatationPageWidget> {
  late QuatationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuatationPageModel());

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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100.0),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              actions: const [],
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '8ck7kxq1' /* الاستبانة */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).btnText,
                          fontSize: 30.0,
                        ),
                  ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 2.0,
            ),
          ),
          body: SafeArea(
            top: true,
            child: ListView(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'hkh25l2j' /* هل يحب طفلك العناق والجلوس في ... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF262D34),
                              fontSize: 16.0,
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'bnkgwse5' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'lo20ruhc' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'mmh685ge' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton1ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF101213),
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.center,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'nvfblgm1' /* هل يهتم بالأطفال من سنه ونفس ع... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF262D34),
                              fontSize: 16.0,
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'softh7dr' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'i5wv71f2' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'kup4x4ec' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton2ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF101213),
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '7cwgabfl' /* هل يميل إلى العناد -لا يرد على... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                              fontSize: 16.0,
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'icltl2pq' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            '0d80l2sg' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'uai4kvp4' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton3ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF101213),
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'dku3lfs4' /* هل ينظر بالعين لك للحظة أو لحظ... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                              fontSize: 16.0,
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'z59vtm9o' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            '2wnde8ov' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'qt34uc6d' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton4ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 98.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'i70rnx8n' /* هل يظهر حساسية بالغة من بعض ال... */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF101213),
                                    fontSize: 13.0,
                                  ),
                        ),
                        FlutterFlowRadioButton(
                          options: [
                            FFLocalizations.of(context).getText(
                              'l6wt1794' /* نعم */,
                            ),
                            FFLocalizations.of(context).getText(
                              '65d0c0kx' /* قليلا */,
                            ),
                            FFLocalizations.of(context).getText(
                              'f9l4om08' /* لا */,
                            )
                          ].toList(),
                          onChanged: (val) => setState(() {}),
                          controller: _model.radioButton5ValueController ??=
                              FormFieldController<String>(null),
                          optionHeight: 25.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Colors.blue,
                          inactiveRadioButtonColor: const Color(0x8A000000),
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'nlt33bvd' /* هل يتفاعل مع تعابير وجهكك مثل ... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                              fontSize: 16.0,
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            '18cbyw56' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'w5rsl7c7' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'kqikfhj8' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton6ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'av3s1civ' /* هل يستجيب لاسمه عند مناداته */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                              fontSize: 16.0,
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'am0gm8m7' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'yjt9bake' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'uek7v8s1' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton7ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'coavbz6j' /* هل اصبح يفضل العزلة والوحدة */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'kcbzkuff' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'wiet2ex2' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'mi2i4lci' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton8ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '9ouik675' /* هل يحاول جلب انتباهك لبعض نشاط... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'dqm3scgh' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            's71iqz4e' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'vebbyzof' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton9ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'tfyq1m0k' /* هل خطر ببالك ان يكون طفلك اصم ... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            '0bw7k61a' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'a45ep3tr' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            '9fvxw4qu' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton100ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '3j2saufq' /* هل يكون احيانا شارد الذهن أو ي... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'xr7rk0sc' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'p32alzlv' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'maxfxv1c' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton11ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'aruuokac' /* هل يميل الى النظر الى شيء في ا... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'py18y2iq' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'nwnu4bpo' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            '7zgvmmnz' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton12ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'sx9o9ub1' /* هل يظهر نوبات غضب */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'f9invj87' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'qatjnudm' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'mhdnzvam' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton13ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'ly8du24j' /* هل يمانع تغيير وضع العابه أوال... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'uis7dcht' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            '83qlhm42' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'n04fz83l' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton14ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'nqe0q7yo' /* هل يميل الى ترداد ما تقولينه ل... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            '72mm3lpv' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'yf909azt' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            '8kudgn5s' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton15ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '8r4o2lv8' /* هل يظهر عليه علامات المتعة  في... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'bi9imx12' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'jangkxil' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'mr2h19l6' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton16ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 72.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'vfuw0iw5' /* هل يستعمل كلمات مفهومة ولها مع... */,
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF101213),
                            ),
                      ),
                      FlutterFlowRadioButton(
                        options: [
                          FFLocalizations.of(context).getText(
                            'knhbttwy' /* نعم */,
                          ),
                          FFLocalizations.of(context).getText(
                            'ebimlrht' /* قليلا */,
                          ),
                          FFLocalizations.of(context).getText(
                            'effw4shu' /* لا */,
                          )
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButton17ValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 25.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        selectedTextStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).customColor4,
                            ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.horizontal,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: const Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await QuatationesRecord.collection
                        .doc()
                        .set(createQuatationesRecordData(
                          quest1: _model.radioButton1Value,
                          quest2: _model.radioButton2Value,
                          quest3: _model.radioButton3Value,
                          quest4: _model.radioButton4Value,
                          quest5: _model.radioButton5Value,
                          quest6: _model.radioButton6Value,
                          quest7: _model.radioButton7Value,
                          quest8: _model.radioButton8Value,
                          quest9: _model.radioButton9Value,
                          quest10: _model.radioButton100Value,
                          quest11: _model.radioButton11Value,
                          quest12: _model.radioButton12Value,
                          quest13: _model.radioButton13Value,
                          quest14: _model.radioButton14Value,
                          quest15: _model.radioButton15Value,
                          quest16: _model.radioButton16Value,
                          quest17: _model.radioButton17Value,
                        ));

                    context.pushNamed('PageTypeSex');
                  },
                  child: wrapWithModel(
                    model: _model.saveModel,
                    updateCallback: () => setState(() {}),
                    child: const SaveWidget(),
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
