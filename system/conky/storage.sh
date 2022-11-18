#!/bin/bash

sleep 600
while true
do
   disk=`du -s ${HOME}/documents 2>/dev/null | awk '{print $1}'`
   printf "%4.1fGiB" $(echo "scale=6; $disk/1048576" | bc) > ${HOME}/.storage/docnum
   echo "scale=1; 100*$disk/955542528" | bc > ${HOME}/.storage/docval
   disk=`du -s ${HOME}/local 2>/dev/null | awk '{print $1}'`
   printf "%4.1fGiB" $(echo "scale=6; $disk/1048576" | bc) > ${HOME}/.storage/srcnum
   echo "scale=1; 100*$disk/955542528" | bc > ${HOME}/.storage/srcval
   disk=`du -s ${HOME}/pictures 2>/dev/null | awk '{print $1}'`
   printf "%5.1fGiB" $(echo "scale=6; $disk/1048576" | bc) > ${HOME}/.storage/picnum
   echo "scale=1; 100*$disk/955542528" | bc > ${HOME}/.storage/picval
   disk=`du -s ${HOME}/music 2>/dev/null | awk '{print $1}'`
   printf "%5.1fGiB" $(echo "scale=6; $disk/1048576" | bc) > ${HOME}/.storage/musnum
   echo "scale=1; 100*$disk/955542528" | bc > ${HOME}/.storage/musval
   sleep 28800
done

