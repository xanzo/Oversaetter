local
type t__1__ = (int*int)
type t__2__ = (int*int)
type t__3__ = char*(int*int)
type t__4__ = (int*int)
type t__5__ = (int*int)
type t__6__ = (int*int)
type t__7__ = (int*int)
type t__8__ = (int*int)
type t__9__ = (int*int)
type t__10__ = (int*int)
type t__11__ = (int*int)
type t__12__ = string*(int*int)
type t__13__ = (int*int)
type t__14__ = (int*int)
type t__15__ = (int*int)
type t__16__ = (int*int)
type t__17__ = (int*int)
type t__18__ = (int*int)
type t__19__ = (int*int)
type t__20__ = (int*int)
type t__21__ = (int*int)
type t__22__ = (int*int)
type t__23__ = (int*int)
type t__24__ = (int*int)
type t__25__ = int*(int*int)
type t__26__ = (int*int)
type t__27__ = (int*int)
type t__28__ = (int*int)
type t__29__ = (int*int)
type t__30__ = (int*int)
type t__31__ = (int*int)
type t__32__ = (int*int)
type t__33__ = (int*int)
type t__34__ = (int*int)
type t__35__ = string*(int*int)
type t__36__ = (int*int)
type t__37__ = (int*int)
in
datatype token =
    BOOL of t__1__
  | CHAR of t__2__
  | CHARLIT of t__3__
  | COMMA of t__4__
  | DEQ of t__5__
  | ELSE of t__6__
  | EOF of t__7__
  | EQ of t__8__
  | FILTER of t__9__
  | FN of t__10__
  | FUN of t__11__
  | ID of t__12__
  | IF of t__13__
  | IN of t__14__
  | INT of t__15__
  | IOTA of t__16__
  | LBRACKET of t__17__
  | LCURLY of t__18__
  | LET of t__19__
  | LPAR of t__20__
  | LTH of t__21__
  | MAP of t__22__
  | MINUS of t__23__
  | MULT of t__24__
  | NUM of t__25__
  | OP of t__26__
  | PLUS of t__27__
  | RBRACKET of t__28__
  | RCURLY of t__29__
  | READ of t__30__
  | REDUCE of t__31__
  | REPLICATE of t__32__
  | RPAR of t__33__
  | SCAN of t__34__
  | STRINGLIT of t__35__
  | THEN of t__36__
  | WRITE of t__37__
end;

open Obj Parsing;
prim_val vector_ : int -> 'a -> 'a Vector.vector = 2 "make_vect";
prim_val update_ : 'a Vector.vector -> int -> 'a -> unit = 3 "set_vect_item";


(* A parser definition for Fasto, for use with mosmlyac. *)

open Fasto
open Fasto.UnknownTypes

(* Line 12, file Parser.sml *)
val yytransl = #[
  257 (* BOOL *),
  258 (* CHAR *),
  259 (* CHARLIT *),
  260 (* COMMA *),
  261 (* DEQ *),
  262 (* ELSE *),
  263 (* EOF *),
  264 (* EQ *),
  265 (* FILTER *),
  266 (* FN *),
  267 (* FUN *),
  268 (* ID *),
  269 (* IF *),
  270 (* IN *),
  271 (* INT *),
  272 (* IOTA *),
  273 (* LBRACKET *),
  274 (* LCURLY *),
  275 (* LET *),
  276 (* LPAR *),
  277 (* LTH *),
  278 (* MAP *),
  279 (* MINUS *),
  280 (* MULT *),
  281 (* NUM *),
  282 (* OP *),
  283 (* PLUS *),
  284 (* RBRACKET *),
  285 (* RCURLY *),
  286 (* READ *),
  287 (* REDUCE *),
  288 (* REPLICATE *),
  289 (* RPAR *),
  290 (* SCAN *),
  291 (* STRINGLIT *),
  292 (* THEN *),
  293 (* WRITE *),
    0];

val yylhs = "\255\255\
\\001\000\002\000\002\000\003\000\003\000\004\000\004\000\004\000\
\\004\000\005\000\005\000\009\000\009\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\007\000\007\000\008\000\000\000";

val yylen = "\002\000\
\\002\000\003\000\002\000\007\000\006\000\001\000\001\000\001\000\
\\003\000\004\000\002\000\001\000\001\000\001\000\001\000\001\000\
\\001\000\003\000\003\000\003\000\003\000\003\000\003\000\006\000\
\\004\000\003\000\004\000\004\000\004\000\006\000\008\000\006\000\
\\009\000\003\000\006\000\004\000\003\000\001\000\001\000\002\000";

val yydefred = "\000\000\
\\000\000\000\000\000\000\040\000\000\000\007\000\008\000\006\000\
\\000\000\000\000\000\000\001\000\000\000\002\000\000\000\009\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\015\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\014\000\
\\000\000\000\000\000\000\017\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\010\000\000\000\000\000\026\000\000\000\000\000\
\\000\000\000\000\018\000\000\000\034\000\039\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\036\000\025\000\000\000\029\000\037\000\000\000\000\000\
\\027\000\013\000\012\000\000\000\000\000\000\000\028\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\032\000\
\\000\000\000\000\030\000\000\000\000\000\000\000\031\000\033\000";

val yydgoto = "\002\000\
\\004\000\005\000\010\000\019\000\020\000\045\000\046\000\071\000\
\\092\000";

val yysindex = "\005\000\
\\013\255\000\000\082\255\000\000\015\255\000\000\000\000\000\000\
\\082\255\013\255\033\255\000\000\002\255\000\000\031\255\000\000\
\\011\255\030\255\040\255\021\255\102\255\051\255\049\255\000\000\
\\254\254\102\255\041\255\102\255\048\255\102\255\045\255\000\000\
\\046\255\050\255\054\255\000\000\057\255\128\000\082\255\102\255\
\\102\255\076\255\243\255\102\255\063\000\052\255\061\255\248\255\
\\068\255\082\255\246\254\102\255\102\255\102\255\102\255\102\255\
\\102\255\102\255\000\000\128\000\072\000\000\000\053\255\102\255\
\\253\255\102\255\000\000\102\255\000\000\000\000\078\255\058\255\
\\026\255\086\255\084\000\012\000\243\254\243\254\069\255\128\000\
\\069\255\000\000\000\000\107\000\000\000\000\000\118\000\102\255\
\\000\000\000\000\000\000\096\255\102\255\102\255\000\000\102\255\
\\102\255\017\000\102\255\093\000\032\000\128\000\128\000\000\000\
\\098\000\102\255\000\000\102\255\037\000\052\000\000\000\000\000";

val yyrindex = "\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\095\255\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\070\255\000\000\000\000\
\\035\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\253\254\000\000\000\000\
\\000\000\000\000\000\000\000\000\244\254\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\018\255\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\168\255\201\255\124\255\188\255\
\\157\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\221\255\232\255\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000";

val yygindex = "\000\000\
\\000\000\094\000\000\000\254\255\071\000\235\255\217\255\061\000\
\\000\000";

val YYTABLESIZE = 411;
val yytable = "\038\000\
\\011\000\070\000\063\000\005\000\043\000\001\000\013\000\005\000\
\\048\000\056\000\057\000\006\000\007\000\058\000\041\000\073\000\
\\038\000\042\000\060\000\061\000\038\000\012\000\065\000\003\000\
\\004\000\008\000\086\000\009\000\004\000\016\000\075\000\076\000\
\\077\000\078\000\079\000\080\000\081\000\021\000\016\000\016\000\
\\016\000\016\000\084\000\018\000\015\000\016\000\087\000\072\000\
\\016\000\090\000\017\000\022\000\091\000\023\000\039\000\016\000\
\\040\000\016\000\016\000\047\000\044\000\016\000\016\000\016\000\
\\049\000\050\000\098\000\016\000\068\000\051\000\016\000\100\000\
\\101\000\052\000\102\000\103\000\053\000\105\000\024\000\070\000\
\\067\000\088\000\006\000\007\000\109\000\083\000\110\000\025\000\
\\026\000\093\000\089\000\027\000\057\000\028\000\029\000\030\000\
\\008\000\031\000\009\000\099\000\032\000\003\000\011\000\014\000\
\\024\000\033\000\034\000\035\000\062\000\059\000\036\000\074\000\
\\037\000\025\000\026\000\000\000\000\000\027\000\000\000\028\000\
\\029\000\030\000\000\000\031\000\000\000\000\000\032\000\020\000\
\\020\000\020\000\020\000\033\000\034\000\035\000\020\000\000\000\
\\036\000\020\000\037\000\000\000\000\000\000\000\000\000\000\000\
\\020\000\000\000\020\000\000\000\000\000\000\000\020\000\020\000\
\\020\000\000\000\000\000\000\000\020\000\000\000\000\000\020\000\
\\019\000\019\000\019\000\019\000\000\000\000\000\000\000\019\000\
\\000\000\000\000\019\000\022\000\022\000\022\000\022\000\000\000\
\\000\000\019\000\022\000\019\000\000\000\022\000\000\000\019\000\
\\019\000\019\000\000\000\000\000\022\000\019\000\000\000\021\000\
\\019\000\021\000\021\000\022\000\022\000\000\000\021\000\000\000\
\\022\000\021\000\000\000\022\000\023\000\023\000\023\000\023\000\
\\000\000\000\000\000\000\023\000\000\000\000\000\023\000\021\000\
\\021\000\000\000\000\000\000\000\021\000\023\000\000\000\021\000\
\\024\000\000\000\024\000\024\000\023\000\023\000\000\000\024\000\
\\000\000\023\000\024\000\035\000\023\000\035\000\035\000\000\000\
\\000\000\000\000\035\000\000\000\000\000\035\000\000\000\054\000\
\\024\000\024\000\000\000\000\000\054\000\024\000\000\000\000\000\
\\024\000\054\000\000\000\035\000\035\000\000\000\000\000\055\000\
\\035\000\056\000\057\000\035\000\055\000\058\000\056\000\057\000\
\\054\000\055\000\058\000\056\000\057\000\054\000\064\000\058\000\
\\069\000\000\000\000\000\000\000\000\000\085\000\000\000\000\000\
\\055\000\000\000\056\000\057\000\054\000\055\000\058\000\056\000\
\\057\000\054\000\000\000\058\000\095\000\000\000\000\000\000\000\
\\000\000\104\000\000\000\000\000\055\000\000\000\056\000\057\000\
\\054\000\055\000\058\000\056\000\057\000\000\000\000\000\058\000\
\\107\000\000\000\066\000\054\000\000\000\111\000\000\000\000\000\
\\055\000\000\000\056\000\057\000\054\000\000\000\058\000\000\000\
\\000\000\000\000\000\000\055\000\112\000\056\000\057\000\094\000\
\\054\000\058\000\000\000\000\000\055\000\000\000\056\000\057\000\
\\106\000\054\000\058\000\082\000\000\000\108\000\054\000\000\000\
\\055\000\000\000\056\000\057\000\000\000\000\000\058\000\054\000\
\\096\000\055\000\000\000\056\000\057\000\000\000\055\000\058\000\
\\056\000\057\000\054\000\000\000\058\000\000\000\000\000\055\000\
\\000\000\056\000\057\000\097\000\054\000\058\000\000\000\000\000\
\\000\000\000\000\055\000\000\000\056\000\057\000\000\000\000\000\
\\058\000\000\000\000\000\000\000\055\000\000\000\056\000\057\000\
\\000\000\000\000\058\000";

val yycheck = "\021\000\
\\003\000\012\001\042\000\007\001\026\000\001\000\009\000\011\001\
\\030\000\023\001\024\001\001\001\002\001\027\001\017\001\026\001\
\\029\001\020\001\040\000\041\000\033\001\007\001\044\000\011\001\
\\007\001\015\001\066\000\017\001\011\001\028\001\052\000\053\000\
\\054\000\055\000\056\000\057\000\058\000\008\001\004\001\005\001\
\\006\001\007\001\064\000\033\001\012\001\011\001\068\000\050\000\
\\014\001\024\001\020\001\012\001\027\001\033\001\004\001\021\001\
\\008\001\023\001\024\001\012\001\020\001\027\001\028\001\029\001\
\\020\001\020\001\088\000\033\001\008\001\020\001\036\001\093\000\
\\094\000\020\001\096\000\097\000\020\001\099\000\003\001\012\001\
\\029\001\004\001\001\001\002\001\106\000\033\001\108\000\012\001\
\\013\001\004\001\033\001\016\001\024\001\018\001\019\001\020\001\
\\015\001\022\001\017\001\004\001\025\001\007\001\033\001\010\000\
\\003\001\030\001\031\001\032\001\033\001\039\000\035\001\051\000\
\\037\001\012\001\013\001\255\255\255\255\016\001\255\255\018\001\
\\019\001\020\001\255\255\022\001\255\255\255\255\025\001\004\001\
\\005\001\006\001\007\001\030\001\031\001\032\001\011\001\255\255\
\\035\001\014\001\037\001\255\255\255\255\255\255\255\255\255\255\
\\021\001\255\255\023\001\255\255\255\255\255\255\027\001\028\001\
\\029\001\255\255\255\255\255\255\033\001\255\255\255\255\036\001\
\\004\001\005\001\006\001\007\001\255\255\255\255\255\255\011\001\
\\255\255\255\255\014\001\004\001\005\001\006\001\007\001\255\255\
\\255\255\021\001\011\001\023\001\255\255\014\001\255\255\027\001\
\\028\001\029\001\255\255\255\255\021\001\033\001\255\255\004\001\
\\036\001\006\001\007\001\028\001\029\001\255\255\011\001\255\255\
\\033\001\014\001\255\255\036\001\004\001\005\001\006\001\007\001\
\\255\255\255\255\255\255\011\001\255\255\255\255\014\001\028\001\
\\029\001\255\255\255\255\255\255\033\001\021\001\255\255\036\001\
\\004\001\255\255\006\001\007\001\028\001\029\001\255\255\011\001\
\\255\255\033\001\014\001\004\001\036\001\006\001\007\001\255\255\
\\255\255\255\255\011\001\255\255\255\255\014\001\255\255\005\001\
\\028\001\029\001\255\255\255\255\005\001\033\001\255\255\255\255\
\\036\001\005\001\255\255\028\001\029\001\255\255\255\255\021\001\
\\033\001\023\001\024\001\036\001\021\001\027\001\023\001\024\001\
\\005\001\021\001\027\001\023\001\024\001\005\001\036\001\027\001\
\\033\001\255\255\255\255\255\255\255\255\033\001\255\255\255\255\
\\021\001\255\255\023\001\024\001\005\001\021\001\027\001\023\001\
\\024\001\005\001\255\255\027\001\033\001\255\255\255\255\255\255\
\\255\255\033\001\255\255\255\255\021\001\255\255\023\001\024\001\
\\005\001\021\001\027\001\023\001\024\001\255\255\255\255\027\001\
\\033\001\255\255\004\001\005\001\255\255\033\001\255\255\255\255\
\\021\001\255\255\023\001\024\001\005\001\255\255\027\001\255\255\
\\255\255\255\255\255\255\021\001\033\001\023\001\024\001\004\001\
\\005\001\027\001\255\255\255\255\021\001\255\255\023\001\024\001\
\\004\001\005\001\027\001\028\001\255\255\004\001\005\001\255\255\
\\021\001\255\255\023\001\024\001\255\255\255\255\027\001\005\001\
\\006\001\021\001\255\255\023\001\024\001\255\255\021\001\027\001\
\\023\001\024\001\005\001\255\255\027\001\255\255\255\255\021\001\
\\255\255\023\001\024\001\014\001\005\001\027\001\255\255\255\255\
\\255\255\255\255\021\001\255\255\023\001\024\001\255\255\255\255\
\\027\001\255\255\255\255\255\255\021\001\255\255\023\001\024\001\
\\255\255\255\255\027\001";

val yyact = vector_ 41 (fn () => ((raise Fail "parser") : obj));
(* Rule 1, file Parser.grm, line 37 *)
val _ = update_ yyact 1
(fn () => repr(let
val d__1__ = peekVal 1 : Fasto.UnknownTypes.FunDec list
val d__2__ = peekVal 0 : (int*int)
in
( (d__1__) ) end : Fasto.UnknownTypes.Prog))
;
(* Rule 2, file Parser.grm, line 40 *)
val _ = update_ yyact 2
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.FunDec
val d__3__ = peekVal 0 : Fasto.UnknownTypes.FunDec list
in
( (d__2__) :: (d__3__) ) end : Fasto.UnknownTypes.FunDec list))
;
(* Rule 3, file Parser.grm, line 41 *)
val _ = update_ yyact 3
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : Fasto.UnknownTypes.FunDec
in
( (d__2__) :: [] ) end : Fasto.UnknownTypes.FunDec list))
;
(* Rule 4, file Parser.grm, line 45 *)
val _ = update_ yyact 4
(fn () => repr(let
val d__1__ = peekVal 6 : Fasto.Type
val d__2__ = peekVal 5 : string*(int*int)
val d__3__ = peekVal 4 : (int*int)
val d__4__ = peekVal 3 : Fasto.Param list
val d__5__ = peekVal 2 : (int*int)
val d__6__ = peekVal 1 : (int*int)
val d__7__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( FunDec (#1 (d__2__), (d__1__), (d__4__), (d__7__), #2 (d__2__)) ) end : Fasto.UnknownTypes.FunDec))
;
(* Rule 5, file Parser.grm, line 47 *)
val _ = update_ yyact 5
(fn () => repr(let
val d__1__ = peekVal 5 : Fasto.Type
val d__2__ = peekVal 4 : string*(int*int)
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( FunDec (#1 (d__2__), (d__1__), [], (d__6__), #2 (d__2__)) ) end : Fasto.UnknownTypes.FunDec))
;
(* Rule 6, file Parser.grm, line 50 *)
val _ = update_ yyact 6
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Int ) end : Fasto.Type))
;
(* Rule 7, file Parser.grm, line 51 *)
val _ = update_ yyact 7
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Bool ) end : Fasto.Type))
;
(* Rule 8, file Parser.grm, line 52 *)
val _ = update_ yyact 8
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Char ) end : Fasto.Type))
;
(* Rule 9, file Parser.grm, line 53 *)
val _ = update_ yyact 9
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.Type
val d__3__ = peekVal 0 : (int*int)
in
( Array (d__2__) ) end : Fasto.Type))
;
(* Rule 10, file Parser.grm, line 56 *)
val _ = update_ yyact 10
(fn () => repr(let
val d__1__ = peekVal 3 : Fasto.Type
val d__2__ = peekVal 2 : string*(int*int)
val d__3__ = peekVal 1 : (int*int)
val d__4__ = peekVal 0 : Fasto.Param list
in
( Param (#1 (d__2__), (d__1__)) :: (d__4__) ) end : Fasto.Param list))
;
(* Rule 11, file Parser.grm, line 57 *)
val _ = update_ yyact 11
(fn () => repr(let
val d__1__ = peekVal 1 : Fasto.Type
val d__2__ = peekVal 0 : string*(int*int)
in
( Param (#1 (d__2__), (d__1__)) :: [] ) end : Fasto.Param list))
;
(* Rule 12, file Parser.grm, line 60 *)
val _ = update_ yyact 12
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( (Lambda
                           (Int, [Param ("x", Int),
                                        Param ("y", Int)],
                            Plus (Var ("x", (d__1__)),
                                        Var ("y", (d__1__)),
                                        (d__1__)) ,(d__1__)))
                        ) end : Fasto.UnknownTypes.FunArg))
;
(* Rule 13, file Parser.grm, line 67 *)
val _ = update_ yyact 13
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( (Lambda
                           (Int, [Param ("x", Int),
                                        Param ("y", Int)],
                            Times (Var ("x", (d__1__)),
                                        Var ("y", (d__1__)),
                                        (d__1__)) ,(d__1__)))
                        ) end : Fasto.UnknownTypes.FunArg))
;
(* Rule 14, file Parser.grm, line 76 *)
val _ = update_ yyact 14
(fn () => repr(let
val d__1__ = peekVal 0 : int*(int*int)
in
( Constant (IntVal (#1 (d__1__)), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 15, file Parser.grm, line 77 *)
val _ = update_ yyact 15
(fn () => repr(let
val d__1__ = peekVal 0 : char*(int*int)
in
( Constant (CharVal (#1 (d__1__)), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 16, file Parser.grm, line 78 *)
val _ = update_ yyact 16
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( Var (d__1__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 17, file Parser.grm, line 79 *)
val _ = update_ yyact 17
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( StringLit (d__1__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 18, file Parser.grm, line 81 *)
val _ = update_ yyact 18
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.Exp list
val d__3__ = peekVal 0 : (int*int)
in
( ArrayLit ((d__2__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 19, file Parser.grm, line 82 *)
val _ = update_ yyact 19
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Plus ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 20, file Parser.grm, line 83 *)
val _ = update_ yyact 20
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Minus((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 21, file Parser.grm, line 84 *)
val _ = update_ yyact 21
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Times((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 22, file Parser.grm, line 85 *)
val _ = update_ yyact 22
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Equal((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 23, file Parser.grm, line 86 *)
val _ = update_ yyact 23
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Less ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 24, file Parser.grm, line 88 *)
val _ = update_ yyact 24
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : Fasto.UnknownTypes.Exp
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( If ((d__2__), (d__4__), (d__6__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 25, file Parser.grm, line 90 *)
val _ = update_ yyact 25
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp list
val d__4__ = peekVal 0 : (int*int)
in
( Apply (#1 (d__1__), (d__3__), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 26, file Parser.grm, line 92 *)
val _ = update_ yyact 26
(fn () => repr(let
val d__1__ = peekVal 2 : string*(int*int)
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : (int*int)
in
( Apply (#1 (d__1__), [], #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 27, file Parser.grm, line 95 *)
val _ = update_ yyact 27
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.Type
val d__4__ = peekVal 0 : (int*int)
in
( Read ((d__3__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 28, file Parser.grm, line 97 *)
val _ = update_ yyact 28
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Write ((d__3__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 29, file Parser.grm, line 99 *)
val _ = update_ yyact 29
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Iota ((d__3__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 30, file Parser.grm, line 101 *)
val _ = update_ yyact 30
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : (int*int)
val d__3__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 0 : (int*int)
in
( Replicate ((d__3__), (d__5__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 31, file Parser.grm, line 103 *)
val _ = update_ yyact 31
(fn () => repr(let
val d__1__ = peekVal 7 : (int*int)
val d__2__ = peekVal 6 : (int*int)
val d__3__ = peekVal 5 : Fasto.UnknownTypes.FunArg
val d__4__ = peekVal 4 : (int*int)
val d__5__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 2 : (int*int)
val d__7__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__8__ = peekVal 0 : (int*int)
in
( Reduce ((d__3__), (d__5__), (d__7__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 32, file Parser.grm, line 105 *)
val _ = update_ yyact 32
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : (int*int)
val d__3__ = peekVal 3 : Fasto.UnknownTypes.FunArg
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 0 : (int*int)
in
( Map ((d__3__), (d__5__), (), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 33, file Parser.grm, line 107 *)
val _ = update_ yyact 33
(fn () => repr(let
val d__1__ = peekVal 8 : (int*int)
val d__2__ = peekVal 7 : (int*int)
val d__3__ = peekVal 6 : (int*int)
val d__4__ = peekVal 5 : Fasto.UnknownTypes.FunArg
val d__5__ = peekVal 4 : (int*int)
val d__6__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__7__ = peekVal 2 : (int*int)
val d__8__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__9__ = peekVal 0 : (int*int)
in
( Reduce ((d__4__), (d__6__), (d__8__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 34, file Parser.grm, line 108 *)
val _ = update_ yyact 34
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__3__ = peekVal 0 : (int*int)
in
( (d__2__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 35, file Parser.grm, line 110 *)
val _ = update_ yyact 35
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : string*(int*int)
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Let (Dec (#1 (d__2__), (d__4__), (d__3__)), (d__6__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 36, file Parser.grm, line 112 *)
val _ = update_ yyact 36
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Index (#1 (d__1__), (d__3__), (), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 37, file Parser.grm, line 115 *)
val _ = update_ yyact 37
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp list
in
( (d__1__) :: (d__3__) ) end : Fasto.UnknownTypes.Exp list))
;
(* Rule 38, file Parser.grm, line 116 *)
val _ = update_ yyact 38
(fn () => repr(let
val d__1__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( (d__1__) :: [] ) end : Fasto.UnknownTypes.Exp list))
;
(* Rule 39, file Parser.grm, line 119 *)
val _ = update_ yyact 39
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( FunName (#1 (d__1__)) ) end : Fasto.UnknownTypes.FunArg))
;
(* Entry Prog *)
val _ = update_ yyact 40 (fn () => raise yyexit (peekVal 0));
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
