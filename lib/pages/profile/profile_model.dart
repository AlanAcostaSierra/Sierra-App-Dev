import '/components/modals/login_or_signup_modal/login_or_signup_modal_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/setting_items/setting_items_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
