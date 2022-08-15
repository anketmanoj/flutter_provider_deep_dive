import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_provider_deep_dive/models/BreadCrubModel.dart';
import 'package:provider/provider.dart';

class BreadCrumbProvider extends ChangeNotifier {
  final List<BreadCrumb> _items = [];
  UnmodifiableListView<BreadCrumb> get items => UnmodifiableListView(_items);

  void add(BreadCrumb breadCrumb) {
    for (final item in _items) {
      item.activate();
    }
    _items.add(breadCrumb);
    notifyListeners();
  }

  void removeAllBreadCrumbs() {
    _items.clear();
    notifyListeners();
  }
}
