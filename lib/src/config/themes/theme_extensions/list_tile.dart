import 'package:flutter/material.dart';

class ListTileExtension extends ThemeExtension<ListTileExtension> {
  ListTileExtension({
    required this.contentPadding,
    required this.shape,
    required this.tileColor,
    required this.selectedTileColor,
    required this.titleColor,
    required this.secondLineColor,
    required this.descriptionColor,
    required this.iconColor,
    this.borderRadius,
  });

  final EdgeInsetsGeometry contentPadding;
  final ShapeBorder shape;
  final Color tileColor;
  final Color selectedTileColor;
  final Color titleColor;
  final Color secondLineColor;
  final Color descriptionColor;
  final Color iconColor;
  final BorderRadius? borderRadius;

  @override
  ThemeExtension<ListTileExtension> copyWith({
    EdgeInsetsGeometry? contentPadding,
    ShapeBorder? shape,
    Color? tileColor,
    Color? selectedTileColor,
    Color? titleColor,
    Color? secondLineColor,
    Color? descriptionColor,
    Color? iconColor,
    BorderRadius? borderRadius,
  }) {
    return ListTileExtension(
      contentPadding: contentPadding ?? this.contentPadding,
      shape: shape ?? this.shape,
      tileColor: tileColor ?? this.tileColor,
      selectedTileColor: selectedTileColor ?? this.selectedTileColor,
      titleColor: titleColor ?? this.titleColor,
      secondLineColor: secondLineColor ?? this.secondLineColor,
      descriptionColor: descriptionColor ?? this.descriptionColor,
      iconColor: iconColor ?? this.iconColor,
      borderRadius: borderRadius ?? borderRadius,
    );
  }

  @override
  ThemeExtension<ListTileExtension> lerp(
      ThemeExtension<ListTileExtension>? other, double t) {
    if (other is! ListTileExtension) {
      return this;
    }

    return ListTileExtension(
      contentPadding: contentPadding,
      shape: shape,
      tileColor: tileColor,
      selectedTileColor: selectedTileColor,
      titleColor: titleColor,
      secondLineColor: secondLineColor,
      descriptionColor: descriptionColor,
      iconColor: iconColor,
      borderRadius: borderRadius,
    );
  }
}
