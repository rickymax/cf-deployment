#!/bin/bash

test_addons_ops() {
  # Padded for pretty output
  suite_name="ADDONS      "

  pushd ${home} > /dev/null
    pushd operations/addons > /dev/null
      check_interpolation "enable-component-syslog.yml" "-l example-vars-files/vars-enable-component-syslog.yml"
    popd > /dev/null # operations/addons
  popd > /dev/null
  exit $exit_code
}
