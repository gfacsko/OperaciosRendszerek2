# Megváltoztatja a kiterjesztését az állományoknak
# Developed by Dr. Gabor FACSKO (facsko.gabor@uni-milton.hu)
# Milton Friedman University, Budapest, 2024
# ---------------------------------------------------------- 
#!/bin/bash

echo $1 $2

for f in $(ls *.$1|cut -d. -f1)
do 
	echo $f
	mv $f.$1 $f.$2
done
