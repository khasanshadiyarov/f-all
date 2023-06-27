sets_path=./sets
command_call=$1

commands=("$sets_path"/*/*.sh)
commands=(${commands[@]##*/})
commands=(${commands[@]%.sh})

source ./config/utils.sh

source ./sets/shell.sh
source ./sets/git.sh

for command in ${commands[@]}; do
    case $command in
        $command_call)
            case $2 in
                -h | --help)
                    eval "$command"_usage
                    ;;
                *)
                    eval "$command"
            esac
    esac
done