#!/bin/bash
function findDiff(){
    local -n a=$1

    if ! cmp .bashrc ~/.bashrc &> /dev/null; then
        a+=("~/.bashrc .bashrc")
    fi

    for FILE in .config/*; do
        if ! diff $FILE ~/$FILE &> /dev/null; then
            a+=("~/$FILE .config/")
        fi
    done
}
