car(){
    for specIndex in {11..18};do
#    for specIndex in $(seq 14);do
#        echo ${specIndex}
        START_TIME=`date +%s`
        ./bin/$1 case/carIndustry/ s${specIndex}.cfg models/Conveyor.xml models/GrabbingRobot-3finger.xml models/WeldingRobot.xml &>> out/car/s${specIndex}.log
        END_TIME=`date +%s`
        EXECUTING_TIME=`expr $END_TIME - $START_TIME`
        echo "##@@!!TIME $EXECUTING_TIME " &>> out/car/s${specIndex}.log
    done
}


uav(){
    for specIndex in {56..59};do
        START_TIME=`date +%s`
        ./bin/$1 case/uav/ s${specIndex}.cfg models/UAV.xml &>> out/uav/s${specIndex}.log
        END_TIME=`date +%s`
        EXECUTING_TIME=`expr $END_TIME - $START_TIME`
        echo "##@@!!TIME $EXECUTING_TIME " &>> out/uav/s${specIndex}.log
    done
    #for specIndex in {21..33};do
    #    START_TIME=`date +%s`
    #    ./bin/$1 case/uav/ s${specIndex}.cfg models/UAV.xml &>> out/uav/s${specIndex}.log
    #    END_TIME=`date +%s`
    #    EXECUTING_TIME=`expr $END_TIME - $START_TIME`
    #    echo "##@@!!TIME $EXECUTING_TIME " &>> out/uav/s${specIndex}.log
    #done
}

for index in {1..100};do
	echo ${index}
	#uav NewComp	
	car NewComp	
done
