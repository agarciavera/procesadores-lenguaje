
import java.io.*;
import java.util.ArrayList;

%%
%{
public static void main (String argv[]) throws java.io.IOException {
  String nameFile = argv[0];
  FileInputStream fis;
  if (nameFile.endsWith(".prog")){
    fis = new FileInputStream(argv[0]);
    Yylex yy = new Yylex(fis);
    while (yy.yylex() != -1);
  }
}
%}

PROGRAM = program
IS      = is
BEGIN   = begin
END     = end
VAR     = var
INTEGER = integer
BOOLEAN = boolean
READ    = read
WRITE   = write
SKIP    = skip
WHILE   = while
DO      = do
IF      = if
THEN    = then
ELSE    = else
AND     = and
OR      = or
TRUE    = true
FALSE   = false
NOT     = not

ASIGNACION = ":="

MAYOR      = ">"
MENOR      = "<"
IGUAL      = "="
MAYORIGUAL = ">="
MENORIGUAL = "<="
DISTINTO   = "<>"

MAS   = "+"
MENOS = "-"
MULT  = "*"
DIV   = "/"

PAR_LEFT  = "("
PAR_RIGHT = ")"
COMA      = ","
PUNTOCOMA = ";"
DOSPUNTOS = ":"

IDENTIFICADOR = (a-zA-Z)(a-zA-Z|0-9)*

ENTERO  = (+|-)?(0-9)+
BOOLEAN = {TRUE}|{FALSE}

OPERADORARIT = {MAS}|{MENOS}|{MULT}|{DIV}
OPERADORCOMP = {MAYOR}|{MENOR}|{IGUAL}|{MAYORIGUAL}|{MENORIGUAL}|{DISTINTO}
PUNTUACION  = {PARENIZ}|{PARENDER}|{COMA}|{PUNTOCOMA}|{DOSPUNTOS}|{ASIGNACION}
RESERVADAS  = {PROGRAM}|{IS}|{BEGIN}|{END}|{VAR}|{INTEGER}|{BOOLEAN}|{READ}|{WRITE}|{SKIP}|{WHILE}|{DO}|{IF}|{THEN}|{ELSE}|{AND}|{OR}|{TRUE}|{FALSE}|{NOT}

%integer
%line
%char
%ignorecase
%%

[ \t]+            { /*nada*/ }
\n                { yychar=0; }
