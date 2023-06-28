# f.sh - Functions related to the tool itself.
# Author:
#   Khasan Shadiyarov, khasan.shadiyarov@gmail.com

####
# usage - Print usage instructions for the tool.
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
Usage: f [-h | --help]
         [COMMAND] [OPTION]...
Enhance some terminal operations by combining them with searching tools.

Sets:
    Git
    Shell
Commands:
Git:
    gb  Find in git branches
    gc  Find in git commits
    gs  Find in git status
    gt  Find in git tags
Shell:
    cd  Find and change directory
    ls  Find in list
    md  Find and make directory
    op  Find and open
    rm  Find and remove
    tc  Find and touch
To see more detailed help on a certain command, run: f [COMMAND] [-h | --help]

Version: v0.0.1
Author:
    Khasan Shadiyarov, khasan.shadiyarov@gmail.com
EOF
    exit 0
}