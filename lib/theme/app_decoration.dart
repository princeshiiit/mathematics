import 'package:flutter/material.dart';
import 'package:vehicleapp/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get outline1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimary,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get outline => BoxDecoration(
        border: Border.all(
          color: appTheme.black90001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius circleBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40,
    ),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1,
    ),
  );

  static BorderRadius circleBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50,
    ),
  );
}

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
