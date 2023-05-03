import 'package:dental_control/provider/provider.dart';
import 'package:dental_control/router/router.dart';
import 'package:dental_control/view/dashboardview/medicine_view.dart';
import 'package:dental_control/view/dashboardview/spent_view.dart';
import 'package:dental_control/view/view.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

class DashboardHandlers {
  static Handler home = Handler(handlerFunc: ((context, parameters) {
      Provider.of<SideMenuProvider>(context!, listen: false)
        .setCurrentPageUrl(Flurorouter.homeRoute);
    return  const DashboardView();
  }));
  static Handler citas = Handler(handlerFunc: ((context, parameters) {
     Provider.of<SideMenuProvider>(context!, listen: false)
        .setCurrentPageUrl(Flurorouter.citasRoute);
    return  const CitasView();
  }));

  static Handler patients = Handler(handlerFunc: ((context, parameters) {
     Provider.of<SideMenuProvider>(context!, listen: false)
        .setCurrentPageUrl(Flurorouter.patientsRoute);
    return  const PatientesView();
  }));

  static Handler treatment = Handler(handlerFunc: ((context, parameters) {
     Provider.of<SideMenuProvider>(context!, listen: false)
        .setCurrentPageUrl(Flurorouter.treatmentRoute);
    return  const TreatmentView();
  }));

  static Handler spent = Handler(handlerFunc: ((context, parameters) {
     Provider.of<SideMenuProvider>(context!, listen: false)
        .setCurrentPageUrl(Flurorouter.spentRoute);
    return  const SpentView();
  }));


 static Handler medicine = Handler(handlerFunc: ((context, parameters) {
   Provider.of<SideMenuProvider>(context!, listen: false)
        .setCurrentPageUrl(Flurorouter.medicineRoute);
    return  const MedicineView();
  }));

  
}
