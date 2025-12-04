% 1) Regra alto_impacto(D)
% Verdadeira se D tiver mais de 5 créditos E
% for pré-requisito de pelo menos duas disciplinas diferentes.
alto_impacto(D) :-
    disciplina(D, Cred, _),
    Cred > 5,
    prerequisito(D1, D),
    prerequisito(D2, D),
    D1 \= D2.

% 2) Query:
% Disciplinas D da área 'matematica' com 4 créditos
% que não são pré-requisito para nenhuma outra disciplina.
% Consulta:
% ?- disciplina(D, 4, matematica), \+ prerequisito(_, D).
% Esperado: D = teoria_grafos.
