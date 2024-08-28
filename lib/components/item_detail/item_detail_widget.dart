import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_detail_model.dart';
export 'item_detail_model.dart';

class ItemDetailWidget extends StatefulWidget {
  const ItemDetailWidget({
    super.key,
    this.icon,
    this.title,
    this.description,
  });

  final Widget? icon;
  final String? title;
  final String? description;

  @override
  State<ItemDetailWidget> createState() => _ItemDetailWidgetState();
}

class _ItemDetailWidgetState extends State<ItemDetailWidget> {
  late ItemDetailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemDetailModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                widget!.icon!,
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget!.title!,
                        maxLines: 1,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'SFPRO',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                      ),
                      Text(
                        widget!.description!,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'SFPRO',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ),
              ].divide(SizedBox(width: 16.0)),
            ),
          ),
        ],
      ),
    );
  }
}
