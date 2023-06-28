# cd.sh - Find and change directory.
# Author:
#   Khasan Shadiyarov, khasan.shadiyarov@gmail.com

####
# run - Search for a directory by its rough name and navigate to it.
# Globals:
#   
# Arguments:
#   
# Outputs:
#   
# Returns:
#   
####
function run() {
    # Cases: directory found, multiple directories, no directory found, directory is not choosed in fzf
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
        Optional rough or exact name of a directory. Searched as *DIR* and needed to speed up the search process.
Set: Shell
Author:
    Khasan Shadiyarov, khasan.shadiyarov@gmail.com
EOF
    exit 0
}