
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class stack_svg extends StatelessWidget {

  const stack_svg({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(child: SvgPicture.asset("assets/icons/row.svg")),
            Positioned(
              bottom: 14,
              left: 134,
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/solid.svg"),
                ],
              ),
            ),
            Positioned(
              bottom: 14,
              left: 254,
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/solid.svg"),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
