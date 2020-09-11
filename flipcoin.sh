
#!/bin/bash -x
read -p "enter num:" n
declare -A dict					#declaration of dictionary 
hh=0
tt=0
ht=0
th=0
count=1
while [ $count -le $n ]
do
        r1=$((RANDOM%2))
        r2=$((RANDOM%2))
dict[$r1$r2]=$r1$r2				
        if [ $r1 -eq 0 ] && [ $r2 -eq 0 ]
        then
               ((hh++))
                dict[$r1$r2]=$hh
        elif [ $r1 -eq 1 ] && [ $r2 -eq 1 ]
        then
                ((tt++))
                 dict[$r1$r2]=$tt
        elif [ $r1 -eq 0 ] && [ $r2 -eq 1 ]
        then
                ((ht++))
                 dict[$r1$r2]=$ht
         elif [ $r1 -eq 1 ] && [ $r2 -eq 0 ]
        then
                ((th++))
                 dict[$r1$r2]=$th
        fi
((count++))
done
echo ${dict[@]}
if [ $hh -gt $tt ] && [ $hh -gt $th ] && [ $hh -gt $ht ]
then
        per=$(( hh*100/n ))
        echo "winner is HH="$per
elif [ $tt -gt $hh ] && [ $tt -gt $th ] && [ $tt -gt $ht ]
        then
               per=$(( tt*100/n ))
        echo "winner is TT="$per
elif [ $th -gt $tt ] && [ $th -gt $hh ] && [ $th -gt $ht ]
then
               per=$(( th*100/n ))
                echo "winner is TH="$per
elif [ $ht -gt $tt ] && [ $th -gt $hh ] && [ $th -gt $th ]
then
                per=$(( ht*100/n ))
                echo "winner is HT="$per
fi
