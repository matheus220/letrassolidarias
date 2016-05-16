-module(base).
-compile(export_all).

cabecalho_json() ->
            [{"Access-Control-Allow-Origin", "*"},
               {"Access-Control-Allow-Methods",  "GET, POST, OPTIONS"},
               {"Access-Control-Allow-Headers", "X-Requested-With, Content-Type"},
               {"Access-Control-Max-Age", "180"},
               {"Content-Type", "application/json"}].