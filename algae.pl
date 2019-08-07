/*
 This problem is focused on the fact that in the pond there are many
 living beings so let's say we have a databases of the living
 things(sample) in the pond . Now if we have an algae in the sample we
 have to throw an exception there and ignore this sample and not display
 it.
*/

%Samples
sample([frog,turtle,salamander]).
sample([tadpole,algae,catfish]).
sample([turtle,salamander,trout]).

% Exception handling with concatenation of cut clause(!) and fail
% clause(fail).

test_sample(X):-
    member(algae,X),!,fail.
test_sample(X):-
    %not(member(algae,X)),
    write(X),nl.

study_sample :-
    sample(X),
    test_sample(X),
    fail.
study_sample.

/*
 Explanation of the code : let's say our sample contains algae so now it
 will pass through the test_sample and member(algae,X) will return true
 and hence it will pass on to the next conjuction predicate ,the cut
 clause (!) now when it reaches there it means ok the sample has
 satisfied the condn that it has algae in it hence it will not look for
 any other code or backtrack , after that comes the fail clause now what
 it does is say we found algae and we are not going to backtrack so now
 the fail clause will uninstatinate this sample with the variable and
 instatinate with the next sample if there any.
*/
