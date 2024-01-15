#!/bin/bash

quicksort() {
    local array=("$@")
    local pivot i lower=() greater=()

    if ((${#array[@]} <= 1)); then
        echo "${array[@]}"
        return
    fi

    pivot=${array[0]}

    for ((i = 1; i < ${#array[@]}; i++)); do
        if ((array[i] < pivot)); then
            lower+=("${array[i]}")
        else
            greater+=("${array[i]}")
        fi
    done

    quicksort "${lower[@]}" && echo "$pivot" && quicksort "${greater[@]}"
}

array=(3 0 2 5 -1 4 1)
quicksort "${array[@]}"
