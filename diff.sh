source ./functions.sh

function printDiff(){
    findDiff differences

    for diff in "${differences[@]}"; do
        echo "in files ${diff}" | lolcat
        eval "diff ${diff}"
        echo ''
    done
}

printDiff
