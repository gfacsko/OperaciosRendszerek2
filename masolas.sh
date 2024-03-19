# Állományok másolása, parancssori paraméterek értelmezése
# Developed by Dr. Gabor FACSKO (facsko.gabor@uni-milton.hu)
# Milton Friedman University, Budapest, 2024
# ---------------------------------------------------------------
#!/bin/bash


# Teszt állományok létrehozása
if [ $1 == "-c"  ]
then 
	for f in 0 1 2 3 4 5 6 7 8 9
	do
		touch test0$f.$2
	done
fi


# Teszt állományok törlése
if [ $1 == "-d" ]
then
	rm *.$2
fi					

# Teszt állományok átnevezése
if [ $1 == "-m" ]
then
	for f in $(ls *.$2|cut -d. -f1)
	do
		mv $f.$2 $f.$3
	done
fi

# Help
if [ $1 == "-h" ]
then
	echo "A masolas.sh program használata:"
	echo "masolas.sh -c ext Létrehoza teszt állományokat ext kiterjesztéssel."
	echo "masolas.sh -d ext Kitörli az állományokat az ext kiterjesztéssel."
	echo "masolas.sh -m ext1 ext2 Megváltoztatja az ext1 kiterjesztésű állományok kiterjesztését ext2 kiterjesztésre."
fi
