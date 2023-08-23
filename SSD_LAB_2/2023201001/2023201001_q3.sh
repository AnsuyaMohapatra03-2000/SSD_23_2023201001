#!/bin/bash

# ~/Desktop/C++ Codes/DSAPS
ls -l $1 |  grep "cpp" | awk '{print $9 }' 
