// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library s8_filter.main;

import 'package:angular/angular.dart';

import 'package:s8_filter/pirate_module.dart';

void main() {
  ngBootstrap(module: new PirateModule());
}
