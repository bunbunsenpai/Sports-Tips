import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'singup_page_widget.dart' show SingupPageWidget;
import 'package:flutter/material.dart';

class SingupPageModel extends FlutterFlowModel<SingupPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for INDIA widget.
  final indiaKey = GlobalKey();
  FocusNode? indiaFocusNode;
  TextEditingController? indiaTextController;
  String? indiaSelectedOption;
  String? Function(BuildContext, String?)? indiaTextControllerValidator;
  // State field(s) for MobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    indiaFocusNode?.dispose();

    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();
  }
}
