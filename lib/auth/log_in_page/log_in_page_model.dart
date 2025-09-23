import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'log_in_page_widget.dart' show LogInPageWidget;
import 'package:flutter/material.dart';

class LogInPageModel extends FlutterFlowModel<LogInPageWidget> {
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
