// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:8080/wsdl/IWSFutSystem
//  >Import : http://localhost:8080/wsdl/IWSFutSystem>0
// Version  : 1.0
// (15/04/2016 00:11:58 - - $Rev: 76228 $)
// ************************************************************************ //

unit IWSFutSystem1;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  TMyEmployee          = class;                 { "urn:WSFutSystemIntf"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "urn:WSFutSystemIntf"[GblSmpl] }
  TEnumTest = (etNone, etAFew, etSome, etAlot);

  {$SCOPEDENUMS OFF}

  TDoubleArray = array of Double;               { "urn:WSFutSystemIntf"[GblCplx] }


  // ************************************************************************ //
  // XML       : TMyEmployee, global, <complexType>
  // Namespace : urn:WSFutSystemIntf
  // ************************************************************************ //
  TMyEmployee = class(TRemotable)
  private
    FLastName: string;
    FFirstName: string;
    FSalary: Double;
  published
    property LastName:  string  read FLastName write FLastName;
    property FirstName: string  read FFirstName write FFirstName;
    property Salary:    Double  read FSalary write FSalary;
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
    function  echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function  echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function  echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function  echoDouble(const Value: Double): Double; stdcall;
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


initialization
  { IWSFutSystem }
  InvRegistry.RegisterInterface(TypeInfo(IWSFutSystem), 'urn:WSFutSystemIntf-IWSFutSystem', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IWSFutSystem), 'urn:WSFutSystemIntf-IWSFutSystem#%operationName%');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TEnumTest), 'urn:WSFutSystemIntf', 'TEnumTest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TDoubleArray), 'urn:WSFutSystemIntf', 'TDoubleArray');
  RemClassRegistry.RegisterXSClass(TMyEmployee, 'urn:WSFutSystemIntf', 'TMyEmployee');

end.