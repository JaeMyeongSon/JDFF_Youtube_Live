object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'JDFF_'
  ClientHeight = 569
  ClientWidth = 229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 53
    Width = 36
    Height = 13
    Caption = 'Link 1:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 99
    Width = 36
    Height = 13
    Caption = 'Link 2:'
  end
  object Label3: TLabel
    Left = 8
    Top = 139
    Width = 36
    Height = 13
    Caption = 'Link 3:'
  end
  object Label4: TLabel
    Left = 8
    Top = 179
    Width = 36
    Height = 13
    Caption = 'Link 4:'
  end
  object Label5: TLabel
    Left = 8
    Top = 232
    Width = 46
    Height = 13
    Caption = #51217#49549' IP : '
  end
  object Label6: TLabel
    Left = 80
    Top = 232
    Width = 37
    Height = 13
    Caption = 'Label6'
  end
  object Label7: TLabel
    Left = 8
    Top = 267
    Width = 37
    Height = 13
    Caption = 'Label7'
  end
  object Button1: TButton
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Download'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button2: TButton
    Left = 144
    Top = 70
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button3: TButton
    Left = 144
    Top = 110
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 144
    Top = 150
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Edit3: TEdit
    Left = 8
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 8
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Button5: TButton
    Left = 144
    Top = 190
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 104
    Top = 16
    Width = 105
    Height = 25
    Caption = 'ALL SAVE'
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 168
    Top = 499
    Width = 75
    Height = 25
    Caption = 'Button7'
    TabOrder = 10
    OnClick = Button7Click
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 616
    Top = 104
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 216
    Top = 128
  end
end
