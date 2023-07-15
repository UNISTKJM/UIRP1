mkdir sar2opt_dataset
wget --load-cookies ~/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ~/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1UZu2y5GMT05VClYzxKjvYsWdNjDF92Or' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1UZu2y5GMT05VClYzxKjvYsWdNjDF92Or" -O sar2opt_dataset.zip && rm -rf ~/cookies.txt
python unzip.py
rm sar2opt_dataset.zip