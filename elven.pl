%Prologue implementation

%moves of the automaton
%instead of using ë, we use 3
move(q0,q1,3). 
move(q0,q3,e).
move(q1,q2,a).
move(q2,q14,r). %Final state
move(q3,q4,c).
move(q3,q9,d).
move(q4,q5,h).
move(q5,q6,o).
move(q5,q7,u).
move(q6,q14,r). %Final state
move(q7,q8,i).
move(q8,q14,r). %Final state
move(q9,q10,a).
move(q9,q12,h).
move(q10,q11,i).
move(q11,q14,n). %Final state
move(q12,q13,e). 
move(q13,q14,l). %Final state

%Final state, in which we reach the toggle final state.
final_state(q14).

%base case
%we reach base case when we have gone through all the list
%meaning that the list is empty and we have reached our final state q14
movements(State, []):-
    final_state(State).

%recursive
movements(State, [Head|Tail]):-
    %we get the first state starting from q0, and find the next state
    move(State, NextState, Head),
    %we move in the list
    movements(NextState, Tail).

automaton(Word):-
    %we always start from q0, and move from there
    movements(q0,Word).

%Test cases

%True Test cases
%The automaton accepts the following strings
%You get a positive(true) response in this test cases
word_3ar:-
    automaton([3,a,r]).

word_echor:-
    automaton([e,c,h,o,r]).

word_echuir:-
    automaton([e,c,h,u,i,r]).

word_edhel:-
    automaton([e,d,h,e,l]).

word_edain:-
    automaton([e,d,a,i,n]).

%We test all the true cases
true_testCase:-
    write('Accepting automaton:'), nl,
    word_3ar,
    word_echor,
    word_echuir,
    word_edain,
    word_edhel.

%False test cases
%The automaton does not accept the following strings
%You get a negative (false) response in this test cases

word_hello:-
    automaton([h,e,l,l,o]).

word_ear:-
    automaton([e,a,r]).

%3ar test cases
word_3333ar:-
    automaton([3,3,3,3,a,r]).

word_3aaar:-
    automaton([3,a,a,a,r]).

word_3arr:-
    automaton([3,a,r,r]).

%echor test cases
word_eeeechor:-
    automaton([e,e,e,e,c,h,o,r]).

word_eeeccchor:-
    automaton([e,e,e,c,c,c,h,o,r]).

word_echoooorr:-
    automaton([e,c,h,o,o,o,o,r,r]).

%echuir
word_eeeechuir:-
    automaton([e,e,e,e,c,h,u,i,r]).

word_eccchuuuir:-
    automaton([e,c,c,c,h,u,u,u,i,r]).

word_echiiiirr:-
    automaton([e,c,h,i,i,i,i,r,r]).

%edhel
word_edddel:-
    automaton([e,d,d,d,e,l]).

word_edhhhheeel:-
    automaton([e,d,h,h,h,e,e,e,l]).

word_eeeedhelllll:-
    automaton([e,e,e,e,d,h,e,l,l,l,l,l]).

%edain
word_eddddain:-
    automaton([e,d,d,d,a,i,n]).

word_eeeeedaaiiin:-
    automaton([e,e,e,e,e,d,a,a,i,i,i,n]).

word_edainnnn:-
    automaton([e,d,a,i,n,n,n,n]).

%We test all the negative cases
false_testCase:-
    write('Rejecting automaton:'), nl,
    word_hello,
    word_ear,
    word_3333ar,
    word_3aaar,
    word_3arr,
    word_eeeechor,
    word_eeeccchor,
    word_echoooorr,
    word_eeeechuir,
    word_eccchuuuir,
    word_echiiiirr,
    word_edddel,
    word_edhhhheeel,
    word_eeeedhelllll,
    word_eddddain,
    word_eeeeedaaiiin,
    word_edainnnn.