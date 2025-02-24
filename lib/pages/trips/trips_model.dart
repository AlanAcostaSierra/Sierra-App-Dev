import '/components/modals/login_or_signup_modal/login_or_signup_modal_widget.dart';
import '/components/modals/no_trip_booked_modal/no_trip_booked_modal_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'trips_widget.dart' show TripsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TripsModel extends FlutterFlowModel<TripsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for NoTripBookedModal component.
  late NoTripBookedModalModel noTripBookedModalModel;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    noTripBookedModalModel =
        createModel(context, () => NoTripBookedModalModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    noTripBookedModalModel.dispose();
    navBarModel.dispose();
  }
}
