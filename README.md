# UIRP1
Using Slurm GPU System

## 1. Clone the git repository

    git clone https://github.com/UNISTKJM/UIRP1.git

## 2. Download Dataset

    bash sar2opt_dataset_download.sh

2 Datasets will be downloaded. One is for BicycleGAN and Pix2Pix, and another one is for the CycleGAN (Will be merged)
dataset will be downloaded at 

  pwd/sar2opt_dataset/sar2opt

and

  pwd/sar2opt

## 3. Train and test BicycleGAN, CycleGAN, Pix2pix
Check README at each directory

## 4. Check metric scores (PSNR, SSIM, Cosine Similarity)

    bash psnr_ssim.sh

