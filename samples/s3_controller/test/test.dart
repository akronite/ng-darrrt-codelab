// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library s3_controller.test;

import 'package:unittest/unittest.dart';
import 'package:di/di.dart';
import 'package:angular/angular.dart';
import 'package:angular/mock/module.dart';
import 'package:s3_controller/pirate_module.dart' show PirateModule;
import 'package:s3_controller/badge_controller.dart' show BadgeController;

main() {
  setUp(setUpInjector);
  tearDown(tearDownInjector);

  group('pirate badge', () {
    BadgeController ctrl;

    setUp(module((Module m) {
      m.install(new PirateModule());
      inject((BadgeController _ctrl) => ctrl = _ctrl);
    }));

    test('should load recipes', () {
      expect(ctrl.inputIsNotEmpty, isFalse);
      expect(ctrl.label, 'Aye! Gimme a name!');
    });

    test('should generate name', () {
      expect(ctrl.name, isEmpty);
      ctrl.generateName();
      expect(ctrl.name, BadgeController.DEFAULT_NAME);
    });
  });
}
