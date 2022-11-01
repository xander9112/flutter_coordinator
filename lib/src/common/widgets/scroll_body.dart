import 'package:flutter/material.dart';

class ScrollBody extends StatelessWidget {
  const ScrollBody({
    Key? key,
    this.child,
    this.padding,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  }) : super(key: key);

  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: padding,
          keyboardDismissBehavior: keyboardDismissBehavior,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.minHeight,
            ),
            child: child,
          ),
        );
      },
    );
  }
}
