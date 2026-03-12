import '/flutter_flow/flutter_flow_util.dart';
import 'package:u_i_library_3c2hbt/app_state.dart'
    as u_i_library_3c2hbt_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tab_time_model.dart';
export 'tab_time_model.dart';

class TabTimeWidget extends StatefulWidget {
  const TabTimeWidget({
    super.key,
    this.textfilter,
    required this.filtertime,
  });

  final String? textfilter;
  final int? filtertime;

  @override
  State<TabTimeWidget> createState() => _TabTimeWidgetState();
}

class _TabTimeWidgetState extends State<TabTimeWidget> {
  late TabTimeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabTimeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<u_i_library_3c2hbt_app_state.FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FFAppState().Filtertime == widget.filtertime
            ? FlutterFlowTheme.of(context).primary
            : Color(0xFFF5F6F5),
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
        child: Text(
          valueOrDefault<String>(
            widget.textfilter,
            '3 ชั่วโมง',
          ),
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).bodySmall.override(
                fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                color: FFAppState().Filtertime == widget.filtertime
                    ? FlutterFlowTheme.of(context).secondaryBackground
                    : FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
              ),
        ),
      ),
    );
  }
}
