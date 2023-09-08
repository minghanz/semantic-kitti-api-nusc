#!/bin/bash

### Specify --accumulate to accumulate the point cloud. Otherwise only the current frame is shown.

python visualize.py --nuscenes --sequence 61 --dataset /media/minghanz/DATA/datasets/extracted/nuscenes_mini_semantickitti \
--config /media/minghanz/DATA/datasets/extracted/nuscenes_mini_semantickitti/semantic-kitti.yaml --do_instances --accumulate -l

# python visualize.py --sequence 00 --dataset /media/minghanz/DATA/datasets/extracted/semantic_kitti/dataset --do_instances --accumulate -l
