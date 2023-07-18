#!/bin/sh
#SBATCH -J uirp ## Job Name
#SBATCH -p gpu_2080ti ## Partition name
#SBATCH -N 1 ## node count 총 필요한 컴퓨팅 노드 수
#SBATCH -n 4 ## total number of tasks across all nodes 총 필요한 프로세스 수
#SBATCH -o %x.o%j ## filename of stdout, stdout 파일 명(.o)
#SBATCH -e %x.e%j ## filename of stderr, stderr 파일 명(.e)
#SBATCH --time 48:00:00 ##y 최대 작업 시간(Wall Time Clock Limit)
#SBATCH --gres=gpu:1 ## number of GPU(s) per node
#SBATCH --nodelist=gpu2080-03

set -ex
# models
RESULTS_DIR='results/sar2opt'

# dataset
CLASS='sar2opt_bicycleGAN'
DIRECTION='BtoA' # from domain A to domain B
LOAD_SIZE=256 # scale images to this size
CROP_SIZE=256 # then crop to this size
INPUT_NC=3  # number of channels in the input image

# misc
GPU_ID=0   # gpu id
NUM_TEST=626 # number of input images duirng test
NUM_SAMPLES=1 # number of samples per input images
DATA_ROOT=../sar2opt_dataset/sar2opt

# command
CUDA_VISIBLE_DEVICES=${GPU_ID} python ./test.py \
  --results_dir ${RESULTS_DIR} \
  --dataroot ${DATA_ROOT} \
  --name ${CLASS} \
  --direction ${DIRECTION} \
  --load_size ${LOAD_SIZE} \
  --crop_size ${CROP_SIZE} \
  --input_nc ${INPUT_NC} \
  --num_test ${NUM_TEST} \
  --n_samples ${NUM_SAMPLES} \
  --center_crop \
  --no_flip
