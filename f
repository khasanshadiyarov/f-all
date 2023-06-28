#!/bin/bash
# f - Script executable, used to handle arguments and run the script.
# Author:
#   Khasan Shadiyarov, khasan.shadiyarov@gmail.com

# Source libraries
source ./libs/err.sh

####
# main - Handle command execution based input arguments.
# Globals:
#   None
# Arguments:
#   $1 - Command to be executed
#   $2 - Optional arguments for command-specific usage
# Outputs:
#   Potential output to STDOUT or STDERR depending on the executed command.
# Returns:
#   Exit status code: 0 on success, non-zero on error.
####
function main() {
    case "$1" in
        -h | --help | "")
            source ./f.sh
            usage
            ;;
        *) # Handle commands
            local command="$(find ./sets -type f -name "$1".sh)"
            if [ ! -z "$command" -a "$command" != " " ]; then
                source "$command"
                case "$2" in
                    -h | --help)
                        seval usage
                        ;;
                    *)
                        shift
                        seval run $@
                esac
            else
                err "$1: Command not found"
                exit 1
            fi
    esac
}

# Run the script with input arguments
seval main $@