-module(lisMaj).
-export([getMaj/1, test/0]).

test() ->
	[2]=getMaj([2,3,4,5,2,2]),
	[2,3]=getMaj([2,3,4,5,2,2,2,3,3,3]),
	tests_pass.

checkMem(_, [])-> [];
checkMem(Num, [Num|_]) -> [Num];
checkMem(Num, [_|T]) -> checkMem(Num, T).

getMaj(L) -> getMaj(L, []).
getMaj([], Res) -> lists:reverse(lisZip:zip(Res));
getMaj([H|T], Res) ->getMaj(T,checkMem(H,T)++Res).
