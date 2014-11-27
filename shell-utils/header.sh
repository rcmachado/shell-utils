#
# Header functions
#

print_separator()
{
    local size=$1
    local char=$2
    if [ -z $size ]
    then
        size=72
    fi
    local sequence=`seq 1 $size`
    for i in $sequence
    do
        printf "$char"
    done

    printf "\n"
}

print_header()
{
    local message=$1
    local n=${#message}
    local sequence=`seq 1 $n`

    printf "${message}\n"
    print_separator $n '='

    printf "\n"
}
