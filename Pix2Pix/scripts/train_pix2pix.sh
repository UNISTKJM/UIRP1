set -ex
python train.py --dataroot /home/p109g2208/arirang/UIRP1/sar2opt_dataset/sar2opt --name facades_pix2pix --model pix2pix --netG unet_256 --direction BtoA --lambda_L1 100 --dataset_mode aligned --norm batch --pool_size 0 --n_epochs 100 --n_epochs_decay 100
