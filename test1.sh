#!/bin/bash

cd experiments/geotransformer.3dmatch.stage4.gse.k3.max.oacl.stage2.sinkhorn

CUDA_VISIBLE_DEVICES=0 python demo.py --src_file=../../data/demo/src.npy --ref_file=../../data/demo/ref.npy --gt_file=../../data/demo/gt.npy --weights=/weights/geotransformer-3dmatch.pth.tar