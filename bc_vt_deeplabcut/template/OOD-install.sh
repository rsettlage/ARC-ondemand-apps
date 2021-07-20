#!/bin/bash
conda env create -f /OOD-DEEPLABCUT.yaml
source activate OOD-DEEPLABCUT
conda install -y tensorflow-gpu==1.15.0
conda install -y -c conda-forge wxpython
pip install deeplabcut
bash ~/.conda/envs/OOD-DEEPLABCUT/lib/python3.7/site-packages/deeplabcut/pose_estimation_tensorflow/models/pretrained/download.sh
