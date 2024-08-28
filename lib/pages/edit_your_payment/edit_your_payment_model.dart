import '/components/simple_setting_items/simple_setting_items_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_your_payment_widget.dart' show EditYourPaymentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditYourPaymentModel extends FlutterFlowModel<EditYourPaymentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for SimpleSettingItems component.
  late SimpleSettingItemsModel simpleSettingItemsModel1;
  // Model for SimpleSettingItems component.
  late SimpleSettingItemsModel simpleSettingItemsModel2;

  @override
  void initState(BuildContext context) {
    simpleSettingItemsModel1 =
        createModel(context, () => SimpleSettingItemsModel());
    simpleSettingItemsModel2 =
        createModel(context, () => SimpleSettingItemsModel());
  }

  @override
  void dispose() {
    simpleSettingItemsModel1.dispose();
    simpleSettingItemsModel2.dispose();
  }
}
