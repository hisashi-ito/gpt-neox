#! /bin/bash
sudo python3 tools/preprocess_data.py \
            --input ./data/test.jsonl.zst \
            --output-prefix ./data/train \
            --vocab /data/exchange/gpt2-vocab.json \
            --merge-file /data/exchange/gpt2-merges.txt \
            --dataset-impl mmap \
            --tokenizer-type GPT2BPETokenizer \
            --append-eod
