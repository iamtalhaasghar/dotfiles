import glob,re,os
f = glob.glob('/storage/emulated/0/Movies/ertugral/*.webm')
for i in f:
    print(i)
    n = re.findall('(.*) \[.*\]',i)[0]+".webm"
    os.rename(i,n)
