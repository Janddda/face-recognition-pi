-module(lisZip).
-export([zip/1, test/0]).

test()->
	[2,3,4,5]=zip([2,3,4,5,2,2,2]),
	[2]=zip([2,2,2,2]),
	tests_pass.

checkNotMem(Num,[]) -> [Num];
checkNotMem(Num,[Num|_]) -> [];
checkNotMem(Num,[_|T]) -> checkNotMem(Num,T).


zip(L1) -> zip(L1,[]).
zip([], Res) -> Res;
zip([H|T], Res) -> zip(T,Res++checkNotMem(H,Res)).
