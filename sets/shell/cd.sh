# cd.sh - Find and change directory.
# Author:
#   Khasan Shadiyarov, khasan.shadiyarov@gmail.com

####
# run - Search for a directory by its rough name and navigate to it.
# Globals:
#   None
# Arguments:
#   $1 - Rough name of the directory to be navigated
# Outputs:
#   Writes error message to STDERR
# Returns:
#   Exit status code: 0
####
function run() {
    local dirs="$(find . -type d -name "*$1*")"
    if [ -z "$dirs" ]; then
        err "$1: No directory found"
        return 0
    else
        local count=$(echo "$dirs" | wc -l)
    fi
    if [ "$count" -eq 1 ]; then
        cd "$dirs"
    else
        local selected=$(echo "$dirs" | fzf)
        if [ -n "$selected" ]; then
            cd "$selected"
        fi
    fi
}

####
# usage - Print usage instructions for the command.
# Globals:
#   None
# Arguments:
#   None
# Outputs:
#   Writes usage instructions to STDOUT.
# Returns:
#   Exit status code: 0
####
function usage() {
    cat <<EOF
Usage: f cd [DIR]
Search for a directory by its rough name and navigate to it.

Arguments:
    [DIR]
        Optional rough or exact name of a directory. Searched as *DIR*.

Set: Shell
EOF
    return 0
}