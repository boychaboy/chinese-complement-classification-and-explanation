#!/bin/bash

# training 4 chinese complement binary classifiers
# complement(buyu) : 下去，下来，出来，起来(0~4)

buyu=0
max_iter=1
GPU_ID=$1

while(( $buyu < $max_iter ))
do
    echo "Current 补语 is ${buyu}"
    python main.py --data_dir ./data/buyu/ --bert_model bert-base-chinese \
        --max_seq_length 128 --learning_rate 5e-5 --num_train_epochs 5 --early_stop 5 \
        --output_dir runs/buyu_${buyu} --seed 0 --task_name buyu \
        --do_train --train_batch_size 64 --do_eval --eval_batch_size 256 \
        --buyu $buyu --negative_weight 0.1 --gpu_id $GPU_ID
    let buyu++
done
