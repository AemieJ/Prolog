/*
 The ancestors is a recursion problem. now we first design a dataset
 with first differentiating the males and females.
*/

male(sahil).
male(hitesh).
male(shubh).
male(lalit).

female(aemie).
female(hemaxi).
female(padma).

% Now we assign a parent predicate to designate the parent (Y) of X .
% Hence parent(X,Y) means Y is parent of X.

parent(sahil,lalit).
parent(shubh,hitesh).
parent(aemie,hitesh).
parent(shubh,hemaxi).
parent(aemie,hemaxi).
parent(hemaxi,padma).

%Now we assign whether the parent is a male or female.
%i.e mother or father.
mother(X,Y) :- parent(X,Y),female(Y).
father(X,Y) :- parent(X,Y),male(Y).

%We will define the ancestors which fall into two types.
%first include ancestor is directly a parent
% second is if Y is parent of X and Z is ancestor of Y then Z is also
% ancestor of X where the recursion comes in.

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Z) :- parent(X,Y),ancestor(Y,Z).

% This gives the list of all ancestors till it returns false.


