object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Arquitetura Limpa (Clean Architecture)'
  ClientHeight = 411
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 32
    Height = 15
    Caption = 'Name'
  end
  object Label2: TLabel
    Left = 143
    Top = 8
    Width = 26
    Height = 15
    Caption = 'Price'
  end
  object btnAddProduct: TButton
    Left = 16
    Top = 53
    Width = 121
    Height = 25
    Caption = 'Add Product'
    TabOrder = 2
    OnClick = btnAddProductClick
  end
  object btnListProducts: TButton
    Left = 143
    Top = 53
    Width = 121
    Height = 25
    Caption = 'List Products'
    TabOrder = 3
    OnClick = btnListProductsClick
  end
  object edtProductName: TEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtProductPrice: TEdit
    Left = 143
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object lbProducts: TListBox
    Left = 16
    Top = 90
    Width = 248
    Height = 313
    ItemHeight = 15
    TabOrder = 4
  end
end
