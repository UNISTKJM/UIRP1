#!/bin/bash
#SBATCH -J jmuirp #Job이름
#SBATCH -p gpu_2080ti #gpu 할당
#SBATCH -N 1 #노드1개 (고정)
#SBATCH -n 4 #cpu4개(고정)
#SBATCH -o /home/p109g2208/arirang/jungmok/SAR2Opt-Heterogeneous-Dataset/CycleGAN-Pix2Pix/log.o%j #-o = output, x = jmuirp(Job이름), j = JobID
#SBATCH -e /home/p109g2208/arirang/jungmok/SAR2Opt-Heterogeneous-Dataset/CycleGAN-Pix2Pix/log.e%j #-e = error
#SBATCH --time 48:00:00
#SBATCH --gres=gpu:1 #GPU 개수
#SBATCH --nodelist=gpu2080-05

python train.py --dataroot /home/p109g2208/arirang/UIRP1/sar2opt --display_id 0 --name sar2opt_cyclegan --model cycle_gan --batch_size 4