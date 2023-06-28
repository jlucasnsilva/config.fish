function E
    set prefix $argv[1]
    if test -z $prefix
        echo "error: invalid prefix"
        return
    end

    set project (ls $WORKSPACE | grep -E "^"$prefix | tac | tail -n 1)
    if test -z $project
        echo "error: project not found for this prefix"
        return
    end

    cd $WORKSPACE/$project
    nvim .
end
