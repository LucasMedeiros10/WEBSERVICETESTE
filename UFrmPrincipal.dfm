object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = '...:::WS Client :::...'
  ClientHeight = 340
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 615
    Height = 41
    Align = alTop
    Caption = 'Client FutSystem'
    Color = clGrayText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object btnAtleta: TButton
    Left = 8
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Atletas'
    TabOrder = 1
    OnClick = btnAtletaClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 136
    Width = 585
    Height = 196
    DataSource = ds1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnUF: TButton
    Left = 8
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Estados'
    TabOrder = 3
    OnClick = btnUFClick
  end
  object btnCidades: TButton
    Left = 89
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Cidades'
    TabOrder = 4
    OnClick = btnCidadesClick
  end
  object btnCampos: TButton
    Left = 89
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Campos'
    TabOrder = 5
    OnClick = btnCamposClick
  end
  object Button1: TButton
    Left = 168
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Times'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Times_Atletas'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 249
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Partidas_Atletas'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 249
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Partidas'
    TabOrder = 9
    OnClick = Button4Click
  end
  object btnValida: TButton
    Left = 330
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 10
    OnClick = btnValidaClick
  end
  object HTTPRIO1: THTTPRIO
    WSDLLocation = 'http://localhost:8080/wsdl/IWSFutSystem'
    Service = 'IWSFutSystemservice'
    Port = 'IWSFutSystemPort'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 544
    Top = 56
  end
  object ds1: TDataSource
    DataSet = fdmAtletas
    Left = 544
    Top = 120
  end
  object fdmAtletas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 56
    Top = 264
    object fdmAtletasAtl_Codigo: TIntegerField
      FieldName = 'Atl_Codigo'
    end
    object fdmAtletasAtl_NomeCompleto: TStringField
      FieldName = 'Atl_NomeCompleto'
      Size = 60
    end
  end
  object fdmEstados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 136
    Top = 264
    object fdmEstadosEst_Codigo: TIntegerField
      FieldName = 'Est_Codigo'
    end
    object fdmEstadosEst_Nome: TStringField
      FieldName = 'Est_Nome'
      Size = 30
    end
    object fdmEstadosEst_Sigla: TStringField
      FieldName = 'Est_Sigla'
      Size = 2
    end
  end
  object fdmCidades: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 208
    Top = 264
    object fdmCidadesCid_IBGE: TIntegerField
      FieldName = 'Cid_IBGE'
    end
    object fdmCidadesCid_Nome: TStringField
      FieldName = 'Cid_Nome'
      Size = 50
    end
    object fdmCidadesEst_Codigo: TIntegerField
      FieldName = 'Est_Codigo'
    end
  end
  object fdmCampos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 280
    Top = 264
    object fdmCamposCam_Codigo: TIntegerField
      FieldName = 'Cam_Codigo'
    end
    object fdmCamposCam_Nome: TStringField
      FieldName = 'Cam_Nome'
      Size = 60
    end
  end
  object fdmTimes: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 56
    Top = 208
    object fdmTimesTim_Codigo: TIntegerField
      FieldName = 'Tim_Codigo'
    end
    object fdmTimesTim_Nome: TStringField
      FieldName = 'Tim_Nome'
      Size = 30
    end
    object fdmTimesTim_DataFundacao: TDateField
      FieldName = 'Tim_DataFundacao'
    end
  end
  object fdmPartidas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 200
    Top = 208
    object fdmPartidasPar_Codigo: TIntegerField
      FieldName = 'Par_Codigo'
    end
    object fdmPartidasPar_TimeA: TIntegerField
      FieldName = 'Par_TimeA'
    end
    object fdmPartidasPar_TimeB: TIntegerField
      FieldName = 'Par_TimeB'
    end
  end
  object fdmPartidasAtletas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 296
    Top = 208
    object fdmPartidasAtletasPar_Codigo: TIntegerField
      FieldName = 'Par_Codigo'
    end
    object fdmPartidasAtletasAtl_Codigo: TIntegerField
      FieldName = 'Atl_Codigo'
    end
    object fdmPartidasAtletasTim_Codigo: TIntegerField
      FieldName = 'Tim_Codigo'
    end
  end
  object fdmTimesAtletas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 128
    Top = 208
    object fdmTimesAtletasTim_Codigo: TIntegerField
      FieldName = 'Tim_Codigo'
    end
    object fdmTimesAtletasAtl_Codigo: TIntegerField
      FieldName = 'Atl_Codigo'
    end
  end
end
