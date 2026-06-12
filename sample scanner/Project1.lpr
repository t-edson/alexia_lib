program Project1;
{$UNITPATH ../}
uses Classes, SysUtils, alexiaLex;
var
  scanner: TScanner;
  textLines: TSTringList;
begin
  scanner := TScanner.Create;
  textLines := TSTringList.Create;
  textLines.Text := 'Hello world';
  scanner.SetText(textLines);
  scanner.nlin := 1;
  scanner.setRow(1);
  scanner.setCol(1);
  while not scanner.EOF do begin
    writeln(scanner.ReadChar);
    scanner.NextChar;
  end;
  readln;
  textLines.Destroy;
  scanner.Destroy;
end.

