python -W ignore -m torch.distributed.launch --nproc_per_node=2 main_dino.py \
--arch swin_tiny \
--data_path /home/ma1/work/data/luperson_img/ \
--output_dir ./log/lup/dino_tiny \
--height 256 --width 128 \
--crop_height 128 --crop_width 64 \
--epochs 100 \
--batch_size_per_gpu 12 \
--global_crops_scale 0.8 1. \
--local_crops_scale 0.05 0.8 \
