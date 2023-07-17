mkdir BicycleGAN/results/sar2opt/test/real
mkdir BicycleGAN/results/sar2opt/test/fake

python BicycleGAN/split_real_fake.py

python BicycleGAN/metric/psnr_ssim.py

