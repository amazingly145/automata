%Maping/automaton states

%Ear
move(q0,q1);
move(q0,q2);
move(q0,q5); %death state
move(q1,q3);
move(q1,q5); %death state
move(q3,q4); %final state Ear
move(q3,q5); %death state
move(q4,q5);
move(q2,q6);
move(q2,q15);
move(q2,q10); %death state
move(q6,q7);
move(q6,q10); %death state
move(q7,q8);
move(q7,q11);
move(q7,q10); %death state
move(q8,q9); %final state Echor
move(q8,q10); %death state
move(q9,q10); %death state
move(q11,q12);
move(q11,q14): %death state
move(q12,q13); %final state Echuir
move(q12,q14); %death state
move(q13,q14); %death state
move(q15,q16);
move(q15,q17);
move(q15,q20); %death state
move(q16,q18);
move(q16,q20); %death state
move(q18,q19);
move(q18,q20); %death state
move(q19,q20); %death state
move(q17,q21); 
move(q17,q23); %death state
move(q21,q22); %final state
move(q21,q23); %death state
move(q22,q23); %death state




%Confirm states
confirm_state(q4);
confirm_state(q9);
confirm_state(q13);
confirm_state(q19);
confirm_state(q22);

%Not accepting state
wrong_state(q5);
wrong_state(q10);
wrong_state(q14);
wrong_state(q20);
wrong_state(q23);

