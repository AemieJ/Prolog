/*
 This is a recursion question where you keep calling the function till
 it reaches the value 1 . In conventional programming language it is
 given by : n*factorial(n-1) till n>0 and we will apply the same logic
 in prolog as well.
*/

%Unification occurs when you call the factorial twice.
fact(0,Factorial,Factorial).
fact(Count,Intermediate,Factorial) :-
    C1 is Count-1,
    is(I1,Count*Intermediate),
    fact(C1,I1,Factorial).

/*
  Explanation of this code is : let count be 3 and intermediate be 1 and
  we will be unifying or instatinating our intermediate answer with
  factorial when count=0 . So first when count is 3 C1 is 2 and I1 is 3
  then you call the same function again and then C1 is 1 and I1 is 2*3
  and continue till your count becomes zero and you unify the
  intermediate with the factorial and return it to the user.
*/
