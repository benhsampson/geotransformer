#!/bin/bash

cd experiments/geotransformer.3dmatch.stage4.gse.k3.max.oacl.stage2.sinkhorn

PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True CUDA_VISIBLE_DEVICES=0 python demo.py --src_file=/data/street/src.npy --ref_file=/data/street/ref.npy --gt_file=/data/street/gt.npy --weights=/weights/geotransformer-3dmatch.pth.tar