#
# Color reference
#

COLOR_OFF="0;00"
COLOR_BLACK="0;30"
COLOR_BLUE="0;34"
COLOR_GREEN="0;32"
COLOR_CYAN="0;36"
COLOR_RED="0;31"
COLOR_PURPLE="0;35"
COLOR_BROWN="0;33"
COLOR_LIGHT_GRAY="0;37"
COLOR_DARK_GRAY="1;30"
COLOR_LIGHT_BLUE="1;34"
COLOR_LIGHT_GREEN="1;32"
COLOR_LIGHT_CYAN="1;36"
COLOR_LIGHT_RED="1;31"
COLOR_LIGHT_PURPLE="1;35"
COLOR_YELLOW="1;33"
COLOR_WHITE="1;37"


print_color()
{
    local name=`printf $1 | tr '[:lower:]' '[:upper:]' | tr '[:space:]' _`
    local message=$2
    # FIXME: yes, this is ugly :)
    local color=`eval 'echo $COLOR_'${name}`

    printf "\033[${color}m${message}\033[0m\n"
}
