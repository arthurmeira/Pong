unit Pong;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  Tfrm_pong = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Bola: TPanel;
    Player1: TPanel;
    Player2: TPanel;
    sendToLeft: TTimer;
    sendToRight: TTimer;
    procedure sendToLeftTimer(Sender: TObject);
    procedure sendToRightTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pong: Tfrm_pong;
  left, rigth: string;
implementation

{$R *.dfm}

procedure colisao;
var
  parede: integer;
begin
  parede := frm_pong.bola.left + frm_pong.bola.width;

  if (parede >= frm_pong.player2.left) then
  begin
    frm_pong.sendToRight.Enabled := false;
    frm_pong.sendToLeft.Enabled := true;
  end;
end;

procedure Tfrm_pong.sendToLeftTimer(Sender: TObject);
begin
  bola.left := bola.left + 10;
  colisao;
end;

procedure Tfrm_pong.sendToRightTimer(Sender: TObject);
begin
  bola.left := bola.left - 10;
  colisao;
end;

end.
