import '/components/looking_for_item/looking_for_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'looking_for_things_widget.dart' show LookingForThingsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LookingForThingsModel extends FlutterFlowModel<LookingForThingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for LookingForItem component.
  late LookingForItemModel lookingForItemModel1;
  // Model for LookingForItem component.
  late LookingForItemModel lookingForItemModel2;
  // Model for LookingForItem component.
  late LookingForItemModel lookingForItemModel3;
  // Model for LookingForItem component.
  late LookingForItemModel lookingForItemModel4;

  @override
  void initState(BuildContext context) {
    lookingForItemModel1 = createModel(context, () => LookingForItemModel());
    lookingForItemModel2 = createModel(context, () => LookingForItemModel());
    lookingForItemModel3 = createModel(context, () => LookingForItemModel());
    lookingForItemModel4 = createModel(context, () => LookingForItemModel());
  }

  @override
  void dispose() {
    lookingForItemModel1.dispose();
    lookingForItemModel2.dispose();
    lookingForItemModel3.dispose();
    lookingForItemModel4.dispose();
  }
}
