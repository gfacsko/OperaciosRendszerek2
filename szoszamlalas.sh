#!/bin/bash

echo "Sorok száma: " $(wc -l $1)
echo "Szavak száma: " $(wc -w $1)
echo "Betűk száma: " $(wc -c $1)
