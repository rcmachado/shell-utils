#
# Example file for log functions
#

SHELL_UTILS_DIR="$(dirname $0)/shell-utils"
. "${SHELL_UTILS_DIR}/all.sh"

print_header "Log messages"
log_debug "This is a debug message"
log_info "This is an info message"
log_warn "This is a warning message"
log_error "This is an error message"

printf "\n"

print_header "Custom separator with 72 chars"
print_separator 72 '-'
