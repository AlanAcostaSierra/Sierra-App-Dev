import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'place_items_model.dart';
export 'place_items_model.dart';

class PlaceItemsWidget extends StatefulWidget {
  const PlaceItemsWidget({
    super.key,
    this.icon,
    this.title,
    this.color,
  });

  final Widget? icon;
  final String? title;
  final Color? color;

  @override
  State<PlaceItemsWidget> createState() => _PlaceItemsWidgetState();
}

class _PlaceItemsWidgetState extends State<PlaceItemsWidget> {
  late PlaceItemsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaceItemsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.local_fire_department_outlined,
              color: FFAppState().selected
                  ? FlutterFlowTheme.of(context).primaryText
                  : FlutterFlowTheme.of(context).neutral05,
              size: 30.0,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Text(
                widget!.title!,
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'SFPRO',
                      color: FFAppState().selected
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).neutral05,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Container(
                width: 50.0,
                height: 2.0,
                decoration: BoxDecoration(
                  color: FFAppState().selected
                      ? FlutterFlowTheme.of(context).primaryText
                      : FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
