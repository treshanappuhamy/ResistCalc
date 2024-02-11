import '/backend/backend.dart';
import '/components/aboutapp_widget.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'c2r_model.dart';
export 'c2r_model.dart';

class C2rWidget extends StatefulWidget {
  const C2rWidget({super.key});

  @override
  State<C2rWidget> createState() => _C2rWidgetState();
}

class _C2rWidgetState extends State<C2rWidget> {
  late C2rModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => C2rModel());
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
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
                                            alignment: const AlignmentDirectional(
                                                -0.36, -1.2),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 64.0, 0.0, 0.0),
                                              child: Container(
                                                width: 10.0,
                                                height: 62.0,
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (_model
                                                            .dropDownband1Value ==
                                                        'GREY') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'BROWN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .accent3;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'RED') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .error;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'ORANGE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tertiary;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'YELLOW') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .warning;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'GREEN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'BLUE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'VIOLET') {
                                                      return const Color(0xFF8F00FF);
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'WHITE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .info;
                                                    } else {
                                                      return const Color(0x00000000);
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.2, -1.02),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 72.0, 5.0, 0.0),
                                              child: Container(
                                                width: 10.0,
                                                height: 46.0,
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (_model
                                                            .dropDownband2Value ==
                                                        'BLACK') {
                                                      return Colors.black;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'BROWN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .accent3;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'RED') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .error;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'ORANGE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tertiary;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'YELLOW') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .warning;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'GREEN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'BLUE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'VIOLET') {
                                                      return const Color(0xFF8F00FF);
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'GREY') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'WHITE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .info;
                                                    } else {
                                                      return const Color(0x00000000);
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                          if ((_model.dropDownNumbandValue ==
                                                  'FIVE') ||
                                              (_model.dropDownNumbandValue ==
                                                  'SIX'))
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.11, -1.15),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 72.0, 9.0, 0.0),
                                                child: Container(
                                                  width: 10.0,
                                                  height: 46.0,
                                                  decoration: BoxDecoration(
                                                    color: () {
                                                      if (_model
                                                              .dropDownband3Value ==
                                                          'BLACK') {
                                                        return Colors.black;
                                                      } else if (_model
                                                              .dropDownband3Value ==
                                                          'BROWN') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .accent3;
                                                      } else if (_model
                                                              .dropDownband3Value ==
                                                          'RED') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .error;
                                                      } else if (_model
                                                              .dropDownband3Value ==
                                                          'ORANGE') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .tertiary;
                                                      } else if (_model
                                                              .dropDownband3Value ==
                                                          'YELLOW') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .warning;
                                                      } else if (_model
                                                              .dropDownband3Value ==
                                                          'GREEN') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .success;
                                                      } else if (_model
                                                              .dropDownband3Value ==
                                                          'BLUE') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .primary;
                                                      } else if (_model
                                                              .dropDownband3Value ==
                                                          'VIOLET') {
                                                        return const Color(
                                                            0xFF8F00FF);
                                                      } else if (_model
                                                              .dropDownband3Value ==
                                                          'WHITE') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .info;
                                                      } else if (_model
                                                              .dropDownband3Value ==
                                                          'GREY') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText;
                                                      } else {
                                                        return const Color(
                                                            0x00000000);
                                                      }
                                                    }(),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.03, -1.15),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 72.0, 9.0, 0.0),
                                              child: Container(
                                                width: 10.0,
                                                height: 46.0,
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (_model
                                                            .dropDownMultiplierValue ==
                                                        'BLACK') {
                                                      return Colors.black;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'BROWN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .accent3;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'RED') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .error;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'ORANGE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tertiary;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'YELLOW') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .warning;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'GREEN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'BLUE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'VIOLET') {
                                                      return const Color(0xFF8F00FF);
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'GREY') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'WHITE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .info;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'GOLD') {
                                                      return const Color(0xFFFFD700);
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'SILVER') {
                                                      return const Color(0xFFC0C0C0);
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'PINK') {
                                                      return const Color(0xFFFA11E0);
                                                    } else {
                                                      return const Color(0x00000000);
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                          if ((_model.dropDownNumbandValue == 'FOUR') ||
                                              (_model.dropDownNumbandValue ==
                                                  'FIVE') ||
                                              (_model.dropDownNumbandValue ==
                                                  'SIX'))
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.26, -1.02),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 72.0, 20.0, 0.0),
                                                child: Container(
                                                  width: 10.0,
                                                  height: 46.0,
                                                  decoration: BoxDecoration(
                                                    color: () {
                                                      if (_model
                                                              .dropDownToleranceValue ==
                                                          'ORANGE') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .tertiary;
                                                      } else if (_model
                                                              .dropDownToleranceValue ==
                                                          'BROWN') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .accent3;
                                                      } else if (_model
                                                              .dropDownToleranceValue ==
                                                          'RED') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .error;
                                                      } else if (_model
                                                              .dropDownToleranceValue ==
                                                          'YELLOW') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .warning;
                                                      } else if (_model
                                                              .dropDownToleranceValue ==
                                                          'GREEN') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .success;
                                                      } else if (_model
                                                              .dropDownToleranceValue ==
                                                          'BLUE') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .primary;
                                                      } else if (_model
                                                              .dropDownToleranceValue ==
                                                          'VIOLET') {
                                                        return const Color(
                                                            0xFF8F00FF);
                                                      } else if (_model
                                                              .dropDownToleranceValue ==
                                                          'GREY') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText;
                                                      } else if (_model
                                                              .dropDownToleranceValue ==
                                                          'GOLD') {
                                                        return const Color(
                                                            0xFFFFD700);
                                                      } else if (_model
                                                              .dropDownToleranceValue ==
                                                          'SILVER') {
                                                        return const Color(
                                                            0xFFC0C0C0);
                                                      } else {
                                                        return const Color(
                                                            0x00000000);
                                                      }
                                                    }(),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                ),
                                              ),
                                            ),
                                          if (_model.dropDownNumbandValue ==
                                              'SIX')
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.36, -0.9),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 64.0, 0.0, 0.0),
                                                child: Container(
                                                  width: 10.0,
                                                  height: 62.0,
                                                  decoration: BoxDecoration(
                                                    color: () {
                                                      if (_model
                                                              .dropDownTempCoeffValue ==
                                                          'BLACK') {
                                                        return Colors.black;
                                                      } else if (_model
                                                              .dropDownTempCoeffValue ==
                                                          'BROWN') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .accent3;
                                                      } else if (_model
                                                              .dropDownTempCoeffValue ==
                                                          'RED') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .error;
                                                      } else if (_model
                                                              .dropDownTempCoeffValue ==
                                                          'ORANGE') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .tertiary;
                                                      } else if (_model
                                                              .dropDownTempCoeffValue ==
                                                          'YELLOW') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .warning;
                                                      } else if (_model
                                                              .dropDownTempCoeffValue ==
                                                          'GREEN') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .success;
                                                      } else if (_model
                                                              .dropDownTempCoeffValue ==
                                                          'BLUE') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .primary;
                                                      } else if (_model
                                                              .dropDownTempCoeffValue ==
                                                          'VIOLET') {
                                                        return const Color(
                                                            0xFF8F00FF);
                                                      } else if (_model
                                                              .dropDownTempCoeffValue ==
                                                          'GREY') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryText;
                                                      } else {
                                                        return const Color(
                                                            0x00000000);
                                                      }
                                                    }(),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                ),
                                              ),
                                            ),
                                          if ((_model.dropDownNumbandValue ==
                                                  'THREE') ||
                                              (_model.dropDownNumbandValue ==
                                                  'FOUR') ||
                                              (_model.dropDownNumbandValue ==
                                                  'FIVE') ||
                                              (_model.dropDownNumbandValue ==
                                                  'SIX'))
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.55),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 150.0, 0.0, 0.0),
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .cal(
                                                                    _model
                                                                        .dropDownband1Value,
                                                                    _model
                                                                        .dropDownband2Value,
                                                                    _model
                                                                        .dropDownband3Value,
                                                                    _model
                                                                        .dropDownMultiplierValue,
                                                                    _model
                                                                        .dropDownNumbandValue)
                                                                ?.toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                          valueOrDefault<
                                                              String>(
                                                            functions.symbolcal(
                                                                _model
                                                                    .dropDownMultiplierValue,
                                                                _model
                                                                    .dropDownNumbandValue),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                                      .dropDownNumbandValue,
                                                                  _model
                                                                      .dropDownToleranceValue)
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 25.0,
                                                              ),
                                                        ),
                                                      ),
                                                      if ((_model.dropDownTempCoeffValue !=
                                                                  null &&
                                                              _model.dropDownTempCoeffValue !=
                                                                  '') &&
                                                          (_model.dropDownNumbandValue ==
                                                              'SIX'))
                                                        StreamBuilder<
                                                            List<
                                                                TempCoeffRecord>>(
                                                          stream:
                                                              queryTempCoeffRecord(),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                                        .dropDownTempCoeffValue ==
                                                                    'BLACK') {
                                                                  return ' @250ppm/°C';
                                                                } else if (_model
                                                                        .dropDownTempCoeffValue ==
                                                                    'BROWN') {
                                                                  return ' @100ppm/°C';
                                                                } else if (_model
                                                                        .dropDownTempCoeffValue ==
                                                                    'RED') {
                                                                  return ' @50ppm/°C';
                                                                } else if (_model
                                                                        .dropDownTempCoeffValue ==
                                                                    'ORANGE') {
                                                                  return ' @15ppm/°C';
                                                                } else if (_model
                                                                        .dropDownTempCoeffValue ==
                                                                    'YELLOW') {
                                                                  return ' @25ppm/°C';
                                                                } else if (_model
                                                                        .dropDownTempCoeffValue ==
                                                                    'GREEN') {
                                                                  return ' @20ppm/°C';
                                                                } else if (_model
                                                                        .dropDownTempCoeffValue ==
                                                                    'BLUE') {
                                                                  return ' @10ppm/°C';
                                                                } else if (_model
                                                                        .dropDownTempCoeffValue ==
                                                                    'VIOLET') {
                                                                  return ' @5ppm/°C';
                                                                } else if (_model
                                                                        .dropDownTempCoeffValue ==
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
                                                                    fontSize:
                                                                        25.0,
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
                                            alignment: const AlignmentDirectional(
                                                -0.03, -0.87),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Text(
                                                'Colour to Resistance (C2R)',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 16.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.44),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: FlutterFlowAdBanner(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 50.0,
                                        showsTestAd: true,
                                      ),
                                    ),
                                  ),
                                  if ((_model.dropDownNumbandValue ==
                                          'THREE') ||
                                      (_model.dropDownNumbandValue == 'FOUR') ||
                                      (_model.dropDownNumbandValue == 'FIVE') ||
                                      (_model.dropDownNumbandValue == 'SIX'))
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.36, -1.2),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 5.0, 7.0),
                                              child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (_model
                                                            .dropDownband1Value ==
                                                        'GREY') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'BROWN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .accent3;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'RED') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .error;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'ORANGE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tertiary;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'YELLOW') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .warning;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'GREEN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'BLUE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'VIOLET') {
                                                      return const Color(0xFF8F00FF);
                                                    } else if (_model
                                                            .dropDownband1Value ==
                                                        'WHITE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .info;
                                                    } else {
                                                      return const Color(0x00000000);
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          22.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
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
                                                    dropDownband1ThreeBandRecordList =
                                                    snapshot.data!;
                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropDownband1ValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options:
                                                      dropDownband1ThreeBandRecordList
                                                          .map((e) =>
                                                              valueOrDefault<
                                                                  String>(
                                                                e.output,
                                                                'BLACK',
                                                              ))
                                                          .toList(),
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .dropDownband1Value =
                                                          val),
                                                  width: 150.0,
                                                  height: 35.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText: '1st Band',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                  if ((_model.dropDownNumbandValue ==
                                          'THREE') ||
                                      (_model.dropDownNumbandValue == 'FOUR') ||
                                      (_model.dropDownNumbandValue == 'FIVE') ||
                                      (_model.dropDownNumbandValue == 'SIX'))
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.2, -1.02),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 5.0, 7.0),
                                              child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (_model
                                                            .dropDownband2Value ==
                                                        'BLACK') {
                                                      return Colors.black;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'BROWN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .accent3;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'RED') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .error;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'ORANGE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tertiary;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'YELLOW') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .warning;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'GREEN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'BLUE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'VIOLET') {
                                                      return const Color(0xFF8F00FF);
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'GREY') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    } else if (_model
                                                            .dropDownband2Value ==
                                                        'WHITE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .info;
                                                    } else {
                                                      return const Color(0x00000000);
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          22.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                          if ((_model.dropDownNumbandValue ==
                                                  'THREE') ||
                                              (_model.dropDownNumbandValue ==
                                                  'FOUR') ||
                                              (_model.dropDownNumbandValue ==
                                                  'FIVE') ||
                                              (_model.dropDownNumbandValue ==
                                                  'SIX'))
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                                      dropDownband2ThreeBand2RecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownband2ValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        dropDownband2ThreeBand2RecordList
                                                            .map(
                                                                (e) => e.output)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .dropDownband2Value =
                                                            val),
                                                    width: 150.0,
                                                    height: 35.0,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText: '2nd Band',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
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
                                  if ((_model.dropDownNumbandValue == 'FIVE') ||
                                      (_model.dropDownNumbandValue == 'SIX'))
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.11, -1.15),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 5.0, 7.0),
                                              child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (_model
                                                            .dropDownband3Value ==
                                                        'BLACK') {
                                                      return Colors.black;
                                                    } else if (_model
                                                            .dropDownband3Value ==
                                                        'BROWN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .accent3;
                                                    } else if (_model
                                                            .dropDownband3Value ==
                                                        'RED') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .error;
                                                    } else if (_model
                                                            .dropDownband3Value ==
                                                        'ORANGE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tertiary;
                                                    } else if (_model
                                                            .dropDownband3Value ==
                                                        'YELLOW') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .warning;
                                                    } else if (_model
                                                            .dropDownband3Value ==
                                                        'GREEN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (_model
                                                            .dropDownband3Value ==
                                                        'BLUE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                            .dropDownband3Value ==
                                                        'VIOLET') {
                                                      return const Color(0xFF8F00FF);
                                                    } else if (_model
                                                            .dropDownband3Value ==
                                                        'WHITE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .info;
                                                    } else if (_model
                                                            .dropDownband3Value ==
                                                        'GREY') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    } else {
                                                      return const Color(0x00000000);
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          22.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                          if ((_model.dropDownNumbandValue ==
                                                  'FIVE') ||
                                              (_model.dropDownNumbandValue ==
                                                  'SIX'))
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                                      dropDownband3ThreeBand3RecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownband3ValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        dropDownband3ThreeBand3RecordList
                                                            .map(
                                                                (e) => e.output)
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .dropDownband3Value =
                                                            val),
                                                    width: 150.0,
                                                    height: 35.0,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText: '3rd Band',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
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
                                  if ((_model.dropDownNumbandValue ==
                                          'THREE') ||
                                      (_model.dropDownNumbandValue == 'FOUR') ||
                                      (_model.dropDownNumbandValue == 'FIVE') ||
                                      (_model.dropDownNumbandValue == 'SIX'))
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.03, -1.15),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 5.0, 7.0),
                                              child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (_model
                                                            .dropDownMultiplierValue ==
                                                        'BLACK') {
                                                      return Colors.black;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'BROWN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .accent3;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'RED') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .error;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'ORANGE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tertiary;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'YELLOW') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .warning;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'GREEN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'BLUE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'VIOLET') {
                                                      return const Color(0xFF8F00FF);
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'GREY') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'WHITE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .info;
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'GOLD') {
                                                      return const Color(0xFFFFD700);
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'SILVER') {
                                                      return const Color(0xFFC0C0C0);
                                                    } else if (_model
                                                            .dropDownMultiplierValue ==
                                                        'PINK') {
                                                      return const Color(0xFFFA11E0);
                                                    } else {
                                                      return const Color(0x00000000);
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          22.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                          if ((_model.dropDownNumbandValue ==
                                                  'THREE') ||
                                              (_model.dropDownNumbandValue ==
                                                  'FOUR') ||
                                              (_model.dropDownNumbandValue ==
                                                  'FIVE') ||
                                              (_model.dropDownNumbandValue ==
                                                  'SIX'))
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                                      dropDownMultiplierMultiplierRecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownMultiplierValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        dropDownMultiplierMultiplierRecordList
                                                            .map((e) =>
                                                                valueOrDefault<
                                                                    String>(
                                                                  e.output,
                                                                  'BLACK',
                                                                ))
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .dropDownMultiplierValue =
                                                            val),
                                                    width: 150.0,
                                                    height: 35.0,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText: 'Multipier',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
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
                                  if ((_model.dropDownNumbandValue == 'FOUR') ||
                                      (_model.dropDownNumbandValue == 'FIVE') ||
                                      (_model.dropDownNumbandValue == 'SIX'))
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                0.26, -1.02),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 5.0, 7.0),
                                              child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (_model
                                                            .dropDownToleranceValue ==
                                                        'ORANGNGE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tertiary;
                                                    } else if (_model
                                                            .dropDownToleranceValue ==
                                                        'BROWN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .accent3;
                                                    } else if (_model
                                                            .dropDownToleranceValue ==
                                                        'RED') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .error;
                                                    } else if (_model
                                                            .dropDownToleranceValue ==
                                                        'YELLOW') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .warning;
                                                    } else if (_model
                                                            .dropDownToleranceValue ==
                                                        'GREEN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (_model
                                                            .dropDownToleranceValue ==
                                                        'BLUE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                            .dropDownToleranceValue ==
                                                        'VIOLET') {
                                                      return const Color(0xFF8F00FF);
                                                    } else if (_model
                                                            .dropDownToleranceValue ==
                                                        'GREY') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    } else if (_model
                                                            .dropDownToleranceValue ==
                                                        'GOLD') {
                                                      return const Color(0xFFFFD700);
                                                    } else if (_model
                                                            .dropDownToleranceValue ==
                                                        'SILVER') {
                                                      return const Color(0xFFC0C0C0);
                                                    } else {
                                                      return const Color(0x00000000);
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          22.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                          if ((_model.dropDownNumbandValue == 'FOUR') ||
                                              (_model.dropDownNumbandValue ==
                                                  'FIVE') ||
                                              (_model.dropDownNumbandValue ==
                                                  'SIX'))
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                                      dropDownToleranceToleranceRecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownToleranceValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options:
                                                        dropDownToleranceToleranceRecordList
                                                            .map((e) =>
                                                                valueOrDefault<
                                                                    String>(
                                                                  e.output,
                                                                  'BLACK',
                                                                ))
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .dropDownToleranceValue =
                                                            val),
                                                    width: 150.0,
                                                    height: 35.0,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText: 'Tolerance',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
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
                                  if (_model.dropDownNumbandValue == 'SIX')
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                0.36, -0.9),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 5.0, 7.0),
                                              child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                  color: () {
                                                    if (_model
                                                            .dropDownTempCoeffValue ==
                                                        'BLACK') {
                                                      return Colors.black;
                                                    } else if (_model
                                                            .dropDownTempCoeffValue ==
                                                        'BROWN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .accent3;
                                                    } else if (_model
                                                            .dropDownTempCoeffValue ==
                                                        'RED') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .error;
                                                    } else if (_model
                                                            .dropDownTempCoeffValue ==
                                                        'ORANGE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tertiary;
                                                    } else if (_model
                                                            .dropDownTempCoeffValue ==
                                                        'YELLOW') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .warning;
                                                    } else if (_model
                                                            .dropDownTempCoeffValue ==
                                                        'GREEN') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .success;
                                                    } else if (_model
                                                            .dropDownTempCoeffValue ==
                                                        'BLUE') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primary;
                                                    } else if (_model
                                                            .dropDownTempCoeffValue ==
                                                        'VIOLET') {
                                                      return const Color(0xFF8F00FF);
                                                    } else if (_model
                                                            .dropDownTempCoeffValue ==
                                                        'GREY') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryText;
                                                    } else {
                                                      return const Color(0x00000000);
                                                    }
                                                  }(),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          22.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                          if (_model.dropDownNumbandValue ==
                                              'SIX')
                                            StreamBuilder<
                                                List<TempCoeffRecord>>(
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
                                                    dropDownTempCoeffTempCoeffRecordList =
                                                    snapshot.data!;
                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropDownTempCoeffValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options:
                                                      dropDownTempCoeffTempCoeffRecordList
                                                          .map((e) =>
                                                              valueOrDefault<
                                                                  String>(
                                                                e.output,
                                                                'BLACK',
                                                              ))
                                                          .toList(),
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .dropDownTempCoeffValue =
                                                          val),
                                                  width: 150.0,
                                                  height: 35.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText: 'Temp. Coeff.',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<NmBANDSRecord>
                                              dropDownNumbandNmBANDSRecordList =
                                              snapshot.data!;
                                          return FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownNumbandValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            options:
                                                dropDownNumbandNmBANDSRecordList
                                                    .map((e) => e.output)
                                                    .toList(),
                                            onChanged: (val) => setState(() =>
                                                _model.dropDownNumbandValue =
                                                    val),
                                            width: 290.0,
                                            height: 35.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintText:
                                                'Please select the number of bands',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
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
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
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
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: SizedBox(
                    width: 393.0,
                    height: 65.0,
                    child: Stack(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Container(
                              width: 393.0,
                              height: 75.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'ResistCalc',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 50.0,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                260.0, 0.0, 0.0, 34.0),
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
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: const AboutappWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Icon(
                                Icons.info,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
