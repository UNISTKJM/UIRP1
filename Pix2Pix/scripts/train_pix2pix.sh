set -ex

############### change dataroot ############################################### change checkpoints_dir ############################################
python train.py --dataroot /home/p109g2208/arirang/UIRP1/sar2opt_dataset/sar2opt --checkpoints_dir /home/p109g2208/arirang/UIRP1/Pix2Pix/checkpoint --name facades_pix2pix --model pix2pix --netG unet_256 --direction BtoA --lambda_L1 100 --dataset_mode aligned --norm batch --pool_size 0 --n_epochs 100 --n_epochs_decay 100
