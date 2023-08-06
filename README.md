# UIRP1
Using Slurm GPU System

## 0. Environment Settings

    python 3.10.12
    pytorch 2.0.0
    visdom 0.2.4
    dominate 2.8.0

## 1. Clone the git repository

    git clone https://github.com/UNISTKJM/UIRP1.git
    cd UIRP1

## 2. Download Dataset & checkpoint examples

    bash sar2opt_dataset_download.sh

2 Datasets and checkpoint examples will be downloaded. One is for BicycleGAN and Pix2Pix, and another one is for the CycleGAN
dataset will be downloaded at 

    pwd/sar2opt_dataset/sar2opt

and

    pwd/sar2opt

checkpoint examples will be downloaded at

    pwd/checkpoint_examples

you can use these checkpoints just remove (example_) then replace it at the proper directory.

## 3. Train and test BicycleGAN, CycleGAN, Pix2pix, Pix2pixHD
Check README at each directory

## 4. Check metric scores (PSNR, SSIM)

    bash psnr_ssim.sh

It will automatically split the images, and check metric scores.
