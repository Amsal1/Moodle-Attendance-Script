#!/bin/bash
# DOW is variable used for the day of the week. 0 stands for Sunday and 6 stands for Saturday
# min stands for minutes and hour stands for hour number.
# Set your enrollment number
# Use this command on command line: watch -n 60 script_run.sh
enroll=130903409
pass=asfsafdsaf

hour=$(date +%H)
min=$(date +%M)
DOW=$(date +%w)

# Monday Schedule

if [ $DOW -eq 01 ]; then
	if [ $hour -eq 09 ]; then
		if [ $min -eq 01 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8326
		fi
	fi
fi

if [ $DOW -eq 01 ]; then
	if [ $hour -eq 10 ]; then
		if [ $min -eq 16 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8317
		fi
	fi
fi

if [ $DOW -eq 01 ]; then
	if [ $hour -eq 13 ]; then
		if [ $min -eq 1 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8677
		fi
	fi
fi

if [ $DOW -eq 01 ]; then
	if [ $hour -eq 14 ]; then
		if [ $min -eq 1 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8423
		fi
	fi
fi


# Tuesday Schedule

if [ $DOW -eq 02 ]; then
	if [ $hour -eq 9 ]; then
		if [ $min -eq 1 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8427
		fi
	fi
fi

if [ $DOW -eq 02 ]; then
	if [ $hour -eq 11 ]; then
		if [ $min -eq 31 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8715
		fi
	fi
fi

# Wednesday Schedule

if [ $DOW -eq 03 ]; then
	if [ $hour -eq 9 ]; then
		if [ $min -eq 1 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8314
		fi
	fi
fi

if [ $DOW -eq 03 ]; then
	if [ $hour -eq 11 ]; then
		if [ $min -eq 31 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8326
		fi
	fi
fi

if [ $DOW -eq 03 ]; then
	if [ $hour -eq 13 ]; then
		if [ $min -eq 1 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8677
		fi
	fi
fi

# Thursday Schedule

if [ $DOW -eq 04 ]; then
	if [ $hour -eq 9 ]; then
		if [ $min -eq 1 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8319
		fi
	fi
fi

if [ $DOW -eq 04 ]; then
	if [ $hour -eq 11 ]; then
		if [ $min -eq 31 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8715
		fi
	fi
fi

# Friday Schedule

if [ $DOW -eq 05 ]; then
	if [ $hour -eq 9 ]; then
		if [ $min -eq 1 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8326
		fi
	fi
fi

if [ $DOW -eq 05 ]; then
	if [ $hour -eq 10 ]; then
		if [ $min -eq 16 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8314
		fi
	fi
fi

if [ $DOW -eq 05 ]; then
	if [ $hour -eq 11 ]; then
		if [ $min -eq 31 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8327
		fi
	fi
fi

# Saturday Schedule

if [ $DOW -eq 06 ]; then
	if [ $hour -eq 9 ]; then
		if [ $min -eq 1 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8677
		fi
	fi
fi

if [ $DOW -eq 06 ]; then
	if [ $hour -eq 10 ]; then
		if [ $min -eq 16 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8661
		fi
	fi
fi

if [ $DOW -eq 06 ]; then
	if [ $hour -eq 11 ]; then
		if [ $min -eq 31 ]; then
			python3 script.py $enroll $pass https://ilizone.iul.ac.in/course/view.php?id=8715
		fi
	fi
fi

