#!/bin/bash

# This will remove a single quote (') that comes with the argument for some reason
truepath=${2::-1}

# This will execute the first argument with the unix path provided by the second argument
$1 "`/home/end/.PlayOnLinux/wineprefix winepath -u "$truepath"`"
