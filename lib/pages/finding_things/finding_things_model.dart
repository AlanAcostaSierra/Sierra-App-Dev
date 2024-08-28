import '/components/looking_for_item/looking_for_item_widget.dart';
import '/components/popular_item/popular_item_widget.dart';
import '/components/profile_setting_items/profile_setting_items_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'finding_things_widget.dart' show FindingThingsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FindingThingsModel extends FlutterFlowModel<FindingThingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PopularItem component.
  late PopularItemModel popularItemModel;
  // Model for LookingForItem component.
  late LookingForItemModel lookingForItemModel1;
  // Model for LookingForItem component.
  late LookingForItemModel lookingForItemModel2;
  // Model for LookingForItem component.
  late LookingForItemModel lookingForItemModel3;
  // Model for LookingForItem component.
  late LookingForItemModel lookingForItemModel4;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel1;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel2;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel3;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel4;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel5;

  @override
  void initState(BuildContext context) {
    popularItemModel = createModel(context, () => PopularItemModel());
    lookingForItemModel1 = createModel(context, () => LookingForItemModel());
    lookingForItemModel2 = createModel(context, () => LookingForItemModel());
    lookingForItemModel3 = createModel(context, () => LookingForItemModel());
    lookingForItemModel4 = createModel(context, () => LookingForItemModel());
    profileSettingItemsModel1 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel2 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel3 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel4 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel5 =
        createModel(context, () => ProfileSettingItemsModel());
  }

  @override
  void dispose() {
    popularItemModel.dispose();
    lookingForItemModel1.dispose();
    lookingForItemModel2.dispose();
    lookingForItemModel3.dispose();
    lookingForItemModel4.dispose();
    profileSettingItemsModel1.dispose();
    profileSettingItemsModel2.dispose();
    profileSettingItemsModel3.dispose();
    profileSettingItemsModel4.dispose();
    profileSettingItemsModel5.dispose();
  }
}
