import 'package:dental_control/provider/provider.dart';
import 'package:flutter/material.dart';
import 'widget/notification_indicator.dart';


class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: 50,
      decoration: buildBoxDecoration(),
      child: Row(
          // crossAxisAlignment: Cor,
          children: [
            //Todo: Icono de la hamburgesa,
            if (size.width <= 700)
              IconButton(
                  onPressed: () {
                   
                    SideMenuProvider.openMenu();
                  }, icon: const Icon(Icons.menu_outlined)),
            const SizedBox(
              width: 20,
            ),
            //SEArch input
            if (size.width > 391)
         
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 200),
                // child: const SearchText(),
              ),
            const Spacer(),
            const NotificationINdicator(),
            const SizedBox(
              width: 10,
            ),

            // const NavbarAvatar(),
            const SizedBox(
              width: 10,
            ),
          ]),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]);
  }
}
