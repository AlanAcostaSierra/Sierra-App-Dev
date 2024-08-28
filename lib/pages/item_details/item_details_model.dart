import '/components/item_detail/item_detail_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'item_details_widget.dart' show ItemDetailsWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemDetailsModel extends FlutterFlowModel<ItemDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for ItemDetail component.
  late ItemDetailModel itemDetailModel1;
  // Model for ItemDetail component.
  late ItemDetailModel itemDetailModel2;
  // Model for ItemDetail component.
  late ItemDetailModel itemDetailModel3;
  // Model for ItemDetail component.
  late ItemDetailModel itemDetailModel4;

  @override
  void initState(BuildContext context) {
    itemDetailModel1 = createModel(context, () => ItemDetailModel());
    itemDetailModel2 = createModel(context, () => ItemDetailModel());
    itemDetailModel3 = createModel(context, () => ItemDetailModel());
    itemDetailModel4 = createModel(context, () => ItemDetailModel());
  }

  @override
  void dispose() {
    itemDetailModel1.dispose();
    itemDetailModel2.dispose();
    itemDetailModel3.dispose();
    itemDetailModel4.dispose();
  }
}
