#!/usr/bin/env bats

load test_helper

@test "\`airport version\` returns with 0 status." {
  run "${_AIRPORT}" --version
  [[ "${status}" -eq 0 ]]
}

@test "\`airport version\` prints a version number." {
  run "${_AIRPORT}" --version
  printf "'%s'" "${output}"
  echo "${output}" | grep -q '\d\+\.\d\+\.\d\+'
}

@test "\`airport --version\` returns with 0 status." {
  run "${_AIRPORT}" --version
  [[ "${status}" -eq 0 ]]
}

@test "\`airport --version\` prints a version number." {
  run "${_AIRPORT}" --version
  printf "'%s'" "${output}"
  echo "${output}" | grep -q '\d\+\.\d\+\.\d\+'
}

