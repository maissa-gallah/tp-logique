fibonacci(0,1).
fibonacci(1,1).
fibonacci(N,V):-(N>1, A is N-1 ,B is N-2 ,fibonacci(A,V1),fibonacci(B,V2),V is V1 +V2;V=1) .
