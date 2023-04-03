#!/bin/sh

INPUT_LOG_FILE=$1
OUT_FILE=$2

#loss: 1.0651 - rpn_class_loss: 0.0030 - rpn_bbox_loss: 0.7284 - mrcnn_class_loss: 0.0262 - mrcnn_bbox_loss: 0.2210 - mrcnn_mask_loss: 0.0866

HEADER="# loss rpn_class_loss rpn_bbox_loss mrcnn_class_loss mrcnn_bbox_loss mrcnn_mask_loss"

grep 'loss:' $INPUT_LOG_FILE | awk -F '-' '{print $3":"$4}' | awk -F ':' '{print $2" "$4}'
