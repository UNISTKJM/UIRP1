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

sh ./scripts/train_scripts/train_combined_sar2opt.sh