# coding=utf-8
#
# usage: prompt.py <model_path>
#
import sys
import torch
from transformers import GPTNeoXForCausalLM 
from megatron.tokenizer.tokenizer import HFTokenizer

def main():
    tokenizer = HFTokenizer("/data/gpt_neox/tokenizer/del_post_processor_tokenizer.json")
    model_path = sys.argv[1]
    model = GPTNeoXForCausalLM.from_pretrained(model_path)
    with open("input.txt", mode="r", encoding="utf-8") as fin:
        for line in fin:
            text = line.rstrip("\n")
            input_ids = tokenizer.tokenize(text)
            input_ids = torch.tensor([input_ids])
            gen_tokens = model.generate(
                input_ids,
                do_sample=True,
                temperature=0.9,
                max_length=256
            )
            hypo = tokenizer.detokenize(gen_tokens[0].tolist())
            print(f"{model_path}\t{text}\t{hypo}")


if __name__ == '__main__':
    main()
