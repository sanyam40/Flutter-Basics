// All application routes are placed here
import 'package:flutter/cupertino.dart';
import 'package:shopping_app/screens/add_product.dart';
import 'package:firebaseapp/screens/login.dart';
import 'package:firebaseapp/screens/register.dart';
import 'package:firebaseapp/utils/constants.dart';

import 'package:firebaseapp/screens/login.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    RoutesConstants.LOGIN: (context) => const Login(),
    RoutesConstants.REGISTER: (context) => const Register(),
    RoutesConstants.ADD_PRODUCT: (context) => AddProduct(),
  };
}
