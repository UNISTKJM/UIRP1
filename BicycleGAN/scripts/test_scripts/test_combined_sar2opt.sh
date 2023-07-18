set -ex
# models
RESULTS_DIR='results/sar2opt'

# dataset
CLASS='sar2opt_bicycleGAN_bicycle_gan'
DIRECTION='BtoA' # from domain A to domain B
LOAD_SIZE=256 # scale images to this size
CROP_SIZE=256 # then crop to this size
INPUT_NC=3  # number of channels in the input image

# misc
GPU_ID=0   # gpu id
NUM_TEST=626 # number of input images duirng test
NUM_SAMPLES=1 # number of samples per input images


# command
CUDA_VISIBLE_DEVICES=${GPU_ID} python ./test.py \
## Change dataroot #################################################
  --dataroot /home/p109g2208/arirang/UIRP1/sar2opt_dataset/sar2opt \
####################################################################
  --results_dir ${RESULTS_DIR} \
## Change Checkpoints directory ############################################################
  --checkpoints_dir /home/p109g2208/arirang/UIRP1/BicycleGAN/checkpoint/sar2opt_bicycleGAN \
############################################################################################
  --name ${CLASS} \
  --direction ${DIRECTION} \
  --load_size ${LOAD_SIZE} \
  --crop_size ${CROP_SIZE} \
  --input_nc ${INPUT_NC} \
  --num_test ${NUM_TEST} \
  --n_samples ${NUM_SAMPLES} \
  --center_crop \
  --no_flip
