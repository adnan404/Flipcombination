count=0
while [ $count -lt 5 ]
do
        r=$((RANDOM%2))
dict[$r]=$r
        if [ $r -eq 0 ]
        then
                ((head++))
                dict[$r]=$head
        else
                ((tail++))
                dict[$r]=$tail
        fi
((count++))
done
for i in ${dict[@]}
do
        echo $i
done
echo "head=" $head "tail="$tail
if [ $head -ge 3 ]
then
        per=$(( head*100/5 ))
        echo "head="$per
elif [ $tail -gt 3 ]
        then
               per=$(( tail*100/5 ))
        echo "tail="$per
elif [ $head -eq $tail ]
then
                perofhead=$(( head*100/5 ))
               peroftail=$(( tail*100/5 ))
                echo "head="$perofhead"and tail="$peroftail
fi

