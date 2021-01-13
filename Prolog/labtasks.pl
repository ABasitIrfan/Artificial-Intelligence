age(joe,23).
age(mary,17).

born(joe,ireland).
boen(mary,scotland).

adult(AGE):-
  AGE>=18.

kid(AGE):-
  (AGE >= 1), (AGE<18).

task 2:

male(peter).
male(Rron).
male(david).
male(robert).
male(donald).
male(steven).
male(francisco).
male(mark).
male(perdo).
male(cleveland).

female(jessica).
female(Sheila).
female(eva).
female(cynthia).
female(sandra).
female(amanda).
female(lula).
female(zula).

parent(peter,ron).
parent(peter,sheila).
parent(peter,robert).
parent(jessica,ron).
parent(jessica,robert).
parent(jessica,sheila).
parent(david,cynthia).
parent(david,steven).
parent(sheila,cynthia).
parent(sheila,steven).
parent(cynthia,mark).
parent(cynthia,lula).
parent(donald,mark).
parent(donald,lula).
parent(steven,perdo).
parent(sandra,perdo).
parent(robert,francisco).
parent(eva,francisco).
parent(francisco,zula).
parent(francisco,cleveland).
parent(amanda,zula).
parent(amanda,cleveland).


father(X,Y):- parent(X,Y), male(X).
mother(X,Y):- parent(X,Y), male(X).
grandparent(X,Z):- parent(X,Y), parent(Y,Z).
grandfather(X,Z):- parent(X,Y), parent(Y,Z), male(X).
grandmother(X,Z):- parent(X,Y), parent(Y,Z), female(X).

sister(X,Y):- parent(Z,X), parent(Z,Y), female(X), not(X=Y).
brother(X,Y):- parent(Z,X), parent(Z,Y), male(X), not(X=Y).
uncle(X,Z):- brother(X,Y), parent(Y,Z), male(X).
aunty(X,Z):- sister(X,Y), female(X).
subling(X,Y):- parent(Z,X), parent(Z,Y), not(X=Y).
cousin(X,Z):- parent(A,X), parent(B,Z), sibling(A,B).
daughter(X,Y):- parent(Y,X), female(X).
son(X,Y):- parent(Y,X),male(X).


task3:
likes(mary,john).
likes(mary,carol).
likes(mary,stephen).
likes(danny,micheal).
likes(peter,carol).
likes(carol,stephen).
likes(brenda,stephen).
likes(stephen,danny).
likes(brenda,carol).
likes(john,mary).
likes(micheal,carol).
likes(micheal,brenda).
likes(micheal,danny).
likes_artist(micheal,danny).
likes_artist(mary,'R.E.M').
likes_artist(mary,'The Cranberries').
likes_artist(danny,'Eric Clapton').
likes_artist(carol,'Cliff Richard').
likes_artist(carol,'The Cranberries').
likes_artist(peter, 'Bob Dylan').
likes_artist(john,'Eric Clapton').
likes_artist(john,'Blur').
likes_artist(micheal,'Elton John').
likes_artist(micheal,'Cliff Richard').
likes_artist(micheal,'Eric Clapton').
likes_artist(micheal,'The Cranberries').
likes_artist(brenda,'Eric Clapton').
likes_artist(brenda,'Bob Dylan').
likes_artist(brenda,'Tanita Tikaram').

music_type('The Cranberries',rock).
music_type('Bob Dylan',rock).
music_type('Bob Dylan',folk).
music_type('Eric Clapton',rock).
music_type('Eric Clapton',blues).
music_type('Tanita Tikaram',folk).
music_type('R.E.M',rock).
music_type('Blur',rock).
music_type('Elton John',pop).
music_type('Cliff Richard',pop).
task 4:
path(town1,town2).
path(town2,town3).
path(town3,town4).
path(town4,town5).
path(town5,town6).

can_get(A,C):- path(A,C).
can_get(A,C):- path(A,B),can_get(B,C).
