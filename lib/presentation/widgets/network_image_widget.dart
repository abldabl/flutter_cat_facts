import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/presentation/widgets/custom_progress_indicator.dart';
import 'package:flutter_cat_facts/presentation/widgets/error_icon_widget.dart';

class NetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  final double borderRadius;

  const NetworkImageWidget({
    super.key,
    required this.imageUrl,
    this.borderRadius = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      loadingBuilder: (_, child, loadingProgress) {
        if (loadingProgress == null) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: child,
          );
        }
        return CustomProgressIndicator(
          value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
              : null,
        );
      },
      errorBuilder: (context, error, stackTrace) => const CustomErrorWidget(),
    );
  }
}
