import '/components/question_answer_d_d/question_answer_d_d_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'steps_away_widget.dart' show StepsAwayWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StepsAwayModel extends FlutterFlowModel<StepsAwayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for QuestionAnswerDD component.
  late QuestionAnswerDDModel questionAnswerDDModel1;
  // Model for QuestionAnswerDD component.
  late QuestionAnswerDDModel questionAnswerDDModel2;
  // Model for QuestionAnswerDD component.
  late QuestionAnswerDDModel questionAnswerDDModel3;
  // Model for QuestionAnswerDD component.
  late QuestionAnswerDDModel questionAnswerDDModel4;
  // Model for QuestionAnswerDD component.
  late QuestionAnswerDDModel questionAnswerDDModel5;
  // Model for QuestionAnswerDD component.
  late QuestionAnswerDDModel questionAnswerDDModel6;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  @override
  void initState(BuildContext context) {
    questionAnswerDDModel1 =
        createModel(context, () => QuestionAnswerDDModel());
    questionAnswerDDModel2 =
        createModel(context, () => QuestionAnswerDDModel());
    questionAnswerDDModel3 =
        createModel(context, () => QuestionAnswerDDModel());
    questionAnswerDDModel4 =
        createModel(context, () => QuestionAnswerDDModel());
    questionAnswerDDModel5 =
        createModel(context, () => QuestionAnswerDDModel());
    questionAnswerDDModel6 =
        createModel(context, () => QuestionAnswerDDModel());
  }

  @override
  void dispose() {
    questionAnswerDDModel1.dispose();
    questionAnswerDDModel2.dispose();
    questionAnswerDDModel3.dispose();
    questionAnswerDDModel4.dispose();
    questionAnswerDDModel5.dispose();
    questionAnswerDDModel6.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
  }
}
