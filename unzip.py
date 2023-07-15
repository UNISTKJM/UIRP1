path_to_zip_file = 'sar2opt_dataset.zip'
directory_to_extract_to = 'sar2opt_dataset'

import zipfile
with zipfile.ZipFile(path_to_zip_file, 'r') as zip_ref:
    zip_ref.extractall(directory_to_extract_to)