import os
from shutil import copy

def check_dir_exists(path):
    if not os.path.exists(path):
        os.mkdir(path)

def split_by_name(dir_path, real_save_path, fake_save_path):
    check_dir_exists(real_save_path)
    check_dir_exists(fake_save_path)

    if not os.path.exists(real_save_path):
        os.mkdir(real_save_path)
    
    if not os.path.exists(fake_save_path):
        os.mkdir(fake_save_path)

    for file in os.listdir(dir_path):
        tmp_file = os.path.join(os.path.abspath(dir_path), file)
        if 'ground' in file:
            copy(tmp_file, real_save_path + os.sep + file)
        elif 'random' in file:
            copy(tmp_file, fake_save_path + os.sep + file)

if __name__ == '__main__':
    dir_path = './BicycleGAN/results/sar2opt/test/images'
    real_path = './BicycleGAN/results/sar2opt/test/real'
    fake_path = './BicycleGAN/results/sar2opt/test/fake'
    print("Split BicycleGAN...")
    split_by_name(dir_path, real_path, fake_path)
