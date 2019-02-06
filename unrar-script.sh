#./unrarall --skip-if-exists /media/Media/downloads/Movies
#./unrarall --disable-cksfv --skip-if-exists /media/Media/downloads/Series
./unrarall -v --disable-cksfv --skip-if-exists /input
for i in $(seq 1 600); 
do
if [ $(($i%60)) = 0 ]; then
echo "Waiting for $i seconds";
fi
sleep 1;
done
./$0
