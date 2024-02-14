import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'check_your_email_model.dart';
export 'check_your_email_model.dart';

class CheckYourEmailWidget extends StatefulWidget {
  const CheckYourEmailWidget({super.key});

  @override
  State<CheckYourEmailWidget> createState() => _CheckYourEmailWidgetState();
}

class _CheckYourEmailWidgetState extends State<CheckYourEmailWidget> {
  late CheckYourEmailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckYourEmailModel());

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
        body: const SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -0.45),
            child: Icon(
              Icons.mark_email_read,
              color: Colors.black,
              size: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}
