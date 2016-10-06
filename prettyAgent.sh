#!/bin/bash

source config.cfg

ID="$(python retrieve_image.py)"
mkdir -p $IMAGE_DIR
mv $ID.png $IMAGE_DIR/$ID.png

IMAGES=($(cd $IMAGE_DIR && ls -t *.png))
NUMBER_IMAGES=${#IMAGES[@]}
if [ $NUMBER_IMAGES -gt $MAX_NUMBER_IMAGES ]; then
	TO_DELETE=${IMAGES[@]:$MAX_NUMBER_IMAGES:NUMBER_IMAGES-1}
	for IMAGE in ${TO_DELETE[@]}; do rm $IMAGE_DIR/$IMAGE; done
fi