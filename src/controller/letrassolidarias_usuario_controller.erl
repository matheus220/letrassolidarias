-module(letrassolidarias_usuario_controller,[Req]).
-compile(export_all).

todos('GET', []) -> 
	Tipos = "[]",
	Usuarios = boss_db:execute("SELECT array_to_json(array_agg(row_to_json(e)))
                         FROM (SELECT * FROM usuario) e"),
	{ok,_,[{S}]} = Usuarios,
	%{json, [{usuarios, S}, {tipos, Tipos}]}.
	{output,["{\"usuarios\":"++binary_to_list(S)++",
	           \"Tipo\":"++Tipos++"}"], base:cabecalho_json()}.