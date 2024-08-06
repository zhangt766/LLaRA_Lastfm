
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
--llm_path /workspace/llama/models_hf/Llama-2-7b-hf  \
--rec_model_path ./rec_model/lastfm.pt \
--output_dir output/lastfm_unsloth \
--log_dir lastfm_logs \
--lr_warmup_start_lr 2e-6 \
--lr 2e-4 \
--lr_decay_min_lr 2e-6 \
--max_epochs 5 \
--precision bf16 \
--unsloth 1 
