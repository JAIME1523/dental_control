import 'package:fluro/fluro.dart';

import '../view/view.dart';


class NoPageFondHandlers {
  static Handler noPageFond = Handler(handlerFunc: ((context, parameters) {
    return const NotPageFondView();
  }));
}
