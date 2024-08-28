import '/components/modals/guests_modal/guests_modal_widget.dart';
import '/components/modals/house_rules_modal/house_rules_modal_widget.dart';
import '/components/modals/reservation_change_modal/reservation_change_modal_widget.dart';
import '/components/modals/select_dates_modal/select_dates_modal_widget.dart';
import '/components/modals/setting_modal/setting_modal_widget.dart';
import '/components/modals/share_modal/share_modal_widget.dart';
import '/components/setting_items/setting_items_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'reservation_widget.dart' show ReservationWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReservationModel extends FlutterFlowModel<ReservationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel1;
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel2;
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel3;
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel4;
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel5;
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel6;
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel7;
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel8;
  // Model for SettingItems component.
  late SettingItemsModel settingItemsModel9;

  @override
  void initState(BuildContext context) {
    settingItemsModel1 = createModel(context, () => SettingItemsModel());
    settingItemsModel2 = createModel(context, () => SettingItemsModel());
    settingItemsModel3 = createModel(context, () => SettingItemsModel());
    settingItemsModel4 = createModel(context, () => SettingItemsModel());
    settingItemsModel5 = createModel(context, () => SettingItemsModel());
    settingItemsModel6 = createModel(context, () => SettingItemsModel());
    settingItemsModel7 = createModel(context, () => SettingItemsModel());
    settingItemsModel8 = createModel(context, () => SettingItemsModel());
    settingItemsModel9 = createModel(context, () => SettingItemsModel());
  }

  @override
  void dispose() {
    settingItemsModel1.dispose();
    settingItemsModel2.dispose();
    settingItemsModel3.dispose();
    settingItemsModel4.dispose();
    settingItemsModel5.dispose();
    settingItemsModel6.dispose();
    settingItemsModel7.dispose();
    settingItemsModel8.dispose();
    settingItemsModel9.dispose();
  }
}
