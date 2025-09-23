import '/components/n_ew_c_omponent_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'football_widget.dart' show FootballWidget;
import 'package:flutter/material.dart';

class FootballModel extends FlutterFlowModel<FootballWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NEwCOmponent component.
  late NEwCOmponentModel nEwCOmponentModel;
  // Model for NavBar component.
  late NavBarModel navBarModel1;
  // Model for NavBar component.
  late NavBarModel navBarModel2;

  @override
  void initState(BuildContext context) {
    nEwCOmponentModel = createModel(context, () => NEwCOmponentModel());
    navBarModel1 = createModel(context, () => NavBarModel());
    navBarModel2 = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    nEwCOmponentModel.dispose();
    navBarModel1.dispose();
    navBarModel2.dispose();
  }
}
