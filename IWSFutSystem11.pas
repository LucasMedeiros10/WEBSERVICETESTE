// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:8080/wsdl/IWSFutSystem
//  >Import : http://localhost:8080/wsdl/IWSFutSystem>0
// Version  : 1.0
// (26/04/2016 23:38:03 - - $Rev: 76228 $)
// ************************************************************************ //

unit IWSFutSystem11;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:TDate           - "urn:"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  TTimes               = class;                 { "urn:WSFutSystemIntf"[GblCplx] }
  TTimeAtleta          = class;                 { "urn:WSFutSystemIntf"[GblCplx] }
  TPartidaAtleta       = class;                 { "urn:WSFutSystemIntf"[GblCplx] }
  TEstado              = class;                 { "urn:WSFutSystemIntf"[GblCplx] }
  TCidade              = class;                 { "urn:WSFutSystemIntf"[GblCplx] }
  TAtleta              = class;                 { "urn:WSFutSystemIntf"[GblCplx] }
  TPartida             = class;                 { "urn:WSFutSystemIntf"[GblCplx] }
  TCampo               = class;                 { "urn:WSFutSystemIntf"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "urn:WSFutSystemIntf"[GblSmpl] }
  TTipoLogin = (tlAtleta, tlCampo);

  { "urn:WSFutSystemIntf"[GblSmpl] }
  TSexo = (tsMasculino, tsFeminino);

  { "urn:WSFutSystemIntf"[GblSmpl] }
  TPosicao = (
      tpGoleiro, 
      tpZagueiro, 
      tpLatDireito, 
      tpLatEsquerdo, 
      tpVolante, 
      tpMeia, 
      tpPonteiro, 
      tpAtacante, 
      tpFixo, 
      tpAla, 
      tpPivo
  );

  { "urn:WSFutSystemIntf"[GblSmpl] }
  TTipoCampo = (tcQuadra, tcCampo, tcSociety);

  { "urn:WSFutSystemIntf"[GblSmpl] }
  TStatus = (tsAtivo, tsInativo);

  {$SCOPEDENUMS OFF}

  TListPartidasAtletas = array of TPartidaAtleta;   { "urn:WSFutSystemIntf"[GblCplx] }
  TListEstados = array of TEstado;              { "urn:WSFutSystemIntf"[GblCplx] }
  TListPartidas = array of TPartida;            { "urn:WSFutSystemIntf"[GblCplx] }
  TListTimes = array of TTimes;                 { "urn:WSFutSystemIntf"[GblCplx] }
  TListTimesAtletas = array of TTimeAtleta;     { "urn:WSFutSystemIntf"[GblCplx] }
  TListAtletas = array of TAtleta;              { "urn:WSFutSystemIntf"[GblCplx] }


  // ************************************************************************ //
  // XML       : TTimes, global, <complexType>
  // Namespace : urn:WSFutSystemIntf
  // ************************************************************************ //
  TTimes = class(TRemotable)
  private
    FCodigo: Integer;
    FNome: string;
    FDataFundacao: TDate;
    FAtl_Codigo: Integer;
  published
    property Codigo:       Integer  read FCodigo write FCodigo;
    property Nome:         string   read FNome write FNome;
    property DataFundacao: TDate    read FDataFundacao write FDataFundacao;
    property Atl_Codigo:   Integer  read FAtl_Codigo write FAtl_Codigo;
  end;



  // ************************************************************************ //
  // XML       : TTimeAtleta, global, <complexType>
  // Namespace : urn:WSFutSystemIntf
  // ************************************************************************ //
  TTimeAtleta = class(TRemotable)
  private
    FTim_Codigo: Integer;
    FAtl_Codigo: Integer;
  published
    property Tim_Codigo: Integer  read FTim_Codigo write FTim_Codigo;
    property Atl_Codigo: Integer  read FAtl_Codigo write FAtl_Codigo;
  end;



  // ************************************************************************ //
  // XML       : TPartidaAtleta, global, <complexType>
  // Namespace : urn:WSFutSystemIntf
  // ************************************************************************ //
  TPartidaAtleta = class(TRemotable)
  private
    FPar_Codigo: Integer;
    FAtl_Codigo: Integer;
  published
    property Par_Codigo: Integer  read FPar_Codigo write FPar_Codigo;
    property Atl_Codigo: Integer  read FAtl_Codigo write FAtl_Codigo;
  end;



  // ************************************************************************ //
  // XML       : TEstado, global, <complexType>
  // Namespace : urn:WSFutSystemIntf
  // ************************************************************************ //
  TEstado = class(TRemotable)
  private
    FCodigo: Integer;
    FNome: string;
    FSigla: string;
  published
    property Codigo: Integer  read FCodigo write FCodigo;
    property Nome:   string   read FNome write FNome;
    property Sigla:  string   read FSigla write FSigla;
  end;

  TListCidades = array of TCidade;              { "urn:WSFutSystemIntf"[GblCplx] }


  // ************************************************************************ //
  // XML       : TCidade, global, <complexType>
  // Namespace : urn:WSFutSystemIntf
  // ************************************************************************ //
  TCidade = class(TRemotable)
  private
    FCodigo: Integer;
    FNome: string;
    FEst_Codigo: Integer;
  published
    property Codigo:     Integer  read FCodigo write FCodigo;
    property Nome:       string   read FNome write FNome;
    property Est_Codigo: Integer  read FEst_Codigo write FEst_Codigo;
  end;



  // ************************************************************************ //
  // XML       : TAtleta, global, <complexType>
  // Namespace : urn:WSFutSystemIntf
  // ************************************************************************ //
  TAtleta = class(TRemotable)
  private
    FCodigo: Integer;
    FNomeCompleto: string;
    FDataNasc: TDate;
    FSexo: TSexo;
    FTelefone: string;
    FCelular: string;
    FEndereco: string;
    FBairro: string;
    FNumEndereco: Integer;
    FCEP: string;
    FCid_IBGE: Integer;
    FEmail: string;
    FSenha: string;
    FPosicao: TPosicao;
    FStatus: TStatus;
    FCaracteristicas: string;
    FObservacao: string;
  published
    property Codigo:          Integer   read FCodigo write FCodigo;
    property NomeCompleto:    string    read FNomeCompleto write FNomeCompleto;
    property DataNasc:        TDate     read FDataNasc write FDataNasc;
    property Sexo:            TSexo     read FSexo write FSexo;
    property Telefone:        string    read FTelefone write FTelefone;
    property Celular:         string    read FCelular write FCelular;
    property Endereco:        string    read FEndereco write FEndereco;
    property Bairro:          string    read FBairro write FBairro;
    property NumEndereco:     Integer   read FNumEndereco write FNumEndereco;
    property CEP:             string    read FCEP write FCEP;
    property Cid_IBGE:        Integer   read FCid_IBGE write FCid_IBGE;
    property Email:           string    read FEmail write FEmail;
    property Senha:           string    read FSenha write FSenha;
    property Posicao:         TPosicao  read FPosicao write FPosicao;
    property Status:          TStatus   read FStatus write FStatus;
    property Caracteristicas: string    read FCaracteristicas write FCaracteristicas;
    property Observacao:      string    read FObservacao write FObservacao;
  end;



  // ************************************************************************ //
  // XML       : TPartida, global, <complexType>
  // Namespace : urn:WSFutSystemIntf
  // ************************************************************************ //
  TPartida = class(TRemotable)
  private
    FCodigo: Integer;
    FData: TDate;
    FHorario: TXSDateTime;
    FCam_Codigo: Integer;
    FStatus: TStatus;
    FTimeA: Integer;
    FTimeB: Integer;
  public
    destructor Destroy; override;
  published
    property Codigo:     Integer      read FCodigo write FCodigo;
    property Data:       TDate        read FData write FData;
    property Horario:    TXSDateTime  read FHorario write FHorario;
    property Cam_Codigo: Integer      read FCam_Codigo write FCam_Codigo;
    property Status:     TStatus      read FStatus write FStatus;
    property TimeA:      Integer      read FTimeA write FTimeA;
    property TimeB:      Integer      read FTimeB write FTimeB;
  end;

  TListCampos = array of TCampo;                { "urn:WSFutSystemIntf"[GblCplx] }


  // ************************************************************************ //
  // XML       : TCampo, global, <complexType>
  // Namespace : urn:WSFutSystemIntf
  // ************************************************************************ //
  TCampo = class(TRemotable)
  private
    FCodigo: Integer;
    FNome: string;
    FEndereco: string;
    FNumEndereco: Integer;
    FBairro: string;
    FCEP: string;
    FCid_IBGE: Integer;
    FEmail: string;
    FSenha: string;
    FTipoCampo: TTipoCampo;
    FTelefone: string;
    FCelular: string;
    FObservacao: string;
    FResponsavel: string;
    FStatus: TStatus;
  published
    property Codigo:      Integer     read FCodigo write FCodigo;
    property Nome:        string      read FNome write FNome;
    property Endereco:    string      read FEndereco write FEndereco;
    property NumEndereco: Integer     read FNumEndereco write FNumEndereco;
    property Bairro:      string      read FBairro write FBairro;
    property CEP:         string      read FCEP write FCEP;
    property Cid_IBGE:    Integer     read FCid_IBGE write FCid_IBGE;
    property Email:       string      read FEmail write FEmail;
    property Senha:       string      read FSenha write FSenha;
    property TipoCampo:   TTipoCampo  read FTipoCampo write FTipoCampo;
    property Telefone:    string      read FTelefone write FTelefone;
    property Celular:     string      read FCelular write FCelular;
    property Observacao:  string      read FObservacao write FObservacao;
    property Responsavel: string      read FResponsavel write FResponsavel;
    property Status:      TStatus     read FStatus write FStatus;
  end;


  // ************************************************************************ //
  // Namespace : urn:WSFutSystemIntf-IWSFutSystem
  // soapAction: urn:WSFutSystemIntf-IWSFutSystem#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : IWSFutSystembinding
  // service   : IWSFutSystemservice
  // port      : IWSFutSystemPort
  // URL       : http://localhost:8080/soap/IWSFutSystem
  // ************************************************************************ //
  IWSFutSystem = interface(IInvokable)
  ['{8C81B5B6-1369-96F7-357F-A4E3AB63B70C}']
    function GetAtletas(const Codigo: Integer = 0): TListAtletas; stdcall;
    function GetCampos(const Codigo: Integer = 0): TListCampos; stdcall;
    function GetCidades(UF: string): TListCidades; stdcall;
    function GetEstados: TListEstados; stdcall;
    function GetPartidas(const Codigo: Integer = 0): TListPartidas; stdcall;
    function GetPartidasAtletas(const Par_Codigo, Atl_Codigo: Integer): TListPartidasAtletas; stdcall;
    function GetTimes(const Codigo: Integer = 0): TListTimes; stdcall;
    function GetTimesAtletas(const Tim_Codigo, Atl_Codigo: Integer): TListTimesAtletas; stdcall;
    function ValidaLogin(Email,Senha: string; TipoLogin : TTipoLogin): Integer; stdcall;
    function SetAtleta(const Atleta: TAtleta): Boolean; stdcall;
    function SetCampo(const Campo: TCampo): Boolean; stdcall;
    function SetPartida(const Partida: TPartida): Boolean; stdcall;
    function SetPartidaAtletas(const Atletas_Partida: TListPartidasAtletas): Boolean; stdcall;
    function SetTime(const Equipe: TTimes): Boolean; stdcall;
    function SetTimeAtletas(const Atletas_Times: TListTimesAtletas): Boolean; stdcall;
  end;

function GetIWSFutSystem(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IWSFutSystem;


implementation
  uses System.SysUtils;

function GetIWSFutSystem(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IWSFutSystem;
const
  defWSDL = 'http://localhost:8080/wsdl/IWSFutSystem';
  defURL  = 'http://localhost:8080/soap/IWSFutSystem';
  defSvc  = 'IWSFutSystemservice';
  defPrt  = 'IWSFutSystemPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IWSFutSystem);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor TPartida.Destroy;
begin
  System.SysUtils.FreeAndNil(FHorario);
  inherited Destroy;
end;

initialization
  { IWSFutSystem }
  InvRegistry.RegisterInterface(TypeInfo(IWSFutSystem), 'urn:WSFutSystemIntf-IWSFutSystem', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IWSFutSystem), 'urn:WSFutSystemIntf-IWSFutSystem#%operationName%');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TListPartidasAtletas), 'urn:WSFutSystemIntf', 'TListPartidasAtletas');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TListEstados), 'urn:WSFutSystemIntf', 'TListEstados');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TListPartidas), 'urn:WSFutSystemIntf', 'TListPartidas');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TTipoLogin), 'urn:WSFutSystemIntf', 'TTipoLogin');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TListTimes), 'urn:WSFutSystemIntf', 'TListTimes');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TListTimesAtletas), 'urn:WSFutSystemIntf', 'TListTimesAtletas');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TSexo), 'urn:WSFutSystemIntf', 'TSexo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TListAtletas), 'urn:WSFutSystemIntf', 'TListAtletas');
  RemClassRegistry.RegisterXSClass(TTimes, 'urn:WSFutSystemIntf', 'TTimes');
  RemClassRegistry.RegisterXSClass(TTimeAtleta, 'urn:WSFutSystemIntf', 'TTimeAtleta');
  RemClassRegistry.RegisterXSClass(TPartidaAtleta, 'urn:WSFutSystemIntf', 'TPartidaAtleta');
  RemClassRegistry.RegisterXSClass(TEstado, 'urn:WSFutSystemIntf', 'TEstado');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TPosicao), 'urn:WSFutSystemIntf', 'TPosicao');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TTipoCampo), 'urn:WSFutSystemIntf', 'TTipoCampo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TListCidades), 'urn:WSFutSystemIntf', 'TListCidades');
  RemClassRegistry.RegisterXSClass(TCidade, 'urn:WSFutSystemIntf', 'TCidade');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TStatus), 'urn:WSFutSystemIntf', 'TStatus');
  RemClassRegistry.RegisterXSClass(TAtleta, 'urn:WSFutSystemIntf', 'TAtleta');
  RemClassRegistry.RegisterXSClass(TPartida, 'urn:WSFutSystemIntf', 'TPartida');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TListCampos), 'urn:WSFutSystemIntf', 'TListCampos');
  RemClassRegistry.RegisterXSClass(TCampo, 'urn:WSFutSystemIntf', 'TCampo');

end.