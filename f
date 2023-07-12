#!/bin/bash
# f - Script executable, used to handle commands and run the script.
# Author:
#   Khasan Shadiyarov, khasan.shadiyarov@gmail.com

# Define absolute path of the tool
SCRIPT_DIR=$(cd "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)

# Source libraries
source "$SCRIPT_DIR/libs/err.sh"

####
# usage - Print usage instructions for the tool.
# Globals:
#   SCRIPT_DIR
# Arguments:
#   None
# Outputs:
#   Write usage instructions to STDOUT.
# Returns:
#   Exit status code: 0.
####
function usage() {
    cat <<EOF
Usage: f [-h | --help] [-v | --version]
         [COMMAND] [OPTION]...
Enhance some terminal operations by combining them with searching tools.

Commands:
EOF
    # Print commands of the installed sets
    cat "$SCRIPT_DIR"/sets/*/manifest.txt 2>/dev/null
    cat <<EOF
To see more detailed help on a certain command, run: f [COMMAND] [-h | --help]
EOF
    return 0 # Usage is printed
}

####
# version - Print information about the tool.
# Globals:
#   None
# Arguments:
#   None
# Outputs:
#   Write version and additional information to STDOUT.
# Returns:
#   Exit status code: 0.
####
function version() {
    cat <<EOF
f-all version v0.0.1
License:
    UNLINCENSED
Author:
    Khasan Shadiyarov, khasan.shadiyarov@gmail.com
EOF
    return 0 # Version is printed
}

####
# main - Command execution handling.
# Globals:
#   SCRIPT_DIR
# Arguments:
#   $1 - Tool option or command to be executed
#   $2 - Command option or parameter
#   $@ - Command paramters
# Outputs:
#   Potential output to STDOUT or STDERR depending on the executed command.
# Returns:
#   Exit status code: 0 on success, non-zero on error.
####
function main() {
    case "$1" in
        -h | --help | "") # Tool usage
            seval usage
            ;;
        -v | --version) # Tool version
            seval version
            ;;
        *) # Handle commands
            local command="$(find "$SCRIPT_DIR/sets" -type f -name "$1.sh")"
            if [ ! -z "$command" -a "$command" != " " ]; then # Command exists
                source "$command"
                case "$2" in
                    -h | --help) # Command usage
                        seval usage
                        ;;
                    *) # Run command
                        shift
                        seval run "$@"
                esac
            else # Command not found
                err "$1: Command not found"
                return 1 # Command not found
            fi
    esac
}

# Run the script with the input paramters
seval main "$@"