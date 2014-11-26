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
  | VAR of STRING
end;

open Obj Parsing;
prim_val vector_ : int -> 'a -> 'a Vector.vector = 2 "make_vect";
prim_val update_ : 'a Vector.vector -> int -> 'a -> unit = 3 "set_vect_item";


open FEIEF;

(* Line 9, file Parser.sml *)
val yytransl = #[
  257 (* AND *),
  258 (* DOT *),
  259 (* EOF *),
  260 (* EXISTS *),
  261 (* FALSE *),
  262 (* FORALL *),
  263 (* IMPLIES *),
  264 (* LPAR *),
  265 (* NOT *),
  266 (* OR *),
  267 (* RPAR *),
  268 (* TRUE *),
  269 (* VAR *),
    0];

val yylhs = "\255\255\
\\001\000\002\000\002\000\002\000\000\000";

val yylen = "\002\000\
\\002\000\003\000\003\000\002\000\002\000";

val yydefred = "\000\000\
\\000\000\000\000\000\000\005\000\000\000\000\000\000\000\001\000\
\\000\000\000\000\000\000";

val yydgoto = "\002\000\
\\004\000\005\000";

val yysindex = "\007\000\
\\007\255\000\000\007\255\000\000\255\254\000\000\007\255\000\000\
\\007\255\000\000\000\000";

val yyrindex = "\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\255\000\000\000\000\
\\000\000\003\255\004\255";

val yygindex = "\000\000\
\\000\000\008\000";

val YYTABLESIZE = 17;
val yytable = "\007\000\
\\004\000\008\000\004\000\003\000\002\000\003\000\002\000\001\000\
\\009\000\004\000\006\000\000\000\003\000\002\000\010\000\003\000\
\\011\000";

val yycheck = "\001\001\
\\001\001\003\001\003\001\001\001\001\001\003\001\003\001\001\000\
\\010\001\010\001\003\000\255\255\010\001\010\001\007\000\009\001\
\\009\000";

val yyact = vector_ 6 (fn () => ((raise Fail "parser") : obj));
(* Rule 1, file Parser.grm, line 23 *)
val _ = update_ yyact 1
(fn () => repr(let
val d__1__ = peekVal 1 : FEIEF.Exp
in
( (d__1__) ) end : FEIEF.Expr))
;
(* Rule 2, file Parser.grm, line 26 *)
val _ = update_ yyact 2
(fn () => repr(let
val d__1__ = peekVal 2 : FEIEF.Exp
val d__3__ = peekVal 0 : FEIEF.Exp
in
( Or ((d__1__), (d__3__)) ) end : FEIEF.Exp))
;
(* Rule 3, file Parser.grm, line 27 *)
val _ = update_ yyact 3
(fn () => repr(let
val d__1__ = peekVal 2 : FEIEF.Exp
val d__3__ = peekVal 0 : FEIEF.Exp
in
( And ((d__1__), (d__3__)) ) end : FEIEF.Exp))
;
(* Rule 4, file Parser.grm, line 28 *)
val _ = update_ yyact 4
(fn () => repr(let
val d__2__ = peekVal 0 : FEIEF.Exp
in
( Not ((d__2__)) ) end : FEIEF.Exp))
;
(* Entry Prog *)
val _ = update_ yyact 5 (fn () => raise yyexit (peekVal 0));
val yytables : parseTables =
  ( yyact,
    yytransl,
    yylhs,
    yylen,
    yydefred,
    yydgoto,
    yysindex,
    yyrindex,
    yygindex,
    YYTABLESIZE,
    yytable,
    yycheck );
fun Prog lexer lexbuf = yyparse yytables 1 lexer lexbuf;
