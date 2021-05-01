#\usr\bin\env bash
#File:guessinggame.sh

function cntFile {
    local result=`ls | wc -l`
    echo $result
}

     `source cntFile`
   target=`cntFile`
    while true
    do
        read -p "Guess how many files are there in the current directory?" guessingNumber
	echo "input guessingNumber is " $guessingNumber
	if [[ $target -eq $guessingNumber ]]
	then 
	    echo "good guess! Congratulations!"
	    break
	elif [[ $guessingNumber -lt $target ]]
	then
	    echo "Unfortunately input is smaller than expected, please increase and try again"
	    continue
	else
	    echo "Unfortunately input is larger than expected, please decrease and try again"
            continue        	    
	fi
    done
