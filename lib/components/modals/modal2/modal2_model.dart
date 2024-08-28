import '/components/card_display_item/card_display_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal2_widget.dart' show Modal2Widget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Modal2Model extends FlutterFlowModel<Modal2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for CardDisplayItem component.
  late CardDisplayItemModel cardDisplayItemModel;

  @override
  void initState(BuildContext context) {
    cardDisplayItemModel = createModel(context, () => CardDisplayItemModel());
  }

  @override
  void dispose() {
    cardDisplayItemModel.dispose();
  }
}
