#!/usr/bin/env bash
# USAGE: ./prepare filename.asm [one or more filenames]
n=$# 
if [ $# -eq 0 ]
then
    echo "Please specify at least one file name (ending with .asm)"

else
for ((i=1;i<=n;i++))
do
	touch ${!i}
echo -e "
data segment
    a dw ? ; Initialize value of a
    b dw ? ; Initialize value of b
data ends

code segment
    assume cs:code, ds:data
start:

    mov ax, data
    mov ds, ax ; Initialize Data Segment


proc_name proc

    ret
proc_name endp

code ends
end start

" > ${!i}
echo ${!i} written
done	 
fi
    
