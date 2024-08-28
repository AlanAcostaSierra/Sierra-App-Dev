import '/components/guests_review/guests_review_widget.dart';
import '/components/listing_item/listing_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'stay_and_fun_modal_widget.dart' show StayAndFunModalWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StayAndFunModalModel extends FlutterFlowModel<StayAndFunModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ListingItem component.
  late ListingItemModel listingItemModel1;
  // Model for ListingItem component.
  late ListingItemModel listingItemModel2;
  // Model for ListingItem component.
  late ListingItemModel listingItemModel3;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for GuestsReview component.
  late GuestsReviewModel guestsReviewModel;

  @override
  void initState(BuildContext context) {
    listingItemModel1 = createModel(context, () => ListingItemModel());
    listingItemModel2 = createModel(context, () => ListingItemModel());
    listingItemModel3 = createModel(context, () => ListingItemModel());
    guestsReviewModel = createModel(context, () => GuestsReviewModel());
  }

  @override
  void dispose() {
    listingItemModel1.dispose();
    listingItemModel2.dispose();
    listingItemModel3.dispose();
    tabBarController?.dispose();
    guestsReviewModel.dispose();
  }
}
