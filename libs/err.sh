# err.sh - Library to handle error-specific functions.
# Author:
#   Khasan Shadiyarov, khasan.shadiyarov@gmail.com

####
# err - Print error with date and make it go to STDERR.
# Globals:
#   None
# Arguments:
#   $* - Error message and other error-related arguments
# Outputs:
#   Write error message to STDERR.
# Returns:
#   Exit status code: 0.
####
function err() {
    echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

####
# seval - Execute function using eval in a safe way to handle errors.
# Globals:
#   None
# Arguments:
#   $1 - Function name to be executed
#   $@ - Arguments to pass to the executed function
# Outputs:
#   Potential output to STDOUT or STDERR based on the function execution or existence.
# Returns:
#   Exit status code: 0 on success, non-zero on error.
####
function seval() {
    local command="$1"
    shift
    if type "$command" >/dev/null 2>&1; then # Command exists
        eval "$command" "$@"
    else
        err "$command: Command not found"
        return 1 # Command not found
    fi
}