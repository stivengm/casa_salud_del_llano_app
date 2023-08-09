import 'package:casa_salud_del_llano_app/gui/views/admin/register_view.dart';
import 'package:flutter/material.dart';

import 'package:casa_salud_del_llano_app/gui/views/admin/login_view.dart';
import 'package:casa_salud_del_llano_app/gui/views/dashboard_view.dart';

Map<String, WidgetBuilder> routesApp() => <String, WidgetBuilder> {

  'dashboard': ( _ ) => const DashboardView(),
  'login': ( _ ) => const LoginView(),
  'register': ( _ ) => const RegisterView(),

};