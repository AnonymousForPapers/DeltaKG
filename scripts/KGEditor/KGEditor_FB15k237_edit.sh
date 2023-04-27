CUDA_VISIBLE_DEVICES=0 python models/KGEditor/run.py \
    --ex_model_checkpoint checkpoints/PT_KGE_E-FB15k237 \
    --kge_model_type KGEditor \
    --lr 5e-4 \
    --gpus 1 \
    --max_seq_length 64 \
    --accelerator ddp \
    --num_workers 32 \
    --edit_num 2 \
    --stable_batch_size 8 \
    --ex_size 64 \
    --kb_layer 10,11 \
    --max_epochs 20 \
    --divergences kl \
    --task_name edit \
    --data_dir datasets/FB15k237/EditKnowledge \
    --data_type FB15k237 \
    --dirpath models/KGEditor/logger/E-FB15k237