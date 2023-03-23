#! /bin/bash
sudo python3 tools/preprocess_data.py \
            --input /data/neox/data/00000.jsonl.zst \
            --output-prefix /data/neox/train \
            --vocab-file /data/tokenizer/del_post_processor_tokenizer.json \
            --dataset-impl mmap \
            --tokenizer-type HFTokenizer \
            --append-eod \
	    --workers 12
