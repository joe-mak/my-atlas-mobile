import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({
    super.key,
    required this.slectpage,
    bool? hide,
  }) : this.hide = hide ?? false;

  final int? slectpage;
  final bool hide;

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: double.infinity,
              height: 90.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8.0,
                    color: Color(0x32000000),
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  width: 1.0,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.favorite_rounded,
                            color: widget.slectpage == 1
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                          ),
                          onPressed: () async {
                            context.pushNamed(HomePageWidget.routeName);
                          },
                        ),
                        Text(
                          'สรุป',
                          style: GoogleFonts.sarabun(
                            color: widget.slectpage == 1
                                ? FlutterFlowTheme.of(context).primary
                                : Color(0xFF959595),
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                          ),
                        ),
                      ]
                          .addToStart(SizedBox(height: 2.0))
                          .addToEnd(SizedBox(height: 12.0)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.qr_code_scanner_rounded,
                            color: widget.slectpage == 2
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.pushNamed(ScanWidget.routeName);
                          },
                        ),
                        Text(
                          'QR/Scan',
                          style: GoogleFonts.sarabun(
                            color: widget.slectpage == 2
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                          ),
                        ),
                      ]
                          .addToStart(SizedBox(height: 2.0))
                          .addToEnd(SizedBox(height: 12.0)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.photo_camera_sharp,
                            color: widget.slectpage == 3
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                          ),
                          onPressed: () async {
                            context.pushNamed(FoodLensWidget.routeName);
                          },
                        ),
                        Text(
                          'ถ่ายภาพอาหาร',
                          style: GoogleFonts.sarabun(
                            color: widget.slectpage == 3
                                ? FlutterFlowTheme.of(context).primary
                                : Color(0xFF959595),
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                          ),
                        ),
                      ]
                          .addToStart(SizedBox(height: 2.0))
                          .addToEnd(SizedBox(height: 12.0)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.person,
                            color: widget.slectpage == 4
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.pushNamed(FoodLensWidget.routeName);
                          },
                        ),
                        Text(
                          'ประวัติสุขภาพ',
                          style: GoogleFonts.sarabun(
                            color: widget.slectpage == 4
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                          ),
                        ),
                      ]
                          .addToStart(SizedBox(height: 2.0))
                          .addToEnd(SizedBox(height: 12.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
