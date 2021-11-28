function add_path
    for p in $argv
        contains $p $PATH
        or set -x PATH $PATH $p
    end
end
