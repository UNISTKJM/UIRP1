# UIRP1
Using Slurm GPU System
You have to modify file path in
    
    /scripts/test_scripts/test_combined_sar2opt.sh and /scripts/train_scripts/train_combined_sar2opt.sh

## 1. Clone the git repository
    git clone https://github.com/UNISTKJM/UIRP1.git

## Download Dataset

    bash sar2opt_dataset_download.sh

dataset will be downloaded at /sar2opt_dataset

## training BicycleGAN

    sbatch train_script_run.sh

## test BicycleGAN

    sbatch test_script_run.sh
