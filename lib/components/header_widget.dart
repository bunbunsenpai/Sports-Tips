import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

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
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterFlowIconButton(
              borderRadius: 20.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).primaryBackground,
              icon: Icon(
                Icons.menu,
                color: FlutterFlowTheme.of(context).secondary,
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(MAINpage1Widget.routeName);
              },
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 36.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'AJ',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.montserrat(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondary,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            FlutterFlowIconButton(
              borderRadius: 20.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.notifications_outlined,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
        ),
      ),
    );
  }
}
