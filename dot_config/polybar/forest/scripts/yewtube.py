# ***REMOVED*** (https://github.com/iamtalhaasghar)
# 07-Feb-2022
# A script which returns the name of current song 'yewtube' is playing

# https://stackoverflow.com/questions/6780035/how-to-run-ps-cax-grep-something-in-python

import subprocess
import re
proc1 = subprocess.Popen(['ps', 'x'], stdout=subprocess.PIPE)
proc2 = subprocess.Popen(['grep', 'title'], stdin=proc1.stdout,
                         stdout=subprocess.PIPE, stderr=subprocess.PIPE)

proc1.stdout.close() # Allow proc1 to receive a SIGPIPE if proc2 exits.
out, err = proc2.communicate()

try:
    print('',re.findall('title."(.+)"', str(out))[0])
except Exception as e:
    print('silence everywhere')
