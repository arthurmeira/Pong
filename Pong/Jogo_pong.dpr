program Jogo_pong;

uses
  Vcl.Forms,
  Pong in 'Pong.pas' {frm_pong};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_pong, frm_pong);
  Application.Run;
end.
