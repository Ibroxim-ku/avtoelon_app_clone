import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginNotifier = ChangeNotifierProvider((ref) => LoginNotifier());

class LoginNotifier with ChangeNotifier {
  TextEditingController controller = TextEditingController();
  FocusNode textFocusNode = FocusNode(); // Added FocusNode

  bool clickButtonEnabled = false;
  bool isRegister = false;

  LoginNotifier() {
    initState();
  }

  void initState() {
    init();
  }

  void init() {
    controller.addListener(() {
      final isButtonEnabled =
          controller.text.isNotEmpty && controller.text.length > 4;
      if (clickButtonEnabled != isButtonEnabled) {
        clickButtonEnabled = isButtonEnabled;
        notifyListeners();

        // Request focus back to the TextField if it loses focus
        // after state change. This ensures the keyboard remains visible.
        if (!textFocusNode.hasFocus) {
          textFocusNode.requestFocus();
        }
      }
    });
    controller.text = "+998";
  }

  @override
  void dispose() {
    controller.dispose();
    textFocusNode.dispose(); // Dispose the FocusNode
    super.dispose();
  }
}
