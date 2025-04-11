# AdaptRec: A Self-Adaptive Framework for Sequential Recommendations with Large Language Models

This repository contains the implementation of **AdaptRec**, a self-adaptive framework for sequential recommendations using Large Language Models (LLMs). The project leverages LLMs to perform sequential recommendations on the LastFM dataset, incorporating a two-phase user selection mechanism for improved performance.

---

## Preparation

1. **Prepare the environment:**
   ```sh
   git clone https://github.com/zhangt766/AdaptRec.git
   cd AdaptRec
   pip install -r requirements.txt
   ```

2. **Prepare the pre-trained Hugging Face model of LLaMA2-7B:**
   - Download the LLaMA2-7B model from Hugging Face: meta-llama/Llama-2-7b-hf.

3. **Download the data:**
   - Download the LastFM dataset from Hugging Face: tongzhang-7/lastfm.

4. **Prepare the data and checkpoints:**
   - Place the LastFM data in the directory `data/ref/lastfm`.
   - Place any checkpoints (if applicable) in the directory `checkpoints/`

## Train AdaptRec

Train AdaptRec with a single A100 GPU on the LastFM dataset:
```sh
sh train_lastfm.sh
```

**Note:** Ensure you set the `llm_path` argument in `train_lastfm.sh` to your local directory path of the LLaMA2-7B model.

## Evaluate AdaptRec

Test AdaptRec with a single A100 GPU on the LastFM dataset:
```sh
sh test_lastfm.sh
```
