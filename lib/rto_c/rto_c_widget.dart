import '/backend/backend.dart';
import '/components/aboutapp_widget.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'rto_c_model.dart';
export 'rto_c_model.dart';

class RtoCWidget extends StatefulWidget {
  const RtoCWidget({super.key});

  @override
  State<RtoCWidget> createState() => _RtoCWidgetState();
}

class _RtoCWidgetState extends State<RtoCWidget> with TickerProviderStateMixin {
  late RtoCModel _model;

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
    _model = createModel(context, () => RtoCModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).info,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: SizedBox(
                          width: 393.0,
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Untitled_design_(2).png',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              if (valueOrDefault<bool>(
                                _model.textController.text != '',
                                false,
                              ))
                                Align(
                                  alignment: const AlignmentDirectional(-0.36, -1.2),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 64.0, 0.0, 0.0),
                                    child: Container(
                                      width: 10.0,
                                      height: 62.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().band1color ==
                                              'GREY') {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          } else if (FFAppState().band1color ==
                                              'BROWN') {
                                            return FlutterFlowTheme.of(context)
                                                .accent3;
                                          } else if (FFAppState().band1color ==
                                              'RED') {
                                            return FlutterFlowTheme.of(context)
                                                .error;
                                          } else if (FFAppState().band1color ==
                                              'ORANGE') {
                                            return FlutterFlowTheme.of(context)
                                                .tertiary;
                                          } else if (FFAppState().band1color ==
                                              'YELLOW') {
                                            return FlutterFlowTheme.of(context)
                                                .warning;
                                          } else if (FFAppState().band1color ==
                                              'GREEN') {
                                            return FlutterFlowTheme.of(context)
                                                .success;
                                          } else if (FFAppState().band1color ==
                                              'BLUE') {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (FFAppState().band1color ==
                                              'VIOLET') {
                                            return const Color(0xFF8F00FF);
                                          } else if (FFAppState().band1color ==
                                              'WHITE') {
                                            return FlutterFlowTheme.of(context)
                                                .info;
                                          } else {
                                            return const Color(0x00000000);
                                          }
                                        }(),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                    ),
                                  ),
                                ),
                              if (_model.textController.text != '')
                                Align(
                                  alignment: const AlignmentDirectional(-0.2, -1.02),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 72.0, 5.0, 0.0),
                                    child: Container(
                                      width: 10.0,
                                      height: 46.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().band2color ==
                                              'GREY') {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryText;
                                          } else if (FFAppState().band2color ==
                                              'BROWN') {
                                            return FlutterFlowTheme.of(context)
                                                .accent3;
                                          } else if (FFAppState().band2color ==
                                              'RED') {
                                            return FlutterFlowTheme.of(context)
                                                .error;
                                          } else if (FFAppState().band2color ==
                                              'ORANGE') {
                                            return FlutterFlowTheme.of(context)
                                                .tertiary;
                                          } else if (FFAppState().band2color ==
                                              'YELLOW') {
                                            return FlutterFlowTheme.of(context)
                                                .warning;
                                          } else if (FFAppState().band2color ==
                                              'GREEN') {
                                            return FlutterFlowTheme.of(context)
                                                .success;
                                          } else if (FFAppState().band2color ==
                                              'BLUE') {
                                            return FlutterFlowTheme.of(context)
                                                .primary;
                                          } else if (FFAppState().band2color ==
                                              'VIOLET') {
                                            return const Color(0xFF8F00FF);
                                          } else if (FFAppState().band2color ==
                                              'WHITE') {
                                            return FlutterFlowTheme.of(context)
                                                .info;
                                          } else {
                                            return const Color(0x00000000);
                                          }
                                        }(),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                    ),
                                  ),
                                ),
                              Align(
                                alignment: const AlignmentDirectional(-0.11, -1.15),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 72.0, 9.0, 0.0),
                                  child: Container(
                                    width: 10.0,
                                    height: 46.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.03, -1.15),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 72.0, 9.0, 0.0),
                                  child: Container(
                                    width: 10.0,
                                    height: 46.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.26, -1.02),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 72.0, 20.0, 0.0),
                                  child: Container(
                                    width: 10.0,
                                    height: 46.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.36, -0.9),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 64.0, 0.0, 0.0),
                                  child: Container(
                                    width: 10.0,
                                    height: 62.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.03, -0.87),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    'Resistance to Colour (R2C)',
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
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: SizedBox(
                            width: 393.0,
                            height: 160.0,
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 0.0, 50.0, 10.0),
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
                                            dropDownNmBANDSRecordList =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownValueController1 ??=
                                              FormFieldController<String>(
                                            _model.dropDownValue1 ??= 'THREE',
                                          ),
                                          options: dropDownNmBANDSRecordList
                                              .map((e) => e.output)
                                              .toList(),
                                          onChanged: (val) => setState(() =>
                                              _model.dropDownValue1 = val),
                                          width: 290.0,
                                          height: 35.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText:
                                              'Please select the number of bands',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
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
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.65),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 8.0, 0.0),
                                            child: TextFormField(
                                              controller: _model.textController,
                                              focusNode:
                                                  _model.textFieldFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.textController',
                                                const Duration(milliseconds: 2),
                                                () async {
                                                  setState(() {
                                                    FFAppState().band1color =
                                                        functions.arg2color(
                                                            double.tryParse(_model
                                                                .textController
                                                                .text),
                                                            _model
                                                                .dropDownValue1,
                                                            _model
                                                                .dropDownValue2,
                                                            _model
                                                                .dropDownValue3)![0];
                                                    FFAppState().band2color =
                                                        functions.arg2color(
                                                            double.tryParse(_model
                                                                .textController
                                                                .text),
                                                            _model
                                                                .dropDownValue1,
                                                            _model
                                                                .dropDownValue2,
                                                            _model
                                                                .dropDownValue3)![1];
                                                  });
                                                },
                                              ),
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Enter the Resistance Value',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                alignLabelWithHint: false,
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              textAlign: TextAlign.start,
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 50.0, 0.0),
                                          child: FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController2 ??=
                                                FormFieldController<String>(
                                              _model.dropDownValue2 ??= 'Ω',
                                            ),
                                            options: const ['Ω', 'kΩ', 'MΩ', 'GΩ'],
                                            onChanged: (val) => setState(() =>
                                                _model.dropDownValue2 = val),
                                            width: 90.0,
                                            height: 50.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintText: 'Please select...',
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
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 17.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      50.0, 90.0, 2.5, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDowntemoValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: const [
                                                  '250ppm/°C',
                                                  '100ppm/°C',
                                                  '50ppm/°C',
                                                  '15ppm/°C',
                                                  '25ppm/°C',
                                                  '20ppm/°C',
                                                  '10ppm/°C',
                                                  '5ppm/°C',
                                                  '1ppm/°C'
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model
                                                            .dropDowntemoValue =
                                                        val),
                                                width: 150.0,
                                                height: 35.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: _model
                                                            .dropDownValue1 !=
                                                        'SIX'
                                                    ? 'N/A'
                                                    : 'Temperature coefficient',
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
                                                        16.0, 0.0, 16.0, 0.0),
                                                hidesUnderline: true,
                                                disabled:
                                                    _model.dropDownValue1 !=
                                                        'SIX',
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      2.5, 90.0, 50.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController3 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: const [
                                                  '±0.05%',
                                                  '±0.02%',
                                                  '±0.5%',
                                                  '±0.25%',
                                                  '±0.1%',
                                                  '±0.01%',
                                                  '±5%',
                                                  '±10%',
                                                  '±20%'
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue3 = val),
                                                width: 150.0,
                                                height: 35.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText:
                                                    _model.dropDownValue1 ==
                                                            'THREE'
                                                        ? 'N/A'
                                                        : 'Tolerance',
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
                                                        16.0, 0.0, 16.0, 0.0),
                                                hidesUnderline: true,
                                                disabled:
                                                    _model.dropDownValue1 ==
                                                        'THREE',
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
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
                      if (false)
                        const Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: FlutterFlowAdBanner(
                              showsTestAd: true,
                              androidAdUnitID:
                                  'ca-app-pub-2953271805200465/1205425363',
                            ),
                          ),
                        ),
                    ],
                  ),
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
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation']!),
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
