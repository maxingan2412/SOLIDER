python -W ignore -m torch.distributed.launch --nproc_per_node=8 main_solider.py \
--arch swin_tiny \
--data_path path/to/LUPerson \
--output_dir ./log/lup/swin_tiny \
--height 256 --width 128 \
--crop_height 128 --crop_width 64 \
--epochs 100 \
--batch_size_per_gpu 48 \
--global_crops_scale 0.8 1. \
--local_crops_scale 0.05 0.8 \
--partnum 3 \

--parthead_nlayers 3 \
--semantic_loss 1.0 \
# if there's ifislfjalsfsa