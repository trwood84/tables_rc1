#/bin/bash


#use an iter tool to make names of submitfiles
INDEX=0
## declare an array variable
declare -a arr=("DPMJET-III" "EPOS-LHC" "DPMJET-III-2017.1" "qgsjet-II-04" "SIBYLL2.3c" "SIBYLL2.1")
declare -a arr2=("GSF" "H3a" "GH")
#declare -a arr2=("(pm.GlobalSplineFit,None)" "(pm.HillasGaisser2012,'H3a')" "(pm.GaisserHonda, None)" )
### now loop through the above array
for i in "${arr[@]}"
do
   echo "$i"
	for p in "${arr2[@]}"
	do
	    echo $p
	    echo "$p"
            echo '#!/bin/bash' >> $p.$i.submit.sh
	    echo 'python /home/trwood/tables_rc1/DPMJETIII_h3a_rc1/pickle_combined_model_tests_auto.py ' $p $i >> $p.$i.submit.sh
     #       let INDEX=${INDEX}+1
	done
done
# You can access them using echo "${arr[0]}", "${arr[1]}" also
#
#      # or do whatever with individual element of the array
#      done
#	echo $num
##	num=$(printf '%06d' $num)
##	echo $num
#        theta=$num 
##	PYTHONPATH=/home/trwood/MCEq_dev/MCEq:/home/trwood/MCEq_dev/MCEq/MCEq:$PYTHONPATH python /home/trwood/MCEq_dev/MCEq/thuner_scripts/submit/hack_all_seasons_all_angles_flux_tables.py $theta
#	echo '#!/bin/bash' >> $num.submit.sh
#	echo 'PYTHONPATH=/home/trwood/MCEq_rc1:/home/trwood/MCEq_rc1/MCEq:$PYTHONPATH python /home/trwood/MCEq_rc1/MCEq/submit_cobalt/GH_DPMJETIIImarch/review_GH_DPMJET_mceq_rc1_current.py ' $theta >> $num.submit.sh
#done


#~/MCEq_dev_mulossesin/MCEq/submit_cobalt/antinumufix_hack_all_seasons_all_angles_flux_tables_fine_mesh_nofixbitend.py
