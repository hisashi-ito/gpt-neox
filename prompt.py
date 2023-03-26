# coding=utf-8

import sys
import torch
from transformers import GPTNeoXForCausalLM 
from megatron.tokenizer.tokenizer import HFTokenizer

model = GPTNeoXForCausalLM.from_pretrained("hf_model/save/location")
tokenizer = HFTokenizer("/data/gpt_neox/tokenizer/del_post_processor_tokenizer.json")

prompt = sys.argv[1]

input_ids = tokenizer.tokenize(prompt)
input_ids = torch.tensor([input_ids])

gen_tokens = model.generate(
    input_ids,
    do_sample=True,
    temperature=0.95,
    max_length=64
)

text = tokenizer.detokenize(gen_tokens[0].tolist())
print(text)
