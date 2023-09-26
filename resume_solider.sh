python -W ignore -m torch.distributed.launch --nproc_per_node=2 main_solider.py \
--arch swin_tiny \
--data_path /home/ma1/work/data/luperson_img/ \
--output_dir ./log/lup/swin_tiny \
--height 256 --width 128 \
--crop_height 128 --crop_width 64 \
--epochs 10 \
--batch_size_per_gpu 48 \
--global_crops_scale 0.8 1. \
--local_crops_scale 0.05 0.8 \
--partnum 3 \
--parthead_nlayers 3 \
--semantic_loss 1.0 \
--warmup_epochs 1 \
--lr 0.00005 \
--resume true \
--init_model swin_tiny.pth
#--init_model ./log/lup/dino_tiny/checkpoint.pth
