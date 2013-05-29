// Copyright (c) 2013, scribeGriff (Richard Griffith)
// https://github.com/scribeGriff/simplot
// All rights reserved.  Please see the LICENSE.md file.

library dumprendertree;

/**
 * DumpRenderTree process for headless testing.
 *
 */

import 'dart:io';

void main() {
  Process.run('DumpRenderTree', ['simplot_tests.html']).then((ProcessResult results) {
    print(results.stdout);
    if (results.exitCode == 0) {
      print('All tests completed successfully.');
    } else {
      print('Some of the tests have failed.');
    }
  });
}