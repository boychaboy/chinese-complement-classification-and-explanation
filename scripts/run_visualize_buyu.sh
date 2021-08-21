#!/bin/bash

buyu=0
max_iter=4

while(( $buyu < $max_iter ))
do
    echo "Current 补语 is ${buyu}"
    python visualize.py --input_file ./runs/buyu_${buyu}/hiex.pkl \
        --buyu $buyu --hiex
    let buyu++
done
