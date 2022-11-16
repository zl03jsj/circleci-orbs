#!/bin/bash
mkdir -p /tmp/test-reports/"$SUITE"
mkdir -p /tmp/test-artifacts
set -x
gotestsum \
  --format "$TEST_FMT" \
  --junitfile /tmp/test-reports/"$SUITE"/junit.xml \
  --jsonfile /tmp/test-artifacts/"$SUITE".json \
  -- "$TEST_FLAGS" \
  "$TEST_COVERAGE_FILE" \
  "$TEST_COVERAGE_PKG" \
  "$TARGET"
set +x
