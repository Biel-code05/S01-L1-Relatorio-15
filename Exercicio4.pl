% 1) disciplina_raiz(D)
% Verdadeira se D NÃO tem pré-requisitos.
disciplina_raiz(D) :-
    disciplina(D, _, _),
    \+ prerequisito(D, _).

% 2) disciplina_folha(D)
% Verdadeira se D NÃO é pré-requisito de nenhuma outra.
disciplina_folha(D) :-
    disciplina(D, _, _),
    \+ prerequisito(_, D).

% 3) Query:
% Disciplinas que são disciplina_raiz E NÃO pertencem à área 'aplicacoes'.
% ?- disciplina_raiz(D), disciplina(D, _, Area), Area \= aplicacoes.
% Esperado: D = programacao1 ; D = calculo1.
