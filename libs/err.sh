# err.sh - Library of error-specific functions.
# Author:
#   Khasan Shadiyarov, khasan.shadiyarov@gmail.com

####
# err - Print a formatted error message.
# Globals:
#   None
# Arguments:
#   $* - Error message and other error-related paramters
# Outputs:
#   Write error message to STDERR.
# Returns:
#   Exit status code: 0, non-zero depending on the post-error code.
####
function err() {
    echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

####
# seval - Execute a function using eval.
# Globals:
#   None
# Arguments:
#   $1 - Function name to be executed
#   $@ - Paramters to pass to the executed function
# Outputs:
#   Potential output to STDOUT or STDERR based on the function execution or existence.
# Returns:
#   Exit status code: 0 on success, non-zero on error.
####
function seval() {
    local command="$1"
    shift
    if type "$command" >/dev/null 2>&1; then # Command found
        eval "$command" "$@"
    else # Command not found
        err "$command: Command not found"
        return 1 # Command not found
    fi
}