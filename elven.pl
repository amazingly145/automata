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