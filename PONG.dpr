program PONG;

uses
  Forms,
  f_campo in 'f_campo.pas' {campo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tcampo, campo);
  Application.Run;
end.
