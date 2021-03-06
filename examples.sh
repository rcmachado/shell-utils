#
# Example file for log functions
#

SHELL_UTILS_DIR="$(dirname $0)/shell-utils"
. "${SHELL_UTILS_DIR}/all.sh"

print_header "Colors"
print_color "black" "Black"
print_color "blue" "Blue"
print_color "green" "Green"
print_color "cyan" "Cyan"
print_color "red" "Red"
print_color "purple" "Purple"
print_color "brown" "Brown"
print_color "light gray" "Light gray"
print_color "dark gray" "Dark gray"
print_color "light blue" "Light blue"
print_color "light green" "Light green"
print_color "light cyan" "Light cyan"
print_color "light red" "Light red"
print_color "light purple" "Light purple"
print_color "yellow" "Yellow"
print_color "white" "White"

printf "\n"

print_header "Log messages"
log_debug "This is a debug message"
log_info "This is an info message"
log_warn "This is a warning message"
log_error "This is an error message"

printf "\n"

print_header "Custom separator with 72 chars"
print_separator 72 '-'
