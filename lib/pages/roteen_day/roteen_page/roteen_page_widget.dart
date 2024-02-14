import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'roteen_page_model.dart';
export 'roteen_page_model.dart';

class RoteenPageWidget extends StatefulWidget {
  const RoteenPageWidget({super.key});

  @override
  State<RoteenPageWidget> createState() => _RoteenPageWidgetState();
}

class _RoteenPageWidgetState extends State<RoteenPageWidget> {
  late RoteenPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoteenPageModel());

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
              'rxutwxut' /* الروتين اليومي */,
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
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/getting-up.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '15i6omrk' /* الاستيقاظ
حان الوقت للاستيقاظ ... */
                              ,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/Cleaning_teeth.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'hsrgiqeb' /* حان الوقت لتنظيف أسنانك والحفا... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/Bathing.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'g3o6sq8r' /* حان وقت الاستحمام والحفاظ على ... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/eat_a_meal.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '7xattk8d' /* حان الوقت لتناول وجبة صحية وتغ... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/boy_using_toilet.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'uzmf1o7e' /* قم بعملك ، ولا تنس أن تغسل يدي... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/Getting_ready_to_go_to_school.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'bwy4xvbm' /* حان الوقت للاستعداد والذهاب إل... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/Doing_the_duty.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'b6j2zdvc' /* حان الوقت لأداء واجبك */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/time_to_play.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'wfgyxofq' /* حان وقت اللعب ، استخدم طاقاتك ... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/play1.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'hkr42o44' /* حان وقت اللعب ، استخدم طاقاتك ... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/Play-with-the-cycle.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '3pqh2y25' /* حان وقت اللعب ، استخدم طاقاتك ... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/ablution.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              't8wpofx0' /* اتوضأ للصلاة */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/go-run.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '2z3azxju' /* انا اجري */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/go-run1.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'nlbj0jh6' /* انا ذاهب الى المدرسة */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/read2.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '14af4u68' /* انا اراجع دروسي */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/Its-raining.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'q219urgk' /* انها تمطر */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/cook.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'dx4j8lwu' /* انا اطبخ */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/I-am-happy.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'lv763zvm' /* انا سعيد */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/Read.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'g9hwlnuz' /* انا اقرأ */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/read1.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'a6vkzpd7' /* انا اذاكر دروسي */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/sleep.png',
                            width: double.infinity,
                            height: 550.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'sdyt16a4' /* حان وقت النوم ، واحصل على نوم ... */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
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
                      count: 20,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) async {
                        await _model.pageViewController!.animateToPage(
                          i,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      effect: const smooth_page_indicator.ExpandingDotsEffect(
                        expansionFactor: 2.0,
                        spacing: 8.0,
                        radius: 16.0,
                        dotWidth: 16.0,
                        dotHeight: 16.0,
                        dotColor: Color(0xFF9E9E9E),
                        activeDotColor: Color(0xFF3F51B5),
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
