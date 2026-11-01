-module(main).
-export([start/0]).

start() ->
  Values = [3, 1, 4, 1, 5, 9],
  io:format("Hello from Erlang~n"),
  io:format("sum: ~p~n", [lists:sum(Values)]).
