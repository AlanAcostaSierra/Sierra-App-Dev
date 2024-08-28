import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setting_items_model.dart';
export 'setting_items_model.dart';

class SettingItemsWidget extends StatefulWidget {
  const SettingItemsWidget({
    super.key,
    this.icon,
    this.title,
  });

  final Widget? icon;
  final String? title;

  @override
  State<SettingItemsWidget> createState() => _SettingItemsWidgetState();
}

class _SettingItemsWidgetState extends State<SettingItemsWidget> {
  late SettingItemsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingItemsModel());
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
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget!.title!,
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'SFPRO',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 10.0,
            buttonSize: 40.0,
            icon: Icon(
              FFIcons.kchevronRight,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 20.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
      ),
    );
  }
}
