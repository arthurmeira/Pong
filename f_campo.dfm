object campo: Tcampo
  Left = 192
  Top = 117
  Width = 1000
  Height = 500
  Caption = 'campo'
  Color = -1
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -37
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 43
  object Label1: TLabel
    Left = 480
    Top = 72
    Width = 92
    Height = 43
    Caption = 'Label1'
  end
  object bola: TPanel
    Left = 488
    Top = 224
    Width = 25
    Height = 25
    Color = clWhite
    TabOrder = 0
  end
  object player1: TPanel
    Left = 900
    Top = 144
    Width = 17
    Height = 185
    Color = clWhite
    TabOrder = 1
  end
  object player2: TPanel
    Left = 72
    Top = 144
    Width = 17
    Height = 185
    Color = clWhite
    TabOrder = 2
  end
  object moverDireita: TTimer
    Interval = 20
    OnTimer = moverDireitaTimer
    Left = 160
    Top = 40
  end
  object moverEsquerda: TTimer
    Enabled = False
    Interval = 20
    OnTimer = moverEsquerdaTimer
    Left = 200
    Top = 40
  end
end
