# 1小时等于3600秒
SLEEP_SECONDS=3600

# 睡眠1小时
sleep $SLEEP_SECONDS

CUDA_VISIBLE_DEVICES=2 python3 main.py \
--mode train \
--batch_size 8 \
--accumulate_grad_batches 8 \
--dataset movielens_data \
--data_dir data/ref/lastfm \
--cans_num 20 \
--prompt_path ./prompt/artist.txt \
--rec_embed SASRec \
--llm_tuning lora \
--llm_path /mnt/bn/data-tns-live-llm/leon/datasets/rec/score_model \
--rec_model_path ./rec_model/lastfm.pt \
--output_dir /mnt/bn/data-tns-live-llm/leon/datasets/rec/lastfm \
--log_dir lastfm_logs \
--lr_warmup_start_lr 2e-6 \
--lr 2e-4 \
--lr_decay_min_lr 2e-6 \
--max_epochs 5 \
--precision bf16 \
--unsloth 0

CUDA_VISIBLE_DEVICES=1 python3 main.py \
--mode train \
--batch_size 8 \
--accumulate_grad_batches 8 \
--dataset movielens_data \
--data_dir data/ref/lastfm \
--cans_num 20 \
--prompt_path ./prompt/artist.txt \
--rec_embed SASRec \
--llm_tuning lora \
--llm_path /mnt/bn/data-tns-live-llm/leon/datasets/llama-2-7b-bnb-4bit  \
--rec_model_path ./rec_model/lastfm.pt \
--output_dir /mnt/bn/data-tns-live-llm/leon/datasets/rec/lastfm_unsloth \
--log_dir lastfm_logs \
--lr_warmup_start_lr 2e-6 \
--lr 2e-4 \
--lr_decay_min_lr 2e-6 \
--max_epochs 5 \
--precision bf16 \
--unsloth 1 