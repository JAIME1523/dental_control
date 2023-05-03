import 'package:dental_control/layout/auth/widgets/background_twitter.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;

  const AuthLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ScrollController scrollController =
        ScrollController(keepScrollOffset: true, initialScrollOffset: 0);
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFFE0DCDC),
          body: SizedBox(
            width: size.width,
            height: size.height,
            child: Scrollbar(
              controller: scrollController,
              thumbVisibility: true,
              child: ListView(
                controller: scrollController,
                physics: const ClampingScrollPhysics(),
                children: [
                  //desktop
                  size.width >= 900
                      ? _DesktopBody(child: child)
                      :

                      // mobile
                      _MobikeBody(child: child),

                  //linksBar
                ],
              ),
            ),
          )),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      // color: Colors.red,
      child: Stack(
        children: [
          Row(
            children: [
              //twitter background
              const Expanded(child: BackgorundCustom()),

              //ViewContainer
              Container(
                  color: Colors.white,
                  width: 600,
                  height: double.infinity,
                  // color: CustomColors.backgrunColor,
                  child: Column(children: [
                    Expanded(child: child),
                  ])

                  // child: //vista,

                  )
            ],
          ),
        ],
      ),
    );
  }
}

class _MobikeBody extends StatelessWidget {
  const _MobikeBody({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      // color: CustomColors.backgrunColor,
      // height: size.height * 0.90,

      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: double.infinity,
              height: size.width >= 800
                  ? 500
                  : size.width > 500
                      ? 360
                      : size.width > 300
                          ? 290
                          : 200,
              child: const BackgorundCustom()),
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 420,
            child: child,
          ),
        ],
      ),
    );
  }
}
