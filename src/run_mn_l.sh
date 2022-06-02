#!/bin/bash
python -m torch.distributed.launch --nproc_per_node=8 \
training.main \
--train-data /yfcc/yfcc_clip_ext.csv.gz \
--dataset-type csv \
--csv-img-key key \
--csv-caption-key title \
--batch-size 320 \
--precision amp \ 
--warmup 10000 \ 
--batch-size=512 \ 
--lr=1e-3 \ 
--wd=0.1 \ 
--epochs=50 \ 
--workers=8 \ 
--model ViT-B-32-quickgelu \ 
--logs /results/
