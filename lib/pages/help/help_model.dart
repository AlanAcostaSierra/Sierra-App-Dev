import '/components/modals/reservation_change_modal/reservation_change_modal_widget.dart';
import '/components/profile_setting_items/profile_setting_items_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'help_widget.dart' show HelpWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HelpModel extends FlutterFlowModel<HelpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel6;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel7;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel8;

  @override
  void initState(BuildContext context) {
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
    profileSettingItemsModel6 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel7 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel8 =
        createModel(context, () => ProfileSettingItemsModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    profileSettingItemsModel1.dispose();
    profileSettingItemsModel2.dispose();
    profileSettingItemsModel3.dispose();
    profileSettingItemsModel4.dispose();
    profileSettingItemsModel5.dispose();
    profileSettingItemsModel6.dispose();
    profileSettingItemsModel7.dispose();
    profileSettingItemsModel8.dispose();
  }
}
