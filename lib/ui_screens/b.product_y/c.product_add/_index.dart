import 'package:flutter/material.dart';
import 'package:nostra_roadmap/dt_domains/_models/_index.dart';
import 'package:nostra_roadmap/dt_domains/a.product/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_add.data.dart';
part 'b.product_add.ctrl.dart';
part 'c.product_add.view.dart';
part 'widgets/a.product_add.appbar.dart';
part 'widgets/b.product_add.fab.dart';
part 'widgets/c.product_add.name.dart';
part 'widgets/d.product_add.price.dart';
part 'widgets/e.product_add.qty.dart';

ProductAddData get _dt => Data.productAdd.st;
ProductAddCtrl get _ct => Ctrl.productAdd;
ProductProv get _pv => Prov.product.st;
ProductServ get _sv => Serv.product;
