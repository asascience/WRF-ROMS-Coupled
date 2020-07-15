#!/bin/bash

ROTDIR=`dirname ${PWD}`

CDATE=20110827
FRCDIR=$ROTDIR/forcing/$CDATE
mkdir -p $FRCDIR
cd $FRCDIR

echo "Retrieving forcing from S3 ..."
aws s3 cp s3://ioos-cloud-sandbox/public/wrfroms/irene_wrfroms_inputs.tgz .
echo "Download completed."
echo "Un-tarring tar file ..."
tar -xvf irene_wrfroms_inputs.tgz
rm irene_wrfroms_inputs.tgz
echo "Completed. All required inputs are at $FRCDIR"

