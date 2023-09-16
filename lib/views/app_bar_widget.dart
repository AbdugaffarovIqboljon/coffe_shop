import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../pages/pages.dart';
import 'widgets.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CustomColors.white,
      elevation: 0.2,
      child: SafeArea(
        child: SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
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
                          color: Colors.black, fontSize: 14),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => const ShopPage(),
                      ),
                    );
                  },
                  icon: const Image(
                    width: 50,
                    height: 50,
                    image: CustomIcons.cartKorzinka,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
