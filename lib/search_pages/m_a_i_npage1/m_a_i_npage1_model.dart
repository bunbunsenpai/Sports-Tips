import '/components/n_ew_c_omponent_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'm_a_i_npage1_widget.dart' show MAINpage1Widget;
import 'package:flutter/material.dart';

class MAINpage1Model extends FlutterFlowModel<MAINpage1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NEwCOmponent component.
  late NEwCOmponentModel nEwCOmponentModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    nEwCOmponentModel = createModel(context, () => NEwCOmponentModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    nEwCOmponentModel.dispose();
    navBarModel.dispose();
  }
}
