deepspeed --num_gpus 2 src/train_bash.py \
    --deepspeed ds_config.json \
    --stage sft \
    --model_name_or_path  Qwen/Qwen-14B-Chat\
    --do_train \
    --dataset ros \
    --template chatml \
    --finetuning_type lora \
    --lora_target c_attn \
    --output_dir qwen_output \
    --overwrite_cache \
    --per_device_train_batch_size 1 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 5e-5 \
    --num_train_epochs 2000 \
    --plot_loss \
    --fp16