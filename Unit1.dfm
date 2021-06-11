object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Ghorbani Ini File '
  ClientHeight = 332
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 478
    Top = 19
    Width = 236
    Height = 13
    Caption = 'Close and reopen this  form to save/load settings'
  end
  object Label2: TLabel
    Left = 48
    Top = 279
    Width = 112
    Height = 13
    Caption = 'Ghorbani77@gmail.com'
  end
  object Label3: TLabel
    Left = 48
    Top = 298
    Width = 92
    Height = 13
    Caption = '+98-919-143-7539'
  end
  object Button1: TButton
    Left = 650
    Top = 299
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 48
    Top = 16
    Width = 400
    Height = 21
    TabOrder = 0
    Text = 
      'This text will be saved to an Ini file when you close and reopen' +
      ' this application 1'
  end
  object Edit2: TEdit
    Left = 48
    Top = 43
    Width = 400
    Height = 21
    TabOrder = 1
    Text = 
      'This text will be saved to an Ini file when you close and reopen' +
      ' this application 2'
  end
  object Edit3: TEdit
    Left = 48
    Top = 70
    Width = 400
    Height = 21
    TabOrder = 2
    Text = 
      'This text will be saved to an Ini file when you close and reopen' +
      ' this application 3'
  end
  object Edit4: TEdit
    Left = 48
    Top = 97
    Width = 400
    Height = 21
    TabOrder = 3
    Text = 
      'This text will be saved to an Ini file when you close and reopen' +
      ' this application 4'
  end
  object Edit5: TEdit
    Left = 48
    Top = 124
    Width = 400
    Height = 21
    TabOrder = 4
    Text = 
      'This text will be saved to an Ini file when you close and reopen' +
      ' this application 5'
  end
  object CheckBox1: TCheckBox
    Left = 48
    Top = 168
    Width = 105
    Height = 17
    Caption = 'This will be saved'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object RadioGroup1: TRadioGroup
    Left = 263
    Top = 168
    Width = 185
    Height = 105
    Caption = 'This option will be saved'
    ItemIndex = 1
    Items.Strings = (
      'Option 1'
      'Option 2'
      'Option 3')
    TabOrder = 6
  end
end
