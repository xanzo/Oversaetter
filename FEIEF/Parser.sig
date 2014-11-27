local
in
datatype token =
    AND
  | DOT
  | EOF
  | EXISTS
  | FALSE
  | FORALL
  | IMPLIES
  | LPAR
  | NOT
  | OR
  | RPAR
  | TRUE
  | VAR of string
end;

val Prog :
  (Lexing.lexbuf -> token) -> Lexing.lexbuf -> FEIEF.Expr;
