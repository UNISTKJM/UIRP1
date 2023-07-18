set -ex

################ change dataroot ###############################################
python test.py --dataroot /home/p109g2208/arirang/UIRP1/sar2opt_dataset/sar2opt --name facades_pix2pix --model pix2pix --netG unet_256 --direction BtoA --dataset_mode aligned --norm batch
