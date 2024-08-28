import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'discover_accommodations_item_model.dart';
export 'discover_accommodations_item_model.dart';

class DiscoverAccommodationsItemWidget extends StatefulWidget {
  const DiscoverAccommodationsItemWidget({super.key});

  @override
  State<DiscoverAccommodationsItemWidget> createState() =>
      _DiscoverAccommodationsItemWidgetState();
}

class _DiscoverAccommodationsItemWidgetState
    extends State<DiscoverAccommodationsItemWidget> {
  late DiscoverAccommodationsItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiscoverAccommodationsItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 188.0,
      height: 371.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Container(
              width: double.infinity,
              height: 240.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.network(
                  'https://picsum.photos/seed/305/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Country',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'SFPRO',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      '2 Nights PACKAGE All Inclusive',
                      maxLines: 2,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'SFPRO',
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'À partir de 577€/personne -  3 jours',
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
                children: [
                  Text(
                    '5.0',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'SFPRO',
                          color: FlutterFlowTheme.of(context).success,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Icon(
                      FFIcons.kstarFilled,
                      color: FlutterFlowTheme.of(context).success,
                      size: 16.0,
                    ),
                  ),
                ],
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
