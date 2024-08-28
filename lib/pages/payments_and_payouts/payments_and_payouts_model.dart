import '/components/simple_setting_items/simple_setting_items_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'payments_and_payouts_widget.dart' show PaymentsAndPayoutsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentsAndPayoutsModel
    extends FlutterFlowModel<PaymentsAndPayoutsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SimpleSettingItems component.
  late SimpleSettingItemsModel simpleSettingItemsModel1;
  // Model for SimpleSettingItems component.
  late SimpleSettingItemsModel simpleSettingItemsModel2;
  // Model for SimpleSettingItems component.
  late SimpleSettingItemsModel simpleSettingItemsModel3;
  // Model for SimpleSettingItems component.
  late SimpleSettingItemsModel simpleSettingItemsModel4;
  // Model for SimpleSettingItems component.
  late SimpleSettingItemsModel simpleSettingItemsModel5;

  @override
  void initState(BuildContext context) {
    simpleSettingItemsModel1 =
        createModel(context, () => SimpleSettingItemsModel());
    simpleSettingItemsModel2 =
        createModel(context, () => SimpleSettingItemsModel());
    simpleSettingItemsModel3 =
        createModel(context, () => SimpleSettingItemsModel());
    simpleSettingItemsModel4 =
        createModel(context, () => SimpleSettingItemsModel());
    simpleSettingItemsModel5 =
        createModel(context, () => SimpleSettingItemsModel());
  }

  @override
  void dispose() {
    simpleSettingItemsModel1.dispose();
    simpleSettingItemsModel2.dispose();
    simpleSettingItemsModel3.dispose();
    simpleSettingItemsModel4.dispose();
    simpleSettingItemsModel5.dispose();
  }
}
