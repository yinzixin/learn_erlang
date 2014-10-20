-module(test).
-compile(export_all).

main()->
    D=dict:new(),
    try  dict:find(joe,D) of
        _->ok
    catch
     _:Why->io:format("Error caught ~p",[Why])
    end.
