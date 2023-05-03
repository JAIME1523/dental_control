import 'package:dental_control/provider/provider.dart';
import 'package:dental_control/router/router.dart';
import 'package:dental_control/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widget/logo.dart';
import 'widget/menu_item.dart';
import 'widget/text_separator.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  void navigateTo(String routeName) {
    NavigationService.replaceTo(routeName);
    SideMenuProvider.closeMenu();
  }

  @override
  Widget build(BuildContext context) {
    final sideMenuProvider = Provider.of<SideMenuProvider>(context);
    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const Logo(),
          const SizedBox(
            height: 50,
          ),
                MyMenuItem(
              text: 'Home',
              icon: Icons.home,
              isActive: sideMenuProvider.currentPage == Flurorouter.homeRoute,
              onPressed: () {
                navigateTo(Flurorouter.homeRoute);
              }),
                 const SizedBox(
            height: 20,
          ),
          const TextSeparator(
            text: 'Pacientes',
          ),
          MyMenuItem(
              text: 'Citas',
              icon: Icons.emoji_people_outlined,
              isActive: sideMenuProvider.currentPage == Flurorouter.citasRoute,
              onPressed: () {
                navigateTo(Flurorouter.citasRoute);
              }),
          MyMenuItem(
            text: 'Pacientes',
            icon: Icons.people_alt_outlined,
              isActive: sideMenuProvider.currentPage == Flurorouter.patientsRoute,

            onPressed: () {
                navigateTo(Flurorouter.patientsRoute);

            },
          ),
          MyMenuItem(
            text: 'Tratamiento',
            icon: Icons.health_and_safety,
              isActive: sideMenuProvider.currentPage == Flurorouter.treatmentRoute,

            onPressed: () {
                navigateTo(Flurorouter.treatmentRoute);

            },
          ),
          const SizedBox(
            height: 30,
          ),
          const TextSeparator(
            text: 'Admin',
          ),
          MyMenuItem(
              text: 'Gastos',
              icon: Icons.money_off,
              isActive: sideMenuProvider.currentPage == Flurorouter.spentRoute,
              onPressed: () {
                navigateTo(Flurorouter.spentRoute);

              }),
          MyMenuItem(
            text: 'Medicamento',
            icon: Icons.medical_information,
              isActive: sideMenuProvider.currentPage == Flurorouter.medicineRoute,

            onPressed: () {
                navigateTo(Flurorouter.medicineRoute);

            },
          ),
          const SizedBox(
            height: 30,
          ),
          const TextSeparator(
            text: 'Exit',
          ),
          MyMenuItem(
            text: 'Logout',
            icon: Icons.exit_to_app_outlined,
            onPressed: () {
              // Provider.of<AuthPorvider>(context, listen: false).logout();
            },
          ),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xff092044),
          Color(0xff092035),
        ]),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)]);
  }
}
