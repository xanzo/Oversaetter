{

exception Error of string;

}

rule Token = parse
    `0`   { Parser.FALSE }
  | eof   { Parser.EOF }
  | _     { raise Error "Unexpected symbol on input." }
;
