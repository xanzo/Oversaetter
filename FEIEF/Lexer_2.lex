{

exception Error of string;

}

rule Token = parse
	  [` ` `\t` `\r` `\n`]+	{ Token lexbuf }
	| [`a`-`z``A`-`Z``0`-`9``_`]*|[` ``a`-`z``A`-`Z`]+	{ Parser.VAR (getLexeme lexbuf)}
	| `~`	{ Parser.NOT }
	| `+`	{ Parser.OR }
	| `*`	{ Parser.AND }
	| "=>"	{ Parser.IMPLIES }
	| `@`  	{ Parser.FORALL }
	| `#`   { Parser.EXISTS }
	| `.`   { Parser.DOT }
	| `(`	{ Parser.LPAR }
	| `)`	{ Parser.RPAR }
	| `0`   { Parser.FALSE }
	| `1`   { Parser.TRUE }
	| eof   { Parser.EOF }
	| _     { raise Error ("Unexpected symbol on input: " ^ (getLexeme lexbuf)) }
;