-module(lisCom).
-export([compare/2, test/0]).

%Compare two list and return difference of two lists

test()->
	[3,5,7,9]=compare([1,2,3,4,5],[7,2,4,1,9]),
	[2,4]=compare([1,2,3],[1,2,2,3,4]),
	tests_pass.


compare(L1,L2) ->
(L1--L2)++(L2--L1).
