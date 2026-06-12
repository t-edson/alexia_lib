program Project1;
{$UNITPATH ../}
uses Classes, alexiaLex;
var
  lexer: TContext;
begin
  lexer := TContext.Create;
  lexer.SetSource('Hello World.');  //Set source and scan the first token.
  while true do
  begin
    writeln(lexer.ReadToken); //Read the current token (the last scanned).
    if lexer.EOF then break;  //Check the lexer state, not the current token.
    lexer.Next;
  end;
  readln;
  lexer.Destroy;
end.

