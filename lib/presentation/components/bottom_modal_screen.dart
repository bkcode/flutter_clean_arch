import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/routes/modal_draggable_sheet.dart';

@RoutePage()
class BottomModalScreen extends StatelessWidget
    with DraggableScrollControllerMixin {
  const BottomModalScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
