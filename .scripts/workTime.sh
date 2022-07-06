#! /bin/sh

# An implementation of Pomodoro Timer
# by Nikita Loginov

input=$1;
time=10m;
work=w;
rest=r;

if [ $input = $work ]
then
  notify-send -u normal 'Work timer started' "time: 3 x $time" && sleep $time && notify-send -u normal '10 minutes in!' "Keep it up!" && echo "Timer Script -- $time passed" && sleep $time && notify-send -u normal '20 minutes in!' "Good work!" && echo "Timer Script -- $time x2 passed" && sleep $time && notify-send -u critical 'The timer is finished.' "Time to rest!" && echo "Timer Script -- timer finished."
elif [ $input = $rest ]
then
  notify-send -u normal 'Rest timer started' "time: $time" && sleep $time && notify-send -u critial 'The timer is finished' "Time to return to work!"
else
  echo "Command not found!"
fi


