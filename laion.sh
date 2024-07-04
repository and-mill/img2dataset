# do pip isntall -e . first, then

# wget -l1 -r --no-parent https://the-eye.eu/public/AI/cah/laion400m-met-release/laion400m-meta/
# mv the-eye.eu/public/AI/cah/laion400m-met-release/laion400m-meta/ .

img2dataset --url_list laion400m-meta --input_format "parquet" \
  --url_col "URL" --caption_col "TEXT" \
  --output_folder laion400m-data --processes_count 16 --thread_count 128 \
  --min_image_size 1024 --resize_mode "no" \
  --save_additional_columns '["NSFW","similarity","LICENSE"]' --enable_wandb True