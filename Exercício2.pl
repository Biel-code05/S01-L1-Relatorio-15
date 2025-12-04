% 1) Regra auxiliar falta_concluir(Aluno, Disciplina)
% Verdadeira se Disciplina é pré-requisito de alguma matéria
% E o Aluno ainda não a concluiu.
falta_concluir(Aluno, Disciplina) :-
    prerequisito(_, Disciplina),
    \+ concluiu(Aluno, Disciplina).

% 2) Regra aluno_apto(Aluno, Disciplina)
% Verdadeira se:
%  - Disciplina NÃO é da área 'fundamental'
%  - Aluno NÃO concluiu Disciplina ainda (apto a cursar)
%  - Aluno concluiu TODOS os pré-requisitos diretos de Disciplina
aluno_apto(Aluno, Disciplina) :-
    disciplina(Disciplina, _, Area),
    Area \= fundamental,
    \+ concluiu(Aluno, Disciplina),
    \+ ( prerequisito(Disciplina, Pre),
         \+ concluiu(Aluno, Pre)
       ).

% 3) Queries:
% a) Quais disciplinas joao está apto a cursar?
% ?- aluno_apto(joao, D).
% Resultado esperado (pela base): 
% D = algoritmos ;
% D = banco_dados ;
% D = redes ;
% D = teoria_grafos ;
% D = estatistica ;
% D = sistemas_operacionais.

% b) Maria está apta a cursar inteligencia_artificial?
% ?- aluno_apto(maria, inteligencia_artificial).
% Esperado: false.  (Ela não concluiu algoritmos.)
