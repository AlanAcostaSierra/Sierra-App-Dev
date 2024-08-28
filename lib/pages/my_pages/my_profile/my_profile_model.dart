import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/setting_items/setting_items_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'my_profile_widget.dart' show MyProfileWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyProfileModel extends FlutterFlowModel<MyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Alan Get Products)] action in Button widget.
  ApiCallResponse? alanResult;
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel1;
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel2;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    settingItemsModel1 = createModel(context, () => SettingItemsModel());
    settingItemsModel2 = createModel(context, () => SettingItemsModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    settingItemsModel1.dispose();
    settingItemsModel2.dispose();
    navBarModel.dispose();
  }
}
