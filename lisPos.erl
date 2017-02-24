-module(lisPos).
-export([getPos/2, test/0]).

test()->
	[[3,5],[2]]=getPos([a,f],[d,f,a,d,a,g]),
	[[3,5],[],[1,4]]=getPos([a,h,d],[d,f,a,d,a,g]),
	tests_pass.

getNumPos(Num,L) -> getNumPos(Num, L, 1, []).

getNumPos(_,[],_,Res) -> lists:reverse(Res);
getNumPos(Num,[Num|T],I,Res)->getNumPos(Num,T,I+1,[I|Res]);
getNumPos(Num,[_|T],I, Res)->getNumPos(Num,T,I+1,Res).


getPos(L1,L2) -> getPos(L1,L2,[]).
getPos([],_,Res) -> lists:reverse(Res);
getPos([H|T],L2,Res) -> getPos(T,L2,[getNumPos(H,L2)|Res]).
