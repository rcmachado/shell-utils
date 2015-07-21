#!/usr/bin/env bats

SHELL_UTILS_DIR="$PWD/shell-utils"
. "$SHELL_UTILS_DIR/all.sh"

@test "print_separator should use 72 as default size" {
    run print_separator
    [ "$output" == '------------------------------------------------------------------------' ]
}

@test "print_separator should use '-' as default char" {
    run print_separator 5
    [ "$output" == '-----' ]
}

@test "print_separator should accept custom size and char" {
    run print_separator 5 'x'
    [ "$output" == 'xxxxx' ]
}

@test "print_header should print message with separator" {
    run print_header 'just a test'
    [ ${lines[0]} = "just a test" ]
    [ ${lines[1]} = "===========" ]
}
