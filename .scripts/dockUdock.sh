#! /bin/sh
# docking / undocking script.
# by Nikita Loginov

# Configurations here
dockdConfig()
{
  xrandr --output eDP1 --mode 1920x1080 --pos 0x1080 --rotate normal --output DP1 --off --output DP1-1 --off --output DP1-2 --off --output DP1-3 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP2 --off --output HDMI1 --off --output VIRTUAL1 --off
}
udockdConfig()
{
  xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output DP1-1 --off --output DP1-2 --off --output DP1-3 --off --output DP2 --off --output HDMI1 --off --output VIRTUAL1 --off
}
workImage=imageName.jpg
primaryImage=$workImage
secondaryImage=$workImage
paperMode="--bg-fill"

# Script Begins Here
input=$1;
docked=d;
undocked=u;
work=w;

if [ $input = $docked ]
then
  echo "Docked!"
  dockdConfig
  feh $paperMode $primaryImage $paperMode $secondaryImage
elif [ $input = $undocked ]
then
  echo "Undocked!"
  udockdConfig
  feh $paperMode $primaryImage
elif [ $input = $work ]
then
  echo "Going to Work!"
  udockdConfig
  feh $paperMode $workImage
else
  echo "Command not found!"
fi

