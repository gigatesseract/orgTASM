touch $1
echo -e "data segment
    a dw ? ; Initialize value of a
    b dw ? ; Initialize value of b
data ends

code segment
    assume cs:code, ds:data
start:



proc_name proc


ret
proc_name endp


code ends
end start" >> $1




