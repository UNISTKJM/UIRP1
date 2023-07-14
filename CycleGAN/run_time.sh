# set -ex


for ((i=1; i<=1; i++));
do
    echo "Processing"$i"th epoch..."
    # --- pix2pix ---
    # python Image_translation_codes/pytorch-CycleGAN-and-pix2pix/test.py \
    #                --dataroot Image_translation_codes/pytorch-CycleGAN-and-pix2pix/datasets/combined_sar2opt \
    #                --name sar2opt_pix2pix \
    #                --model pix2pix \
    #                --direction AtoB

    # --- cyclegan ---
    # python train.py \
    #                --dataroot /home/p109g2208/arirang/jongmin/BicycleGAN/datasets/sar2opt \
    #                --name sar2opt_cyclegan \
    #                --model cycle_gan 
    # set -ex
    # python train.py --dataroot /home/p109g2208/arirang/jongmin/BicycleGAN/datasets/sar2opt --name maps_cyclegan --model cycle_gan --pool_size 50 --no_dropout
    python train.py --dataroot /home/p109g2208/arirang/jongmin/BicycleGAN/datasets/sar2opt --name sar2opt_cyclegan --model cycle_gan --batch_size 4 --continue_train
done