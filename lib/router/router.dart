import 'package:dental_control/router/admin_handlers.dart';
import 'package:dental_control/router/dashboard_handlers.dart';
import 'package:dental_control/router/no_page_fond_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  //Auth dahboard
  static String homeRoute = '/home';
  static String citasRoute = '/citas';
  static String patientsRoute = '/pacientes';
  static String treatmentRoute = '/tratamiento';
  static String spentRoute = '/spent';
  static String medicineRoute = '/medicina';





  static void configureRoutes() {
        router.define(rootRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    //dahboard 
    router.define(homeRoute, handler: DashboardHandlers.home);
    router.define(citasRoute, handler: DashboardHandlers.citas);

    router.define(patientsRoute, handler: DashboardHandlers.patients);
    router.define(treatmentRoute, handler: DashboardHandlers.treatment);
    router.define(spentRoute, handler: DashboardHandlers.spent);
    router.define(medicineRoute, handler: DashboardHandlers.medicine);





    router.notFoundHandler = NoPageFondHandlers.noPageFond;
  }
}
