#
# Header functions
#

print_line()
{
    local size=$1
    if [ -z $size ]
    then
        size=72
    fi
    local sequence=`seq 1 $size`
    for i in $sequence
    do
        printf "="
    done

    printf "\n"
}

print_header()
{
    local message=$1
    local n=${#message}
    local sequence=`seq 1 $n`

    printf "${message}\n"
    print_line $n

    printf "\n"
}
