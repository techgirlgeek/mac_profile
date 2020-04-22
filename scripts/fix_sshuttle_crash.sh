#!/bin/bash
cd /Library/LaunchDaemons

for i in `ls com.symantec*`; do sudo mv $i $i.bak; done
