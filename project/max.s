# SVPC rd, y
# LD rd, rs
# ST rt, rs
# ADD rd, rs, rt
# INC rd, rs, y
# NEG rd, rs
# SUB rd, rs, rt
# J rs
# BRZ rs
# BRN rs
# MAX rd, rs, rt

# max{a1, a2 ... an}
# Without MAX instruction
SVPC x9, 0      //save start
LD x4, length   //load length
LD x7, 1        //how many elements have been counted
LD x5, a        //address of the start of the array a
LD x1, x5       //load first element of the array

SVPC x6, 0      //save spot so we can jump back
INC x5, x5, 1   //move pointer to next address
INC x7, x7, 1   //increment counter
SUB x3, x7, x4  //check if we have reached the end
BRZ x9          //restart

LD x2, x5       //load next element
SUB x3, x2, x1  //x2 - x1
BRN x6          //compare to next element

INC x1, x2, 0   //store new max
J x6            //jump back to start

# With MAX instruction
SVPC x9, 0      //save start
LD x2, length   //load length
LD x3, a        //address of the start of the array a
MAX x1, x2, x3  //gets max using length and starting address
BRZ x9          //finished, so restart


