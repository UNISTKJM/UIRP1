set -ex

############### change dataroot ############################################### change checkpoints_dir ############################################
python train.py --dataroot /change/to/your/dataroot --checkpoints_dir /change/to/your/checkpoint/directory --name facades_pix2pix --model pix2pix --netG unet_256 --direction BtoA --lambda_L1 100 --dataset_mode aligned --norm batch --pool_size 0 --n_epochs 100 --n_epochs_decay 100
