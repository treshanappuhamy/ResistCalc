import '/backend/backend.dart';
import '/components/aboutapp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'threeband_model.dart';
export 'threeband_model.dart';

class ThreebandWidget extends StatefulWidget {
  const ThreebandWidget({super.key});

  @override
  State<ThreebandWidget> createState() => _ThreebandWidgetState();
}

class _ThreebandWidgetState extends State<ThreebandWidget>
    with TickerProviderStateMixin {
  late ThreebandModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.bounceOut,
          delay: 0.ms,
          duration: 1330.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThreebandModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).accent4,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: const AlignmentDirectional(-1.0, -1.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'ResistCalc',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 50.0,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation']!),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => _model.unfocusNode.canRequestFocus
                                  ? FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode)
                                  : FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const AboutappWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      child: Icon(
                        Icons.info,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: SizedBox(
                                  width: 393.0,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Untitled_design_(2).png',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.36, -1.2),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 64.0, 0.0, 0.0),
                                          child: Container(
                                            width: 10.0,
                                            height: 62.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue1 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'WHITE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .info;
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                              shape: BoxShape.rectangle,
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.2, -1.02),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 72.0, 5.0, 0.0),
                                          child: Container(
                                            width: 10.0,
                                            height: 46.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue2 ==
                                                    'BLACK') {
                                                  return Colors.black;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'WHITE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .info;
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                              shape: BoxShape.rectangle,
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.11, -1.15),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 72.0, 9.0, 0.0),
                                          child: Container(
                                            width: 10.0,
                                            height: 46.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue3 ==
                                                    'BLACK') {
                                                  return Colors.black;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'WHITE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .info;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                              shape: BoxShape.rectangle,
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.03, -1.15),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 72.0, 9.0, 0.0),
                                          child: Container(
                                            width: 10.0,
                                            height: 46.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue4 ==
                                                    'BLACK') {
                                                  return Colors.black;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'WHITE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .info;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'GOLD') {
                                                  return const Color(0xFFFFD700);
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'SILVER') {
                                                  return const Color(0xFFC0C0C0);
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'PINK') {
                                                  return const Color(0xFFFA11E0);
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                              shape: BoxShape.rectangle,
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.26, -1.02),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 72.0, 20.0, 0.0),
                                          child: Container(
                                            width: 10.0,
                                            height: 46.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue5 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'GOLD') {
                                                  return const Color(0xFFFFD700);
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'SILVER') {
                                                  return const Color(0xFFC0C0C0);
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                              shape: BoxShape.rectangle,
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.36, -0.9),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 64.0, 0.0, 0.0),
                                          child: Container(
                                            width: 10.0,
                                            height: 62.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue6 ==
                                                    'BLACK') {
                                                  return Colors.black;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                              shape: BoxShape.rectangle,
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      if ((_model.dropDownValue7 == 'THREE') ||
                                          (_model.dropDownValue7 == 'FOUR') ||
                                          (_model.dropDownValue7 == 'FIVE') ||
                                          (_model.dropDownValue7 == 'SIX'))
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.55),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 150.0, 0.0, 0.0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        functions
                                                            .cal(
                                                                _model
                                                                    .dropDownValue1,
                                                                _model
                                                                    .dropDownValue2,
                                                                _model
                                                                    .dropDownValue3,
                                                                _model
                                                                    .dropDownValue4,
                                                                _model
                                                                    .dropDownValue7)
                                                            ?.toString(),
                                                        '0',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 25.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        functions.symbolcal(
                                                            _model
                                                                .dropDownValue4,
                                                            _model
                                                                .dropDownValue7),
                                                        '0',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 25.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      ' ±',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 25.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      functions
                                                          .tolerance(
                                                              _model
                                                                  .dropDownValue7,
                                                              _model
                                                                  .dropDownValue5)
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 25.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      '%',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 25.0,
                                                              ),
                                                    ),
                                                  ),
                                                  if (_model.dropDownValue6 !=
                                                          null &&
                                                      _model.dropDownValue6 !=
                                                          '')
                                                    StreamBuilder<
                                                        List<TempCoeffRecord>>(
                                                      stream:
                                                          queryTempCoeffRecord(),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<TempCoeffRecord>
                                                            textTempCoeffRecordList =
                                                            snapshot.data!;
                                                        return Text(
                                                          () {
                                                            if (_model
                                                                    .dropDownValue6 ==
                                                                'BLACK') {
                                                              return ' @250ppm/°C';
                                                            } else if (_model
                                                                    .dropDownValue6 ==
                                                                'BROWN') {
                                                              return ' @100ppm/°C';
                                                            } else if (_model
                                                                    .dropDownValue6 ==
                                                                'RED') {
                                                              return ' @50ppm/°C';
                                                            } else if (_model
                                                                    .dropDownValue6 ==
                                                                'ORANGE') {
                                                              return ' @15ppm/°C';
                                                            } else if (_model
                                                                    .dropDownValue6 ==
                                                                'YELLOW') {
                                                              return ' @25ppm/°C';
                                                            } else if (_model
                                                                    .dropDownValue6 ==
                                                                'GREEN') {
                                                              return ' @20ppm/°C';
                                                            } else if (_model
                                                                    .dropDownValue6 ==
                                                                'BLUE') {
                                                              return ' @10ppm/°C';
                                                            } else if (_model
                                                                    .dropDownValue6 ==
                                                                'VIOLET') {
                                                              return ' @5ppm/°C';
                                                            } else if (_model
                                                                    .dropDownValue6 ==
                                                                'GREY') {
                                                              return ' @1ppm/°C';
                                                            } else {
                                                              return ' ';
                                                            }
                                                          }(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 25.0,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.03, -0.87),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Text(
                                            'Colour to Resistance (C2R)',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if ((_model.dropDownValue7 == 'THREE') ||
                                  (_model.dropDownValue7 == 'FOUR') ||
                                  (_model.dropDownValue7 == 'FIVE') ||
                                  (_model.dropDownValue7 == 'SIX'))
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.36, -1.2),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 5.0, 7.0),
                                          child: Container(
                                            width: 35.0,
                                            height: 35.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue1 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue1 ==
                                                    'WHITE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .info;
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(22.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: StreamBuilder<
                                            List<ThreeBandRecord>>(
                                          stream: queryThreeBandRecord(),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<ThreeBandRecord>
                                                dropDownThreeBandRecordList =
                                                snapshot.data!;
                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController1 ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options:
                                                  dropDownThreeBandRecordList
                                                      .map((e) =>
                                                          valueOrDefault<
                                                              String>(
                                                            e.output,
                                                            'BLACK',
                                                          ))
                                                      .toList(),
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownValue1 = val),
                                              width: 150.0,
                                              height: 35.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText: '1st Band',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              if ((_model.dropDownValue7 == 'THREE') ||
                                  (_model.dropDownValue7 == 'FOUR') ||
                                  (_model.dropDownValue7 == 'FIVE') ||
                                  (_model.dropDownValue7 == 'SIX'))
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.2, -1.02),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 5.0, 7.0),
                                          child: Container(
                                            width: 35.0,
                                            height: 35.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue2 ==
                                                    'BLACK') {
                                                  return Colors.black;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else if (_model
                                                        .dropDownValue2 ==
                                                    'WHITE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .info;
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(22.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      if ((_model.dropDownValue7 == 'THREE') ||
                                          (_model.dropDownValue7 == 'FOUR') ||
                                          (_model.dropDownValue7 == 'FIVE') ||
                                          (_model.dropDownValue7 == 'SIX'))
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: StreamBuilder<
                                              List<ThreeBand2Record>>(
                                            stream: queryThreeBand2Record(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ThreeBand2Record>
                                                  dropDownThreeBand2RecordList =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropDownValueController2 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    dropDownThreeBand2RecordList
                                                        .map((e) => e.output)
                                                        .toList(),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue2 = val),
                                                width: 150.0,
                                                height: 35.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: '2nd Band',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              if ((_model.dropDownValue7 == 'FIVE') ||
                                  (_model.dropDownValue7 == 'SIX'))
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.11, -1.15),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 5.0, 7.0),
                                          child: Container(
                                            width: 35.0,
                                            height: 35.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue3 ==
                                                    'BLACK') {
                                                  return Colors.black;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'WHITE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .info;
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(22.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      if ((_model.dropDownValue7 == 'FIVE') ||
                                          (_model.dropDownValue7 == 'SIX'))
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: StreamBuilder<
                                              List<ThreeBand3Record>>(
                                            stream: queryThreeBand3Record(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ThreeBand3Record>
                                                  dropDownThreeBand3RecordList =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropDownValueController3 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    dropDownThreeBand3RecordList
                                                        .map((e) => e.output)
                                                        .toList(),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue3 = val),
                                                width: 150.0,
                                                height: 35.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: '3rd Band',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              if ((_model.dropDownValue7 == 'THREE') ||
                                  (_model.dropDownValue7 == 'FOUR') ||
                                  (_model.dropDownValue7 == 'FIVE') ||
                                  (_model.dropDownValue7 == 'SIX'))
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.03, -1.15),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 5.0, 7.0),
                                          child: Container(
                                            width: 35.0,
                                            height: 35.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue4 ==
                                                    'BLACK') {
                                                  return Colors.black;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue3 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'WHITE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .info;
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'GOLD') {
                                                  return const Color(0xFFFFD700);
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'SILVER') {
                                                  return const Color(0xFFC0C0C0);
                                                } else if (_model
                                                        .dropDownValue4 ==
                                                    'PINK') {
                                                  return const Color(0xFFFA11E0);
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(22.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      if ((_model.dropDownValue7 == 'THREE') ||
                                          (_model.dropDownValue7 == 'FOUR') ||
                                          (_model.dropDownValue7 == 'FIVE') ||
                                          (_model.dropDownValue7 == 'SIX'))
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: StreamBuilder<
                                              List<MultiplierRecord>>(
                                            stream: queryMultiplierRecord(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<MultiplierRecord>
                                                  dropDownMultiplierRecordList =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropDownValueController4 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    dropDownMultiplierRecordList
                                                        .map((e) =>
                                                            valueOrDefault<
                                                                String>(
                                                              e.output,
                                                              'BLACK',
                                                            ))
                                                        .toList(),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue4 = val),
                                                width: 150.0,
                                                height: 35.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: 'Multipier',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              if ((_model.dropDownValue7 == 'FOUR') ||
                                  (_model.dropDownValue7 == 'FIVE') ||
                                  (_model.dropDownValue7 == 'SIX'))
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.26, -1.02),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 5.0, 7.0),
                                          child: Container(
                                            width: 35.0,
                                            height: 35.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue5 ==
                                                    'ORANGNGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'GOLD') {
                                                  return const Color(0xFFFFD700);
                                                } else if (_model
                                                        .dropDownValue5 ==
                                                    'SILVER') {
                                                  return const Color(0xFFC0C0C0);
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(22.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      if ((_model.dropDownValue7 == 'FOUR') ||
                                          (_model.dropDownValue7 == 'FIVE') ||
                                          (_model.dropDownValue7 == 'SIX'))
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: StreamBuilder<
                                              List<ToleranceRecord>>(
                                            stream: queryToleranceRecord(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ToleranceRecord>
                                                  dropDownToleranceRecordList =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dropDownValueController5 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    dropDownToleranceRecordList
                                                        .map((e) =>
                                                            valueOrDefault<
                                                                String>(
                                                              e.output,
                                                              'BLACK',
                                                            ))
                                                        .toList(),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue5 = val),
                                                width: 150.0,
                                                height: 35.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: 'Tolerance',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              if (_model.dropDownValue7 == 'SIX')
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.36, -0.9),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 5.0, 7.0),
                                          child: Container(
                                            width: 35.0,
                                            height: 35.0,
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (_model.dropDownValue6 ==
                                                    'BLACK') {
                                                  return Colors.black;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'BROWN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .accent3;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'RED') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .error;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'ORANGE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'YELLOW') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .warning;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'GREEN') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .success;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'BLUE') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .primary;
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'VIOLET') {
                                                  return const Color(0xFF8F00FF);
                                                } else if (_model
                                                        .dropDownValue6 ==
                                                    'GREY') {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText;
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(22.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                      if (_model.dropDownValue7 == 'SIX')
                                        StreamBuilder<List<TempCoeffRecord>>(
                                          stream: queryTempCoeffRecord(),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<TempCoeffRecord>
                                                dropDownTempCoeffRecordList =
                                                snapshot.data!;
                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController6 ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options:
                                                  dropDownTempCoeffRecordList
                                                      .map((e) =>
                                                          valueOrDefault<
                                                              String>(
                                                            e.output,
                                                            'BLACK',
                                                          ))
                                                      .toList(),
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownValue6 = val),
                                              width: 150.0,
                                              height: 35.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText: 'Temp. Coeff.',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: StreamBuilder<List<NmBANDSRecord>>(
                                    stream: queryNmBANDSRecord(
                                      queryBuilder: (nmBANDSRecord) =>
                                          nmBANDSRecord.orderBy('numnum'),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<NmBANDSRecord>
                                          dropDownNmBANDSRecordList =
                                          snapshot.data!;
                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .dropDownValueController7 ??=
                                            FormFieldController<String>(null),
                                        options: dropDownNmBANDSRecordList
                                            .map((e) => e.output)
                                            .toList(),
                                        onChanged: (val) => setState(
                                            () => _model.dropDownValue7 = val),
                                        width: 290.0,
                                        height: 35.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        hintText:
                                            'Please select the number of bands',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      );
                                    },
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
