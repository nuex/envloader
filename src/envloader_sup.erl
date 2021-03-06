-module(envloader_sup).
-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor Callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

%% ====================================================================
%% API Functions
%% ====================================================================

start_link() ->
  supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%% ====================================================================
%% Supervisor Callbacks
%% ====================================================================

init([]) ->
  {ok, {{one_for_one, 10, 10}, []}}.
