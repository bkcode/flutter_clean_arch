import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'modal_draggable_sheet.dart';

class ModalBottomSheetAutoRoute extends CustomRoute {
  ModalBottomSheetAutoRoute({
    required super.page,
    super.path,
    super.usesPathAsKey,
    super.guards,
    super.fullMatch,
    super.meta,
    super.maintainState,
    super.fullscreenDialog,
    super.children,
    super.title,
    super.restorationId,
    super.keepHistory,
    super.initial,
    super.transitionsBuilder,
    super.durationInMilliseconds,
    super.reverseDurationInMilliseconds,
    super.opaque,
    super.barrierDismissible,
    super.barrierLabel,
    super.barrierColor,
    double? fixedSize,
    double initialSize = .5,
    double minSize = .25,
    double maxSize = .95,
    ShapeBorder? shape,
    bool? isScrollControlled,
    bool? enableDrag,
    bool? showDragHandle,
    Color? backgroundColor,
    bool? useSafeArea,
    String? barrierOnTapHint,
  }) : super(
          customRouteBuilder: routeBuilderFactory(
            initialChildSize: fixedSize ?? initialSize,
            maxChildSize: fixedSize ?? maxSize,
            minChildSize: fixedSize ?? minSize,
            barrierColor: barrierColor,
            barrierDismissible: barrierDismissible,
            backgroundColor: backgroundColor,
            barrierLabel: barrierLabel,
            shape: shape,
            isScrollControlled: isScrollControlled,
            enableDrag: enableDrag,
            showDragHandle: showDragHandle,
            useSafeArea: useSafeArea,
            barrierOnTapHint: barrierOnTapHint,
          ),
        );

  static CustomRouteBuilder routeBuilderFactory({
    required double initialChildSize,
    required double minChildSize,
    required double maxChildSize,
    required bool barrierDismissible,
    Color? backgroundColor,
    Color? barrierColor,
    ShapeBorder? shape,
    bool? enableDrag,
    bool? showDragHandle,
    bool? isScrollControlled,
    bool? useSafeArea,
    String? barrierLabel,
    String? barrierOnTapHint,
  }) {
    return <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
      return ModalBottomSheetRoute<T>(
        backgroundColor: backgroundColor,
        isDismissible: barrierDismissible,
        modalBarrierColor: barrierColor,
        shape: shape,
        isScrollControlled: isScrollControlled ?? true,
        enableDrag: enableDrag ?? true,
        showDragHandle: showDragHandle,
        barrierLabel: barrierLabel,
        settings: page,
        useSafeArea: useSafeArea ?? false,
        barrierOnTapHint: barrierOnTapHint,
        builder: (context) {
          return isScrollControlled ?? true
              ? ModalDraggableSheet(
                  initialChildSize: initialChildSize,
                  minChildSize: minChildSize,
                  maxChildSize: maxChildSize,
                  child: child,
                )
              : child;
        },
      );
    };
  }
}
