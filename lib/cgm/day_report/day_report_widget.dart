import '/cgm/card_reportaverage/card_reportaverage_widget.dart';
import '/cgm/card_reportmax/card_reportmax_widget.dart';
import '/cgm/card_reportmin/card_reportmin_widget.dart';
import '/cgm/card_reportstandard/card_reportstandard_widget.dart';
import '/cgm/filterday/filterday_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/widget/select_type/select_type_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:u_i_library_3c2hbt/app_state.dart'
    as u_i_library_3c2hbt_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'day_report_model.dart';
export 'day_report_model.dart';

class DayReportWidget extends StatefulWidget {
  const DayReportWidget({super.key});

  static String routeName = 'Day_report';
  static String routePath = '/dayReport';

  @override
  State<DayReportWidget> createState() => _DayReportWidgetState();
}

class _DayReportWidgetState extends State<DayReportWidget>
    with TickerProviderStateMixin {
  late DayReportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayReportModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(24.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<u_i_library_3c2hbt_app_state.FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 18.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
          ),
          title: Text(
            'รายงานผลรายวัน',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleMediumIsCustom,
                ),
          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
              child: Image.asset(
                'assets/images/bgappbar.png',
                fit: BoxFit.cover,
                alignment: Alignment(0.0, 1.0),
              ),
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).secondary,
                  FlutterFlowTheme.of(context).primaryBackground,
                  FlutterFlowTheme.of(context).primaryBackground
                ],
                stops: [0.0, 0.25, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                0,
                0,
                0,
                48.0,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 2;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 2,
                                  date: '26',
                                  day: 'อา',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 1;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 1,
                                  date: '27',
                                  day: 'จ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 3;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 3,
                                  date: '28',
                                  day: 'อ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 4;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 4,
                                  date: '29',
                                  day: 'พ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 5;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 5,
                                  date: '30',
                                  day: 'พฤ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 6;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 6,
                                  date: '31',
                                  day: 'ศ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 7;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 7,
                                  date: '1',
                                  day: 'ส',
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (FFAppState().Selectday == 1)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.tint,
                                                  color: Color(0xFFF54A6C),
                                                  size: 16.0,
                                                ),
                                                Text(
                                                  'ระดับน้ำตาล',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFFF54A6C),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            SelectTypeWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'ภายใน 24 ชั่วโมง',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 200.0,
                                          child: custom_widgets.CGMChart(
                                            width: double.infinity,
                                            height: 200.0,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'รายงานผล',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ],
                                    ),
                                    MasonryGridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 1;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 1;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 2;
                                          } else {
                                            return 2;
                                          }
                                        }(),
                                      ),
                                      crossAxisSpacing: 12.0,
                                      mainAxisSpacing: 12.0,
                                      itemCount: 4,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return [
                                          () => wrapWithModel(
                                                model: _model
                                                    .cardReportaverageModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportaverageWidget(
                                                  number: '-',
                                                  sub: '-',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model: _model
                                                    .cardReportstandardModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportstandardWidget(
                                                  numsd: '-',
                                                  subsd: '-',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model:
                                                    _model.cardReportmaxModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportmaxWidget(
                                                  nummax: '-',
                                                  submax: '-',
                                                  time: '00.00 น.',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model:
                                                    _model.cardReportminModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportminWidget(
                                                  time: '00:00 น.',
                                                  nummin: '-',
                                                  submin: '-',
                                                ),
                                              ),
                                        ][index]();
                                      },
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ),
                            ],
                          ),
                        if (FFAppState().Selectday == 2)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.tint,
                                                  color: Color(0xFFF54A6C),
                                                  size: 16.0,
                                                ),
                                                Text(
                                                  'ระดับน้ำตาล',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFFF54A6C),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            SelectTypeWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'ภายใน 24 ชั่วโมง',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 200.0,
                                          child: custom_widgets.CGMChartreport(
                                            width: double.infinity,
                                            height: 200.0,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'รายงานผล',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ],
                                    ),
                                    MasonryGridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 1;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 1;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 2;
                                          } else {
                                            return 2;
                                          }
                                        }(),
                                      ),
                                      crossAxisSpacing: 12.0,
                                      mainAxisSpacing: 12.0,
                                      itemCount: 4,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return [
                                          () => wrapWithModel(
                                                model: _model
                                                    .cardReportaverageModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportaverageWidget(
                                                  number: '98.0',
                                                  sub:
                                                      'การเปลี่ยนแปลงจากวันก่อนหน้า: ลดลง 11.38%',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model: _model
                                                    .cardReportstandardModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportstandardWidget(
                                                  numsd: '12.02',
                                                  subsd:
                                                      'ลดลงจากวันก่อนหน้า: 37.77%',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model:
                                                    _model.cardReportmaxModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportmaxWidget(
                                                  nummax: '125.0',
                                                  submax:
                                                      'สัดส่วนของภาวะน้ำตาลสูง: 0.0%',
                                                  time: '06:00 น.',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model:
                                                    _model.cardReportminModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportminWidget(
                                                  time: '7:00 น.',
                                                  nummin: '55.0',
                                                  submin:
                                                      'สัดส่วนของภาวะน้ำตาลต่ำ: 0.0%',
                                                ),
                                              ),
                                        ][index]();
                                      },
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ),
                            ],
                          ),
                        if (FFAppState().Selectday == 3)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/care-vision-z75y88/assets/wxf3k7xcz9zp/notinfor_1.png',
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ไม่มีข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().Selectday == 4)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/care-vision-z75y88/assets/wxf3k7xcz9zp/notinfor_1.png',
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ไม่มีข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().Selectday == 5)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/care-vision-z75y88/assets/wxf3k7xcz9zp/notinfor_1.png',
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ไม่มีข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().Selectday == 6)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/care-vision-z75y88/assets/wxf3k7xcz9zp/notinfor_1.png',
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ไม่มีข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().Selectday == 7)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/care-vision-z75y88/assets/wxf3k7xcz9zp/notinfor_1.png',
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ไม่มีข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                      ].divide(SizedBox(height: 18.0)),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 2;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 2,
                                  date: '26',
                                  day: 'อา',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 1;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 1,
                                  date: '27',
                                  day: 'จ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 3;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 3,
                                  date: '28',
                                  day: 'อ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 4;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 4,
                                  date: '29',
                                  day: 'พ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 5;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 5,
                                  date: '30',
                                  day: 'พฤ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 6;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 6,
                                  date: '31',
                                  day: 'ศ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 7;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 7,
                                  date: '1',
                                  day: 'ส',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 7;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 8,
                                  date: '2',
                                  day: 'อา',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 7;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel16,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 9,
                                  date: '3',
                                  day: 'จ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 7;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel17,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 10,
                                  date: '4',
                                  day: 'อ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 7;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel18,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 11,
                                  date: '5',
                                  day: 'พ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 7;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel19,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 12,
                                  date: '6',
                                  day: 'พฤ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 7;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel20,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 13,
                                  date: '7',
                                  day: 'ศ',
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().Selectday = 7;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.filterdayModel21,
                                updateCallback: () => safeSetState(() {}),
                                child: FilterdayWidget(
                                  filtertime: 14,
                                  date: '8',
                                  day: 'ส',
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (FFAppState().Selectday == 1)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.tint,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                                Text(
                                                  'ระดับน้ำตาล',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            SelectTypeWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'ภายใน 24 ชั่วโมง',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 200.0,
                                          child: custom_widgets.CGMChart(
                                            width: double.infinity,
                                            height: 200.0,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'รายงานผล',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ],
                                    ),
                                    MasonryGridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 1;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 1;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 2;
                                          } else {
                                            return 2;
                                          }
                                        }(),
                                      ),
                                      crossAxisSpacing: 12.0,
                                      mainAxisSpacing: 12.0,
                                      itemCount: 4,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return [
                                          () => wrapWithModel(
                                                model: _model
                                                    .cardReportaverageModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportaverageWidget(
                                                  number: '-',
                                                  sub: '-',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model: _model
                                                    .cardReportstandardModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportstandardWidget(
                                                  numsd: '-',
                                                  subsd: '-',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model:
                                                    _model.cardReportmaxModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportmaxWidget(
                                                  nummax: '-',
                                                  submax: '-',
                                                  time: '00.00 น.',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model:
                                                    _model.cardReportminModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportminWidget(
                                                  time: '00:00 น.',
                                                  nummin: '-',
                                                  submin: '-',
                                                ),
                                              ),
                                        ][index]();
                                      },
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ),
                            ],
                          ),
                        if (FFAppState().Selectday == 2)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.tint,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                                Text(
                                                  'ระดับน้ำตาล',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            SelectTypeWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'ภายใน 24 ชั่วโมง',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 200.0,
                                          child: custom_widgets.CGMChartreport(
                                            width: double.infinity,
                                            height: 200.0,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'รายงานผล',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ],
                                    ),
                                    MasonryGridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 1;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 1;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 2;
                                          } else {
                                            return 2;
                                          }
                                        }(),
                                      ),
                                      crossAxisSpacing: 12.0,
                                      mainAxisSpacing: 12.0,
                                      itemCount: 4,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return [
                                          () => wrapWithModel(
                                                model: _model
                                                    .cardReportaverageModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportaverageWidget(
                                                  number: '98.0',
                                                  sub:
                                                      'การเปลี่ยนแปลงจากวันก่อนหน้า: ลดลง 11.38%',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model: _model
                                                    .cardReportstandardModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportstandardWidget(
                                                  numsd: '12.02',
                                                  subsd:
                                                      'ลดลงจากวันก่อนหน้า: 37.77%',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model:
                                                    _model.cardReportmaxModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportmaxWidget(
                                                  nummax: '125.0',
                                                  submax:
                                                      'สัดส่วนของภาวะน้ำตาลสูง: 0.0%',
                                                  time: '06:00 น.',
                                                ),
                                              ),
                                          () => wrapWithModel(
                                                model:
                                                    _model.cardReportminModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CardReportminWidget(
                                                  time: '7:00 น.',
                                                  nummin: '55.0',
                                                  submin:
                                                      'สัดส่วนของภาวะน้ำตาลต่ำ: 0.0%',
                                                ),
                                              ),
                                        ][index]();
                                      },
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                              ),
                            ],
                          ),
                        if (FFAppState().Selectday == 3)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/care-vision-z75y88/assets/wxf3k7xcz9zp/notinfor_1.png',
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ไม่มีข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().Selectday == 4)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/care-vision-z75y88/assets/wxf3k7xcz9zp/notinfor_1.png',
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ไม่มีข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().Selectday == 5)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/care-vision-z75y88/assets/wxf3k7xcz9zp/notinfor_1.png',
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ไม่มีข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().Selectday == 6)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/care-vision-z75y88/assets/wxf3k7xcz9zp/notinfor_1.png',
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ไม่มีข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if (FFAppState().Selectday == 7)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 120.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/care-vision-z75y88/assets/wxf3k7xcz9zp/notinfor_1.png',
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ไม่มีข้อมูล',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                      ].divide(SizedBox(height: 18.0)),
                    ),
                  ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
