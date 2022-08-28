unit f_campo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  Tcampo = class(TForm)
    bola: TPanel;
    moverDireita: TTimer;
    player1: TPanel;
    player2: TPanel;
    Label1: TLabel;
    moverEsquerda: TTimer;
    procedure moverDireitaTimer(Sender: TObject);
    procedure moverEsquerdaTimer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  campo: Tcampo;

implementation

{$R *.dfm}

procedure colisaoPlayer1;
var
  parede:Integer;
begin
  parede := campo.bola.Left + campo.bola.Width;
  if parede >= campo.player1.left then
  begin
     campo.moverDireita.Enabled := false;
     campo.moverEsquerda.Enabled := true;
  end;
end;
procedure Tcampo.moverDireitaTimer(Sender: TObject);
begin
   bola.Left := bola.Left + 5;
   label1.Caption := intToStr(bola.Left);
   colisaoPlayer1;
end;

procedure Tcampo.moverEsquerdaTimer(Sender: TObject);
begin
    bola.Left := bola.Left - 5;
    label1.Caption := intToStr(bola.Left);
    colisaoPlayer1;
end;

end.
