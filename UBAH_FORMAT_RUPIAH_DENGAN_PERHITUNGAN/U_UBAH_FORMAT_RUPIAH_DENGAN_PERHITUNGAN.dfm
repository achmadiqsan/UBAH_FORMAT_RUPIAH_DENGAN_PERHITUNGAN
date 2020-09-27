object Form1: TForm1
  Left = 244
  Top = 163
  Width = 449
  Height = 218
  Caption = 'UBAH FORMAT RUPIAH DENGAN PERHITUNGAN'
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
    Top = 16
    Width = 236
    Height = 24
    Caption = 'total yang harus di bayar :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 178
    Top = 56
    Width = 64
    Height = 24
    Caption = 'Bayar :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 130
    Top = 136
    Width = 107
    Height = 24
    Caption = 'Kembalian :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtotal: TEdit
    Left = 264
    Top = 16
    Width = 161
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = edtotalChange
  end
  object edbayar: TEdit
    Left = 264
    Top = 56
    Width = 161
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = edbayarChange
  end
  object edkembali: TEdit
    Left = 264
    Top = 136
    Width = 161
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = edkembaliChange
  end
  object Button1: TButton
    Left = 8
    Top = 96
    Width = 417
    Height = 33
    Caption = 'Hitung'
    TabOrder = 3
    OnClick = Button1Click
  end
end
