source ./functions.sh

function copyToRepo(){
    findDiff differences

    for diff in "${differences[@]}"; do
        eval "cp -r ${diff}"
    done
}

copyToRepo
