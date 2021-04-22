#!/bin/bash

while read magnet ; do if [[ $magnet == *"magnet:"* ]]; then  echo $magnet | awk -F '"' '{ print $6 }'  ; fi ; done <"$1" >>"$2"
