#!/usr/bin/env bash

source "./cecho.sh"

describe() {
  echo ""
  cecho --bright-yellow "===" --bold-bright-yellow "${1}" --bright-yellow "==="
}

run_test() {
  echo ""
  cecho --bright-green "▸" --bright-cyan "${1}"
  cecho --white "${2}"
  eval "${2}"
}

describe "basic usage"

run_test "can make a string with various colors" \
  'cecho --green "Green" --red "Red" --yellow "Yellow" --cyan "Cyan" --white "White"'

run_test "realistic example" \
  'cecho --bold-bright-yellow "Checking capacitor" --bold-yellow "(type=flux):" --bright-green "OK"'

run_test "without a newline" \
  'cecho -n "No newline at the" --bold-red "end" --reset "of this line"'
echo "this should be on the same line"

run_test "empty argument list results in a newline by itself" \
  'cecho'

describe "variations"

for color in "cyan" "green" "red" "white" "yellow" "blue" "magenta"; do
  run_test "${color}" \
    "cecho --bold-bright-${color} bold-bright-${color} --bold-${color} bold-${color} --bright-${color} bright-${color} --${color} ${color}"
done


describe "resetting"

run_test "with reset in the middle" \
  'cecho --bold-cyan "Bold Cyan" --reset "Reset" --bright-red "Bright Red"'

run_test "always resets at the end" \
  'cecho --bold-red "Bold red"'
echo "This should not be colorized"


