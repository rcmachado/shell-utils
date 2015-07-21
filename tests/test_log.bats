#!/usr/bin/env bats

SHELL_UTILS_DIR="$PWD/shell-utils"
. "$SHELL_UTILS_DIR/all.sh"

# We mock print_color to avoid dealing with color codes
print_color()
{
    printf "$1-$2"
}

@test "log_debug should print logged message with correct level and color" {
    run log_debug "test debug message"
    [ "$output" == "OFF-[DEBUG] test debug message" ]
}

@test "log_info should print logged message with correct level and color" {
    run log_info "test info message"
    [ "$output" == "BLUE-[INFO] test info message" ]
}

@test "log_warning should print logged message with correct level and color" {
    run log_warn "test warning message"
    [ "$output" == "YELLOW-[WARNING] test warning message" ]
}

@test "log_error should print logged message with correct level and color" {
    run log_error "test error message"
    [ "$output" == "RED-[ERROR] test error message" ]
}
