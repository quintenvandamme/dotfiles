import os
import time
import subprocess

## repeat after x seconds
REPEAT= 10.0

START_TIME = time.time()
while True:
    subprocess.call("./bat.sh", shell=True) 
    time.sleep((REPEAT) - ((time.time() - START_TIME) % (REPEAT)))