object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 423
  ClientWidth = 612
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
    Left = 40
    Top = 24
    Width = 121
    Height = 13
    Caption = 'Total number of surveys:'
  end
  object Label2: TLabel
    Left = 40
    Top = 43
    Width = 66
    Height = 13
    Caption = 'Average age:'
  end
  object Label3: TLabel
    Left = 40
    Top = 70
    Width = 201
    Height = 13
    Caption = 'Oldest person who participated in survey:'
  end
  object Label4: TLabel
    Left = 40
    Top = 157
    Width = 175
    Height = 13
    Caption = 'Percentage of people who like Pizza:'
  end
  object Label5: TLabel
    Left = 40
    Top = 264
    Width = 105
    Height = 13
    Caption = 'People like to eat out:'
  end
  object Label6: TLabel
    Left = 40
    Top = 97
    Width = 215
    Height = 13
    Caption = 'Youngest person who participated in survey:'
  end
  object Label7: TLabel
    Left = 40
    Top = 181
    Width = 178
    Height = 13
    Caption = 'Percentage of people who like Pasta:'
  end
  object Label8: TLabel
    Left = 40
    Top = 205
    Width = 218
    Height = 13
    Caption = 'Percentage of people who like Pap and Wors:'
  end
  object Label9: TLabel
    Left = 40
    Top = 288
    Width = 135
    Height = 13
    Caption = 'People like to watch movies:'
  end
  object Label10: TLabel
    Left = 40
    Top = 307
    Width = 114
    Height = 13
    Caption = 'People like to watch TV:'
  end
  object Label11: TLabel
    Left = 40
    Top = 326
    Width = 154
    Height = 13
    Caption = 'People like to listen to the radio:'
  end
  object lblPercPizza: TLabel
    Left = 304
    Top = 157
    Width = 55
    Height = 13
    Caption = 'lblPercPizza'
  end
  object lblPercPasta: TLabel
    Left = 304
    Top = 181
    Width = 37
    Height = 13
    Caption = 'Label12'
  end
  object lblPapAndWors: TLabel
    Left = 304
    Top = 205
    Width = 37
    Height = 13
    Caption = 'Label12'
  end
  object lblEatOut: TLabel
    Left = 304
    Top = 264
    Width = 37
    Height = 13
    Caption = 'Label12'
  end
  object lblWatchMovies: TLabel
    Left = 304
    Top = 288
    Width = 37
    Height = 13
    Caption = 'Label12'
  end
  object lblWatchTV: TLabel
    Left = 304
    Top = 307
    Width = 37
    Height = 13
    Caption = 'Label12'
  end
  object lblListenRadio: TLabel
    Left = 304
    Top = 326
    Width = 37
    Height = 13
    Caption = 'Label12'
  end
  object lblYoungest: TLabel
    Left = 304
    Top = 97
    Width = 37
    Height = 13
    Caption = 'Label12'
  end
  object lblAveAge: TLabel
    Left = 304
    Top = 43
    Width = 37
    Height = 13
    Caption = 'Label12'
  end
  object lblOldest: TLabel
    Left = 304
    Top = 70
    Width = 3
    Height = 13
  end
  object lblTotNum: TLabel
    Left = 304
    Top = 24
    Width = 47
    Height = 13
    Caption = 'lblTotNum'
  end
  object btnOK: TButton
    Left = 240
    Top = 376
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = btnOKClick
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
  object queryDesc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConndescConnection
    Left = 488
    Top = 256
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
  object queryScale: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnscaleConnection
    Left = 496
    Top = 184
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
  object queryF1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FoodconnConnection
    Left = 488
    Top = 112
  end
  object query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnmysqlConnection
    Left = 488
    Top = 40
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
end
