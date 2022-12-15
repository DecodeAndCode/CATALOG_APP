import 'package:day1/Widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          MyTheme.darkBulishColor,
                        ),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Add to cart".text.xl.make())
                .wh(120, 45)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(
                catalog.image,
              ).w64(context),
            ).p32(),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.lg
                        .color(MyTheme.darkBulishColor)
                        .bold
                        .xl4
                        .make(),
                    catalog.desc.text
                        .textStyle(context.captionStyle)
                        .xl2
                        .make(),
                    15.heightBox,
                    "Elitr sanctus no vero est lorem sed elitr justo. Eirmod eirmod et ut sed sed clita, sea et sed eirmod dolore ipsum clita duo et at. Stet at no magna."
                        .text
                        .textStyle(context.captionStyle)
                        .make().p16()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
