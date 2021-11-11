object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 622
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 79
    Height = 13
    Caption = 'Take our Survey'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 74
    Height = 13
    Caption = 'Personal Dtails:'
  end
  object Label3: TLabel
    Left = 48
    Top = 72
    Width = 42
    Height = 13
    Caption = 'Surname'
  end
  object Label4: TLabel
    Left = 48
    Top = 155
    Width = 23
    Height = 13
    Caption = 'Date'
  end
  object Label5: TLabel
    Left = 48
    Top = 99
    Width = 56
    Height = 13
    Caption = 'First Names'
  end
  object Label6: TLabel
    Left = 48
    Top = 128
    Width = 77
    Height = 13
    Caption = 'Contact number'
  end
  object Label7: TLabel
    Left = 48
    Top = 182
    Width = 19
    Height = 13
    Caption = 'Age'
  end
  object Label8: TLabel
    Left = 16
    Top = 224
    Width = 320
    Height = 13
    Caption = 'What is your favourite food?(You can choose more than 1 answer)'
  end
  object Label9: TLabel
    Left = 8
    Top = 416
    Width = 364
    Height = 13
    Caption = 
      'On scale of 1 to 5 indicate whether you strongly agree or  stron' +
      'gly disagree'
  end
  object edtSurname: TEdit
    Left = 144
    Top = 69
    Width = 177
    Height = 21
    TabOrder = 0
    Text = 'edtSurname'
  end
  object edtFirstNames: TEdit
    Left = 144
    Top = 96
    Width = 177
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object edtContactNumber: TEdit
    Left = 144
    Top = 125
    Width = 177
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object edtDate: TEdit
    Left = 144
    Top = 152
    Width = 177
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object edtAge: TEdit
    Left = 144
    Top = 179
    Width = 49
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object chkPizza: TCheckBox
    Left = 16
    Top = 243
    Width = 97
    Height = 17
    Caption = 'Pizza'
    TabOrder = 5
  end
  object chkOther: TCheckBox
    Left = 16
    Top = 367
    Width = 97
    Height = 17
    Caption = 'Other'
    TabOrder = 6
  end
  object chkBeefStirFry: TCheckBox
    Left = 16
    Top = 335
    Width = 97
    Height = 26
    Caption = 'Beef stir fry'
    TabOrder = 7
  end
  object chkPasta: TCheckBox
    Left = 16
    Top = 266
    Width = 97
    Height = 17
    Caption = 'Pasta'
    TabOrder = 8
  end
  object chkPapAndWors: TCheckBox
    Left = 16
    Top = 289
    Width = 97
    Height = 17
    Caption = 'Pap and Wors'
    TabOrder = 9
  end
  object chkChickenStirFry: TCheckBox
    Left = 16
    Top = 312
    Width = 97
    Height = 17
    Caption = 'Chicken stir fry'
    TabOrder = 10
  end
  object btnSubmit: TButton
    Left = 224
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Submit'
    TabOrder = 11
    OnClick = btnSubmitClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 435
    Width = 601
    Height = 135
    TabOrder = 12
    object Label10: TLabel
      Left = 23
      Top = 28
      Width = 73
      Height = 13
      Caption = 'I like to eat out'
    end
    object Label11: TLabel
      Left = 14
      Top = 55
      Width = 103
      Height = 13
      Caption = 'I like to watch movies'
    end
    object Label12: TLabel
      Left = 23
      Top = 81
      Width = 82
      Height = 13
      Caption = 'I like to watch TV'
    end
    object Label13: TLabel
      Left = 14
      Top = 109
      Width = 103
      Height = 13
      Caption = 'I like to listen to radio'
    end
    object RadioGroup1: TRadioGroup
      Left = 132
      Top = 3
      Width = 102
      Height = 132
      Caption = 'Strongly Agree (1)'
      TabOrder = 0
    end
    object RadioGroup2: TRadioGroup
      Left = 240
      Top = 3
      Width = 73
      Height = 132
      Caption = 'Agree(2)'
      TabOrder = 1
    end
    object RadioGroup3: TRadioGroup
      Left = 319
      Top = 3
      Width = 81
      Height = 131
      Caption = 'Neutral(3)'
      TabOrder = 2
    end
    object RadioGroup4: TRadioGroup
      Left = 404
      Top = 3
      Width = 83
      Height = 129
      Caption = 'Disagree(4)'
      TabOrder = 3
    end
    object RadioGroup5: TRadioGroup
      Left = 493
      Top = 3
      Width = 105
      Height = 129
      Caption = 'Strongly disagree(5)'
      TabOrder = 4
    end
  end
  object ConnmysqlConnection: TSQLConnection
    ConnectionName = 'connMySQL'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver270.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver270.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'User_Name=mbhombhi'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'Database=intern_assignment'
      'Password=Mbhombhi@22')
    Connected = True
    Left = 406
    Top = 39
  end
  object query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnmysqlConnection
    Left = 488
    Top = 40
  end
  object FoodconnConnection: TSQLConnection
    ConnectionName = 'foodConn'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver270.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver270.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'Password=Mbhombhi@22'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'HostName=localhost'
      'Database=intern_assignment'
      'User_Name=mbhombhi')
    Connected = True
    Left = 402
    Top = 106
  end
  object queryF1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FoodconnConnection
    Left = 488
    Top = 112
  end
  object ConnscaleConnection: TSQLConnection
    ConnectionName = 'connScale'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver270.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver270.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localHost'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'Database=intern_assignment'
      'User_Name=mbhombhi'
      'Password=Mbhombhi@22')
    Connected = True
    Left = 394
    Top = 182
  end
  object queryScale: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnscaleConnection
    Left = 496
    Top = 184
  end
  object ConndescConnection: TSQLConnection
    ConnectionName = 'connDesc'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver270.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver270.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=intern_assignment'
      'Password=Mbhombhi@22'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'User_Name=mbhombhi')
    Connected = True
    Left = 378
    Top = 252
  end
  object queryDesc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConndescConnection
    Left = 488
    Top = 256
  end
end
