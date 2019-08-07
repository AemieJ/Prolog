/*
 This is majorily an explanation of the two inbuilt predicates/functions
 of list . This includes member and append functions.
*/

%member(term,L) checks whether the term is present in the list or not.
%This can be done in two ways .
% Method 1:X is a member of the list if X is present in the head of the
% list.
% member(X,[X|_]).
% Method 2:X is a member of the list if it is a member of the tail list.
% member(X,[_|Y) :- member(X,Y).

test_sample :-
    member(2,[1,2,4,5]),!.

% append(list1,list2,newlist) is defined in a little different way in
% prolog . In prolog it is defined as append([H|T],L,[H,T1]) :-
% append(T,L,T1). So let's understand this by an example so lets say I
% want to append [1,2] and [3,4] to give me [1,2,3,4] so what prolog
% does is : (1) append([1|2],[3,4],[1|T1]) :- append(2,[3,4],T1).
% (2) append([2|],[3,4],[2|T1]) :- append([],[3,4],T1).
% (3) append([],[3,4],T1) is equal to T1 = [3,4] now backtracking so
% taking T1 from step 3 to step 2 we get [2,3,4] and moving further up
% we get T1 as [1,2,3,4].

join_sample :-
    append([1,2,3],[4,5,6],X),
    write(X),nl.

list :-
    test_sample;
    join_sample.
