object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnFillOutSurvey: TButton
    Left = 200
    Top = 48
    Width = 121
    Height = 49
    Caption = 'Fill out survery '
    TabOrder = 0
    OnClick = btnFillOutSurveyClick
  end
  object btnViewSurveyResults: TButton
    Left = 200
    Top = 112
    Width = 121
    Height = 49
    Caption = 'View survey results'
    TabOrder = 1
    OnClick = btnViewSurveyResultsClick
  end
end
