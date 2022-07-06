#! /bin/bash

# Script to simplify use of FUSE file system.
# by Nikita Loginov

mode=$1;
modeMount=m;
modeUmount=u;
mountLocation=$2;

if [ $mode = $modeMount ]
then
  echo "Mounting to $mountLocation "
  aft-mtp-mount $mountLocation && echo "Success!" || echo "Fail!"
elif [ $mode = $modeUmount ]
then
  echo "Unmounting from $mountLocation "
  fusermount -u $mountLocation && echo "Success!" || echo "Fail!"
else
  echo "Command not found!" 
fi
