#!/bin/bash

DIR="$(cd "$(dirname $"0")" && pwd)"

if  [ ! -x "gevolution" ]; then 
	make 
fi

mpirun -np 16 ./gevolution -n 4 -m 4 -s initialisations/test_intermediate/newton.ini
mpirun -np 16 ./gevolution -n 4 -m 4 -s initialisations/test_intermediate/gr.ini