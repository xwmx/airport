#!/usr/bin/env bats

load test_helper

_HELP_HEADER="\
         _                       __
  ____ _(_)________  ____  _____/ /_
 / __ \`/ / ___/ __ \\/ __ \\/ ___/ __/
/ /_/ / / /  / /_/ / /_/ / /  / /_
\\__,_/_/_/  / .___/\\____/_/   \\__/
           /_/"
export _HELP_HEADER

@test "\`help\` with no arguments exits with status 0." {
  run "${_AIRPORT}" help
  [ "${status}" -eq 0 ]
}

@test "\`help\` with no arguments prints default help." {
  run "${_AIRPORT}" help
  _compare "${_HELP_HEADER}" "$(IFS=$'\n'; echo "${lines[*]:0:6}")"
  [[ $(IFS=$'\n'; echo "${lines[*]:0:6}") == "${_HELP_HEADER}" ]]
}

@test "\`airport -h\` prints default help." {
  run "${_AIRPORT}" -h
  [[ $(IFS=$'\n'; echo "${lines[*]:0:6}") == "${_HELP_HEADER}" ]]
}

@test "\`airport --help\` prints default help." {
  run "${_AIRPORT}" --help
  [[ $(IFS=$'\n'; echo "${lines[*]:0:6}") == "${_HELP_HEADER}" ]]
}
