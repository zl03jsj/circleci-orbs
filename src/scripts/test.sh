#!/bin/bash
mkdir -p /tmp/test-reports/"$SUITE"
mkdir -p /tmp/test-artifacts
gotestsum \
  --format "$TEST_FMT" \
  --junitfile /tmp/test-reports/"$SUITE"/junit.xml \
  --jsonfile /tmp/test-artifacts/"$SUITE".json \
  -- \
  "$TEST_COVERAGE" \
  "$TEST_FLAGS" \
  "$TARGET"
