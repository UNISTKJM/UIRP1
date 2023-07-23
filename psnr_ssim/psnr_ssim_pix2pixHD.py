import numpy as np
from PIL import Image
from glob import glob
from os.path import join
from ntpath import basename
from numpy import dot
from numpy.linalg import norm
## local libs
from imqual_utils import getSSIM, getPSNR
import cv2


## compares avg ssim and psnr
def SSIMs_PSNRs(gtr_dir, gen_dir, im_res=(256, 256)):
    """
        - gtr_dir contain ground-truths
        - gen_dir contain generated images
    """
    gtr_paths = sorted(glob(join(gtr_dir, "*.*")))
    gen_paths = sorted(glob(join(gen_dir, "*.*")))
    ssims, psnrs = [], []
    for gtr_path, gen_path in zip(gtr_paths, gen_paths):
        gtr_f = basename(gtr_path).split('.')[0]
        gen_f = basename(gen_path).split('.')[0]
        gen_path = gen_dir + "/" + gtr_path[len(gtr_dir)+1:-4] + "_synthesized_image.jpg"
        # read images from two datasets
        r_im = Image.open(gtr_path).resize(im_res)
        g_im = Image.open(gen_path).resize(im_res)
        # get ssim on RGB channels
        ssim = getSSIM(np.array(r_im), np.array(g_im))
        ssims.append(ssim)
        # get psnt on L channel (SOTA norm)
        r_im = r_im.convert("L"); g_im = g_im.convert("L")
        psnr = getPSNR(np.array(r_im), np.array(g_im))
        psnrs.append(psnr)
    return np.array(ssims), np.array(psnrs)

## Change Here ##############################
gtr_dir = "./sar2opt/testA"  #
gen_dir = "./Pix2PixHD/results/sar2opt/test_latest/fake"  #
#############################################


### compute SSIM and PSNR
print("Calculate Pix2pixHD...")
SSIM_measures, PSNR_measures = SSIMs_PSNRs(gtr_dir, gen_dir)
print ("SSIM on {0} samples".format(len(SSIM_measures)))
print ("Mean: {0} std: {1}".format(np.mean(SSIM_measures), np.std(SSIM_measures)))

print ("PSNR on {0} samples".format(len(PSNR_measures)))
print ("Mean: {0} std: {1}".format(np.mean(PSNR_measures), np.std(PSNR_measures)))
