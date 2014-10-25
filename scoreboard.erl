-module(scoreboard).
-behavior(gen_event).

-export([init/1,handle_event/2,handle_call/2,handle_info/2,code_change/3,terminate/2]).

init([])->{ok,[]}.

handle_event({set_teams,TeamA,TeamB},State)->
    io:format("Scoreboard :Team ~s vs. Team ~s~n",[TeamA,TeamB]),
    {ok,State};

handle_event(_,State)->
    {ok,State}.

handle_call(_,State)->
    {ok,State}.

handle_info(_,State)->
    {ok,State}.


code_change(_OldVersion,State,_Extra)->
    {ok,State}.

terminate(_Reason,_State)->ok.
