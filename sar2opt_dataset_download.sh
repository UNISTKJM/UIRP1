mkdir sar2opt_dataset
mkdir sar2opt
mkdir checkpoint_examples

wget --load-cookies ~/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ~/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1UZu2y5GMT05VClYzxKjvYsWdNjDF92Or' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1UZu2y5GMT05VClYzxKjvYsWdNjDF92Or" -O sar2opt_dataset.zip && rm -rf ~/cookies.txt
wget --load-cookies ~/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ~/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=17RrE_6gmESk5QZs_QOM8LI2B418EVShB' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=17RrE_6gmESk5QZs_QOM8LI2B418EVShB" -O sar2opt.zip && rm -rf ~/cookies.txt
wget --load-cookies ~/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ~/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1DusM9G36UQoyZ0lLNX5r9ge1BWCRFF1l' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1DusM9G36UQoyZ0lLNX5r9ge1BWCRFF1l" -O checkpoint_examples.zip && rm -rf ~/cookies.txt

unzip sar2opt_dataset.zip -d sar2opt_dataset/
unzip sar2opt.zip -d sar2opt/ 
unzip checkpoint_examples.zip -d checkpoint_examples/

rm sar2opt_dataset.zip
rm sar2opt.zip
rm checkpoint_examples.zip