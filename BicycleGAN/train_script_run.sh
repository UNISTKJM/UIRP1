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
NAME=${CLASS}
DATA_ROOT=../sar2opt_dataset/sar2opt

# command
CUDA_VISIBLE_DEVICES=${GPU_ID} 
python ./train.py \
  --dataroot ${DATA_ROOT} --name ${NAME} \
  --model ${MODEL} \
  --direction ${DIRECTION} \
  --load_size ${LOAD_SIZE} \
  --crop_size ${CROP_SIZE} \
  --nz ${NZ} \
  --input_nc ${INPUT_NC} \
  --niter ${NITER} \
  --niter_decay ${NITER_DECAY} \
  --use_dropout
