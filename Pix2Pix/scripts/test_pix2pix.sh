set -ex

################ change dataroot ###############################################
python test.py --dataroot /change/to/your/dataroot --name facades_pix2pix --model pix2pix --netG unet_256 --direction BtoA --dataset_mode aligned --norm batch
