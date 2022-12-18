import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    )
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        .pOnly(right: 16)
        .pOnly(left: 16)
        .wPCT(context:context,widthPCT: context.isMobile?40:20);
  }
}
