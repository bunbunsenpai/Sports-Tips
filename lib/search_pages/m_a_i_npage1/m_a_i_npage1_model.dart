import '/components/n_ew_c_omponent_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'm_a_i_npage1_widget.dart' show MAINpage1Widget;
import 'package:flutter/material.dart';

class MAINpage1Model extends FlutterFlowModel<MAINpage1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for NEwCOmponent component.
  late NEwCOmponentModel nEwCOmponentModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    nEwCOmponentModel = createModel(context, () => NEwCOmponentModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    nEwCOmponentModel.dispose();
    navBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
