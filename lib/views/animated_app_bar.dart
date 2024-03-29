import 'package:flutter/cupertino.dart';

import '../service/constants/constants.dart';
import '../pages/library.dart';
import 'widgets.dart';

class AnimetedAppBarWidget extends StatelessWidget {
  const AnimetedAppBarWidget({
    super.key,
    required Animation<double> animationScale,
    required AnimationController controllerScale,
  })  : _animationScale = animationScale,
        _controllerScale = controllerScale;

  final Animation<double> _animationScale;
  final AnimationController _controllerScale;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationScale,
      builder: (context, child) {
        return Transform.scale(
          scale: _controllerScale.value,
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconImageButton(
                        assetImage: CustomIcons.location,
                        onPressed: () {},
                      ),
                      Text(
                        Strings.porto,
                        style: textStyleForRobotoW400(
                            color: CustomColors.white, fontSize: 14),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 5),
                    child: IconImageButton(
                      assetImage: CustomIcons.cartKorzinka,
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => const ShopPage(),
                          ),
                        );
                      },
                      iconSize: 38,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
