

for f in `ls`
do
#	echo $f
	if [ -d $f ];then
		cd $f
		sed 's/vs. or persist.vs./vs. ro.vs. persist.vs. ro.wt_ persist.sys./g' SystemProp.txt > tmp
		mv tmp SystemProp.txt
		cd ..
	fi
done


exit
echo "test\\" > testf
sed 's/[\]//g' testf > test1

