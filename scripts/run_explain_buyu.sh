#!/bin/bash

# explain 4 chinese complement binary classifiers
# complement(buyu) : 下去，下来，出来，起来(0~4)

buyu=0
max_iter=4
GPU_ID=$1

while(( $buyu < $max_iter ))
do
    echo "Current 补语 is ${buyu}"
    python main.py --data_dir ./data/buyu/--bert_model bert-base-chinese \
        --max_seq_length 128 --output_dir runs/buyu_${buyu} lm_dir runs/lm_buyu \
        --task_name buyu --eval_batch_size 4 \
        --hiex --hiex_add_itself --output_filename hiex.pkl \
        --nb_range 5 --sample_n 3 --algo soc --do_eval --test --explain \
        --gpu_id $GPU_ID --only_positive --buyu ${buyu} \
    let buyu++
done
