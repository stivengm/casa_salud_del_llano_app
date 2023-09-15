import 'package:flutter/material.dart';

import 'package:casa_salud_del_llano_app/gui/views/admin/register_view.dart';
import 'package:casa_salud_del_llano_app/gui/views/stores_view/new_store_view.dart';
import 'package:casa_salud_del_llano_app/gui/views/stores_view/stores_view.dart';
import 'package:casa_salud_del_llano_app/gui/views/admin/login_view.dart';
import 'package:casa_salud_del_llano_app/gui/views/dashboard/dashboard_view.dart';
import 'package:casa_salud_del_llano_app/gui/views/stores_view/info_store_view.dart';
import 'package:casa_salud_del_llano_app/gui/views/products_view/products_view.dart';

Map<String, WidgetBuilder> routesApp() => <String, WidgetBuilder> {

  'dashboard': ( _ ) => const DashboardView(),
  'login': ( _ ) => const LoginView(),
  'register': ( _ ) => const RegisterView(),
  'stores': ( _ ) => const StoresView(),
  'newStore': ( _ ) => const NewStoreView(),
  'infoStore': ( _ ) => const InfoStoreView(),
  'products': ( _ ) => const ProductsView(),

};