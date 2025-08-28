grammar Calculadora;

prog: expresion EOF ;


expresion
    : expresion '^' expresion           
    | expresion ('*'|'/') expresion     
    | expresion ('+'|'-') expresion     
    | '-' expresion                     
    | funcion                           
    | '(' expresion ')'                 
    | NUMBER                            
    ;


funcion
    : 'sqrt' '(' expresion ')' 
    | 'abs' '(' expresion ')'
    ;

NUMBER : [0-9]+ ('.' [0-9]+)? ;
WS : [ \t\r\n]+ -> skip ;
