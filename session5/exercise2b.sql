--S = R1(x), R1(y), W1(x), R2(x)

read1(x):� SELECT�titel�FROM�Boek�WHERE�isbn�=�'0136067018';
read1(y):� SELECT�titel�FROM�Boek�WHERE�isbn�=�'0321228383';
write1(x): UPDATE�Boek�SET�titel�=�titel�||�'�deel�1'�WHERE�isbn�=�'0136067018';
read2(x): SELECT�titel�FROM�Boek�WHERE�isbn�=�'�0136067018';