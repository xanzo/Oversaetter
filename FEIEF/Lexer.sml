local open Obj Lexing in



exception Error of string;


fun action_14 lexbuf = (
 raise Error ("Unexpected symbol on input: " ^ (getLexeme lexbuf)) )
and action_13 lexbuf = (
 Parser.EOF )
and action_12 lexbuf = (
 Parser.TRUE )
and action_11 lexbuf = (
 Parser.FALSE )
and action_10 lexbuf = (
 Parser.RPAR )
and action_9 lexbuf = (
 Parser.LPAR )
and action_8 lexbuf = (
 Parser.DOT )
and action_7 lexbuf = (
 Parser.EXISTS )
and action_6 lexbuf = (
 Parser.FORALL )
and action_5 lexbuf = (
 Parser.IMPLIES )
and action_4 lexbuf = (
 Parser.AND )
and action_3 lexbuf = (
 Parser.OR )
and action_2 lexbuf = (
 Parser.NOT )
and action_1 lexbuf = (
 Parser.VAR (getLexeme lexbuf))
and action_0 lexbuf = (
 Token lexbuf )
and state_0 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"A" andalso currChar <= #"Z" then  state_16 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_16 lexbuf
 else if currChar >= #"2" andalso currChar <= #"9" then  state_13 lexbuf
 else case currChar of
    #"_" => state_13 lexbuf
 |  #"\n" => state_3 lexbuf
 |  #"\t" => state_3 lexbuf
 |  #"\r" => state_3 lexbuf
 |  #"~" => action_2 lexbuf
 |  #"@" => action_6 lexbuf
 |  #"=" => state_14 lexbuf
 |  #"1" => state_12 lexbuf
 |  #"0" => state_11 lexbuf
 |  #"." => action_8 lexbuf
 |  #"+" => action_3 lexbuf
 |  #"*" => action_4 lexbuf
 |  #")" => action_10 lexbuf
 |  #"(" => action_9 lexbuf
 |  #"#" => action_7 lexbuf
 |  #" " => state_4 lexbuf
 |  #"\^@" => action_13 lexbuf
 |  _ => action_14 lexbuf
 end)
and state_3 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_0);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"\n" => state_22 lexbuf
 |  #"\t" => state_22 lexbuf
 |  #"\r" => state_22 lexbuf
 |  #" " => state_22 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_4 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_0);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"A" andalso currChar <= #"Z" then  state_18 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_18 lexbuf
 else case currChar of
    #"\n" => state_22 lexbuf
 |  #"\t" => state_22 lexbuf
 |  #"\r" => state_22 lexbuf
 |  #" " => state_23 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_11 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"0" andalso currChar <= #"9" then  state_19 lexbuf
 else if currChar >= #"A" andalso currChar <= #"Z" then  state_19 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_19 lexbuf
 else case currChar of
    #"_" => state_19 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_12 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"0" andalso currChar <= #"9" then  state_19 lexbuf
 else if currChar >= #"A" andalso currChar <= #"Z" then  state_19 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_19 lexbuf
 else case currChar of
    #"_" => state_19 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_13 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"0" andalso currChar <= #"9" then  state_19 lexbuf
 else if currChar >= #"A" andalso currChar <= #"Z" then  state_19 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_19 lexbuf
 else case currChar of
    #"_" => state_19 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_14 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_14);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #">" => action_5 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_16 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"A" andalso currChar <= #"Z" then  state_20 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_20 lexbuf
 else if currChar >= #"0" andalso currChar <= #"9" then  state_19 lexbuf
 else case currChar of
    #"_" => state_19 lexbuf
 |  #" " => state_18 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_18 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"A" andalso currChar <= #"Z" then  state_18 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_18 lexbuf
 else case currChar of
    #" " => state_18 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_19 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"0" andalso currChar <= #"9" then  state_19 lexbuf
 else if currChar >= #"A" andalso currChar <= #"Z" then  state_19 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_19 lexbuf
 else case currChar of
    #"_" => state_19 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_20 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"A" andalso currChar <= #"Z" then  state_20 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_20 lexbuf
 else if currChar >= #"0" andalso currChar <= #"9" then  state_19 lexbuf
 else case currChar of
    #"_" => state_19 lexbuf
 |  #" " => state_18 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_22 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_0);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"\n" => state_22 lexbuf
 |  #"\t" => state_22 lexbuf
 |  #"\r" => state_22 lexbuf
 |  #" " => state_22 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_23 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_0);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"A" andalso currChar <= #"Z" then  state_18 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_18 lexbuf
 else case currChar of
    #"\n" => state_22 lexbuf
 |  #"\t" => state_22 lexbuf
 |  #"\r" => state_22 lexbuf
 |  #" " => state_23 lexbuf
 |  _ => backtrack lexbuf
 end)
and Token lexbuf =
  (setLexLastAction lexbuf (magic dummyAction);
   setLexStartPos lexbuf (getLexCurrPos lexbuf);
   state_0 lexbuf)

(* The following checks type consistency of actions *)
val _ = fn _ => [action_14, action_13, action_12, action_11, action_10, action_9, action_8, action_7, action_6, action_5, action_4, action_3, action_2, action_1, action_0];

end
