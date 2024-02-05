import 'package:flutter_screenutil/flutter_screenutil.dart';

extension DimensionsExtension on num {
  double get height {
    return this.h;
  }

  double get width {
    return this.w;
  }
}
