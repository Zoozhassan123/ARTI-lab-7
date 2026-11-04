% ARTI 303 - lab7

% Task 1 - Delete Every Occurrence

% Base case: empty list
deleteElement(_, [], []).

% Remove every occurrence of X
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% Keep elements that are not X
deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).

% Task 2 - Add at the End

% Base case: adding X to an empty list
add_at_the_end(X, [], [X]).

% Keep the head and add X at the end of the tail
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).