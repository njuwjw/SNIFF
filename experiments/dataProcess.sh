dirStr="../out/car"
for file in `ls $dirStr`
do
    ./dpnd $dirStr/$file
done

dirStr="../out/uav"
for file in `ls $dirStr`
do
    ./dpd $dirStr/$file
done
