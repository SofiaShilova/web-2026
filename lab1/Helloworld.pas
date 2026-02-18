PROGRAM TestEnv(INPUT, OUTPUT);
USES
  DOS;
VAR
  QueryString, Name: STRING;
  PosName: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QueryString := GetEnv('QUERY_STRING');
  PosName := Pos('name=', QueryString);   

  IF (PosName <> 1) 
  THEN 
    WRITELN('Hello, Anonymous!')
  ELSE
    BEGIN
      PosName := Pos('&', QueryString);
      IF PosName = 0
      THEN
        Name := Copy(QueryString, 6, Length(QueryString) - 5)
      ELSE
        Name := Copy(QueryString, 6, PosName - 6);
      WRITELN('Hello, ', Name,'!');
    END
END.