object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Vir'#252's Total API Example Coder: Halil Han Badem'
  ClientHeight = 419
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 193
    Width = 47
    Height = 13
    Caption = 'REPORT:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 9
    Top = 33
    Width = 88
    Height = 13
    Caption = 'Vir'#252's Total URL:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 89
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Scan'
    TabOrder = 0
    TabStop = False
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 213
    Width = 822
    Height = 206
    Align = alBottom
    TabOrder = 1
  end
  object Button2: TButton
    Left = 8
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Select File'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 9
    Top = 49
    Width = 417
    Height = 21
    TabOrder = 3
  end
  object Button3: TButton
    Left = 170
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Result Here'
    TabOrder = 4
    TabStop = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 170
    Top = 111
    Width = 75
    Height = 25
    Caption = 'SHA256'
    TabOrder = 5
    TabStop = False
    OnClick = Button4Click
  end
  object FileO: TOpenDialog
    Left = 104
    Top = 152
  end
end
