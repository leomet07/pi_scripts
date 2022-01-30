if [[ $1 == /dev/* ]]
then
	drive=$1
else
	drive=/dev/$1
fi

echo Running benchmark on $drive

sudo hdparm -t --direct $drive