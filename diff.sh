#!/bin/bash

function main(){
    differences=()
    
    function findDiff(){

        if ! cmp .bashrc ~/.bashrc &> /dev/null; then
            differences+=(".bashrc")
        fi

        for FILE in .config/*; do
            if ! diff $FILE ~/$FILE &> /dev/null; then
                differences+=("$FILE")
            fi
        done
        
    }


    function printDiff(){
        
        if [ ! "${#differences[@]}" -gt 0 ]; then
            echo "No differences found!"
            exit 0
        fi

        for diff in "${differences[@]}"; do
            echo "in files ${diff}" | lolcat
            eval "diff -y ~/${diff} ${diff}"
            echo ''
        done

    }


    function copyToRepo(){

        for diff in "${differences[@]}"; do
            if [ -d "${diff}" ]; then
                eval "cp -r ~/${diff}/* ${diff}" #folder
            else
                eval "cp ~/${diff} ${diff}" #file
            fi
        done
        
    }


    findDiff
    printDiff 

    if [ "${#differences[@]}" -gt 0 ]; then
         
        while true
        do
            read -r -p "Would you like to copy over all of your different config files to your Repo? (Y/n): " input
            
            case $input in
                [Yy][Ee][Ss] | [yY] | "")
                    copyToRepo
                    break
                    ;;
                [Nn][Oo] | [Nn])
                    break
                    ;;
                *)
                    echo "invalid input...."
                    ;;
            esac
        done
    fi

}

main
