--T1: R1(x), R1(y), W1(x), W1(y)
--T2: R2(x), W2(x)

--Schedule S is niet-serialiseerbaar:

S = R2(x), W1(x), W2(x)

--W = Update.
--R = Read.

--1 -> transactie 1.
--2 -> transactie 2.

--x = 0136067018
--y = 0321228383