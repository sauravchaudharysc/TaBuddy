CUDA_VISIBLE_DEVICES="6" python3 Utils/dpo_train.py \
    --model_size "7b" \
    --output_dir "./Model/CodeLlama" \
    --train_dataset_path "./Dataset/train.jsonl" \
    --eval_dataset_path "./Dataset/test.jsonl"  