#!/bin/bash
pwd=$(pwd)
if [ -d $pwd/venv ]
then
	echo Virtual enviornment $pwd/venv already exists
	#source $pwd/venv/bin/activate
else	
	echo Creating virtual enviornment in $pwd/venv
	python -m venv $pwd/venv
	echo Virtual enviornment created in $pwd/venv
fi

