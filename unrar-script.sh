#./unrarall --skip-if-exists /media/Media/downloads/Movies
#./unrarall --disable-cksfv --skip-if-exists /media/Media/downloads/Series
./unrarall --skip-if-exists /media/Media/downloads/Series
for i in $(seq 1 20); 
do
if [ $(($i%5)) = 0 ]; then
echo "Waiting for $i seconds";
fi
sleep 1;
done
./$0
