#!/bin/bash
#SBATCH -J jmuirp #Job이름
#SBATCH -p gpu_2080ti #gpu 할당
#SBATCH -N 1 #노드1개 (고정)
#SBATCH -n 4 #cpu4개(고정)
#SBATCH -o %x.o%j ## filename of stdout, stdout 파일 명(.o)
#SBATCH -e %x.e%j ## filename of stderr, stderr 파일 명(.e)
#SBATCH --time 48:00:00
#SBATCH --gres=gpu:1 #GPU 개수
#SBATCH --nodelist=gpu2080-05

################# change dataroot ################################################################
python test.py --dataroot /home/p109g2208/arirang/UIRP1/sar2opt --name sar2opt_cyclegan --model cycle_gan --phase test --no_dropout
