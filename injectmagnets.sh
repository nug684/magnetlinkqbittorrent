#!/bin/bash

while read magnet ; do qbt torrent add url $magnet ; done <"$1"
