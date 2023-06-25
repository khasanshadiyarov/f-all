source_dir() {
    local dir_src=$1
    for file in "$dir_src"/*.sh; do
        if [ -f "$file" ]; then
            source "$file"
        fi
    done
}