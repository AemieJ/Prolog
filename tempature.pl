/*
 The aim for this problem is that we make a databases for different
 temperatures or we can even assign it but the main problem is that
 we have initialized heat to be turned off so if the termpature is
 greater than 80 we take no action and we add cut clause to not move it
 to the else statement (no backtracking) . Now if the temperature is
 less than 70 we need it to turn it on so what the statement is
 heat(off),!. is true hence we do turn on heat
*/

temp(81).
temp(72).
temp(68).
temp(65).

heat(off).

action(X,'Turn off Heat') :-
      X>80,
      not(heat(off)),!.
action(X,'Turn on Heat') :-
      X<70,
      heat(off),!.
action(__,'Take no action').

thermostat(Action) :-
      temp(X),
      action(X,Action),
      write(X:Action),nl,
      fail.
thermostat(Action).
