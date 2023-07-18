set -ex
MODEL='bicycle_gan'
# dataset details
CLASS='sar2opt_bicycleGAN' 
NZ=8
NO_FLIP='--no_flip'
DIRECTION='BtoA'
LOAD_SIZE=256
CROP_SIZE=256
INPUT_NC=3
NITER=100
NITER_DECAY=100

# training
GPU_ID=0
DISPLAY_ID=0
CHECKPOINTS_DIR=./checkpoint/
NAME=${CLASS}_${MODEL}

# command
CUDA_VISIBLE_DEVICES=${GPU_ID} 
python ./train.py \
  --display_id ${DISPLAY_ID} \
## Change dataroot #################################################
  --dataroot /change/to/your/dataroot \ 
####################################################################
  --name ${NAME} \
  --model ${MODEL} \
  --direction ${DIRECTION} \
  --checkpoints_dir ${CHECKPOINTS_DIR} \
  --load_size ${LOAD_SIZE} \
  --crop_size ${CROP_SIZE} \
  --nz ${NZ} \
  --input_nc ${INPUT_NC} \
  --niter ${NITER} \
  --niter_decay ${NITER_DECAY} \
  --use_dropout
