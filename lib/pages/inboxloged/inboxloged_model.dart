import '/components/messages_item/messages_item_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'inboxloged_widget.dart' show InboxlogedWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InboxlogedModel extends FlutterFlowModel<InboxlogedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for MessagesItem component.
  late MessagesItemModel messagesItemModel1;
  // Model for MessagesItem component.
  late MessagesItemModel messagesItemModel2;
  // Model for MessagesItem component.
  late MessagesItemModel messagesItemModel3;
  // Model for MessagesItem component.
  late MessagesItemModel messagesItemModel4;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    messagesItemModel1 = createModel(context, () => MessagesItemModel());
    messagesItemModel2 = createModel(context, () => MessagesItemModel());
    messagesItemModel3 = createModel(context, () => MessagesItemModel());
    messagesItemModel4 = createModel(context, () => MessagesItemModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    messagesItemModel1.dispose();
    messagesItemModel2.dispose();
    messagesItemModel3.dispose();
    messagesItemModel4.dispose();
    navBarModel.dispose();
  }
}
