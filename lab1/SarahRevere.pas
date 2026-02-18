PROGRAM TestEnv(INPUT, OUTPUT);
USES
  DOS;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;

  IF(GetEnv('QUERY_STRING') = 'lanterns=2') 
  THEN 
    WRITELN('British are coming by land');

  IF(GetEnv('QUERY_STRING') = 'lanterns=1') 
  THEN 
    WRITELN('British are coming by sea')
  
END.