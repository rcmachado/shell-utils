#
# Log functions
#

. $SHELL_UTILS_DIR/colors.sh

_is_tty()
{
    echo ""
}

_esc_seq()
{
    echo ""
}

_get_color_for_level()
{
    local level=$1

    case $level in
        INFO) echo $COLOR_BLUE ;;
        WARNING) echo $COLOR_YELLOW ;;
        ERROR) echo $COLOR_RED;;
    esac
}

_log_msg()
{
    local level=$1
    local message="$2"
    local color=$(_get_color_for_level $level)

    printf "\033[${color}m[${level}] ${message}\033[0m\n"
}

log_debug()
{
    _log_msg "DEBUG" "$1"
}

log_info()
{
    _log_msg "INFO" "$1"
}

log_warn()
{
    _log_msg "WARNING" "$1"
}

log_error()
{
    _log_msg "ERROR" "$1"
}
