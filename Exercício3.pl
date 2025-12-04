% 1) especialista_comp(Aluno)
% Verdadeira se Aluno concluiu pelo menos duas disciplinas
% da área 'computacao'.
especialista_comp(Aluno) :-
    concluiu(Aluno, D1),
    concluiu(Aluno, D2),
    D1 \= D2,
    disciplina(D1, _, computacao),
    disciplina(D2, _, computacao).

% 2) deficiencia_mat(Aluno)
% Verdadeira se Aluno não concluiu NENHUMA disciplina da área 'matematica'.
deficiencia_mat(Aluno) :-
    \+ (disciplina(D, _, matematica),
        concluiu(Aluno, D)).
