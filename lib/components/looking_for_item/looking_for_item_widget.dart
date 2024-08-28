import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'looking_for_item_model.dart';
export 'looking_for_item_model.dart';

class LookingForItemWidget extends StatefulWidget {
  const LookingForItemWidget({super.key});

  @override
  State<LookingForItemWidget> createState() => _LookingForItemWidgetState();
}

class _LookingForItemWidgetState extends State<LookingForItemWidget> {
  late LookingForItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LookingForItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 160.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        'https://picsum.photos/seed/39/600',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.94, -0.93),
                      child: ToggleIcon(
                        onPressed: () async {
                          setState(() =>
                              FFAppState().selected = !FFAppState().selected);
                        },
                        value: FFAppState().selected,
                        onIcon: Icon(
                          FFIcons.kheart,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 25.0,
                        ),
                        offIcon: Icon(
                          FFIcons.kheartFilled,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 25.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.kstarFilled,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 12.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '4.91',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'SFPRO',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '(1377)',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'SFPRO',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'The Top Rated Street Food Tour By Motorbike ',
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'SFPRO',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'From \$298',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'SFPRO',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          TextSpan(
                            text: ' /person',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'SFPRO',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
      ),
    );
  }
}