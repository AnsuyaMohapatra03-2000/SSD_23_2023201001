#!/bin/bash

ls -la $1 |  awk '(/rwx-w-rwx/) || (/rwx-w-r-x/) || (/rwx-w--wx/) || (/rwx-w---x/)  || (/rwx---rwx/) || (/rwx---r-x/) || (/rwx----wx/) || (/rwx-----x/)  {print $0}' 
