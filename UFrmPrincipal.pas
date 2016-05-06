unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Soap.InvokeRegistry, Soap.Rio, Soap.SOAPHTTPClient, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, System.Classes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.StorageBin, FireDAC.Stan.StorageXML,
  FireDAC.Stan.StorageJSON;

type
  TFrmPrincipal = class(TForm)
    pnlTitulo: TPanel;
    btnAtleta: TButton;
    HTTPRIO1: THTTPRIO;
    DBGrid1: TDBGrid;
    ds1: TDataSource;
    fdmAtletas: TFDMemTable;
    fdmAtletasAtl_Codigo: TIntegerField;
    fdmAtletasAtl_NomeCompleto: TStringField;
    fdmEstados: TFDMemTable;
    btnUF: TButton;
    fdmEstadosEst_Codigo: TIntegerField;
    fdmEstadosEst_Nome: TStringField;
    fdmEstadosEst_Sigla: TStringField;
    btnCidades: TButton;
    fdmCidades: TFDMemTable;
    fdmCidadesCid_IBGE: TIntegerField;
    fdmCidadesCid_Nome: TStringField;
    fdmCidadesEst_Codigo: TIntegerField;
    fdmCampos: TFDMemTable;
    fdmCamposCam_Codigo: TIntegerField;
    fdmCamposCam_Nome: TStringField;
    btnCampos: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    btnValida: TButton;
    fdmTimes: TFDMemTable;
    fdmTimesTim_Codigo: TIntegerField;
    fdmTimesTim_Nome: TStringField;
    fdmTimesTim_DataFundacao: TDateField;
    fdmPartidas: TFDMemTable;
    fdmPartidasPar_Codigo: TIntegerField;
    fdmPartidasPar_TimeA: TIntegerField;
    fdmPartidasPar_TimeB: TIntegerField;
    fdmPartidasAtletas: TFDMemTable;
    fdmTimesAtletas: TFDMemTable;
    fdmTimesAtletasTim_Codigo: TIntegerField;
    fdmTimesAtletasAtl_Codigo: TIntegerField;
    fdmPartidasAtletasPar_Codigo: TIntegerField;
    fdmPartidasAtletasAtl_Codigo: TIntegerField;
    fdmPartidasAtletasTim_Codigo: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAtletaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnUFClick(Sender: TObject);
    procedure btnCidadesClick(Sender: TObject);
    procedure btnCamposClick(Sender: TObject);
    procedure btnValidaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses  IWSFutSystem112;

procedure TFrmPrincipal.btnAtletaClick(Sender: TObject);
var
  WS : IWSFutSystem;
  lista : TListAtletas;
  I: Integer;
begin
  WS    := HTTPRIO1 as  IWSFutSystem;
  lista := WS.GetAtletas();
  if fdmAtletas.RecordCount > 0 then
    fdmAtletas.EmptyDataSet;

  ds1.DataSet := fdmAtletas;

  for I := Low(lista) to High(lista) do
  begin
    fdmAtletas.Append;
    fdmAtletasAtl_Codigo.AsInteger      := lista[i].Codigo;
    fdmAtletasAtl_NomeCompleto.AsString := lista[i].NomeCompleto;
    fdmAtletas.Post;
  end;


  Finalize(lista);
end;

procedure TFrmPrincipal.btnCamposClick(Sender: TObject);
var
  WS : IWSFutSystem;
  lista : TListCampos;
  I: Integer;
begin
  WS    := HTTPRIO1 as  IWSFutSystem;
  lista := WS.GetCampos();
  if fdmCampos.RecordCount > 0 then
    fdmCampos.EmptyDataSet;

  ds1.DataSet := fdmCampos;


  for I := Low(lista) to High(lista) do
  begin
    fdmCampos.Append;
    fdmCamposCam_Codigo.AsInteger:= lista[i].Codigo;
    fdmCamposCam_Nome.AsString   := lista[i].Nome;
    fdmCampos.Post;
  end;
  Finalize(lista);

end;

procedure TFrmPrincipal.btnCidadesClick(Sender: TObject);
var
  WS : IWSFutSystem;
  lista : TListCidades;
  I: Integer;
begin
  WS    := HTTPRIO1 as  IWSFutSystem;
  lista := WS.GetCidades('PR');
  if fdmCidades.RecordCount > 0 then
    fdmCidades.EmptyDataSet;

  ds1.DataSet := fdmCidades;


  for I := Low(lista) to High(lista) do
  begin
    fdmCidades.Append;
    fdmCidadesCid_IBGE.AsInteger  := lista[i].Codigo;
    fdmCidadesCid_Nome.AsString   := lista[i].Nome;
    fdmCidadesEst_Codigo.AsInteger:= lista[i].Est_Codigo;
    fdmCidades.Post;
  end;
  Finalize(lista);

end;

procedure TFrmPrincipal.btnUFClick(Sender: TObject);
var
  WS : IWSFutSystem;
  lista : TListEstados;
  I: Integer;
begin
  WS    := HTTPRIO1 as  IWSFutSystem;
  lista := WS.GetEstados;
  if fdmEstados.RecordCount > 0 then
    fdmEstados.EmptyDataSet;

  ds1.DataSet := fdmEstados;


  for I := Low(lista) to High(lista) do
  begin
    fdmEstados.Append;
    fdmEstadosEst_Codigo.AsInteger  := lista[i].Codigo;
    fdmEstadosEst_Nome.AsString     := lista[i].Nome;
    fdmEstadosEst_Sigla.AsString    := lista[i].Sigla;
    fdmEstados.Post;
  end;
  Finalize(lista);
end;

procedure TFrmPrincipal.btnValidaClick(Sender: TObject);
var
  WS : IWSFutSystem;
begin
  WS    := HTTPRIO1 as  IWSFutSystem;

  if WS.ValidaLogin('lucas_medeiros09@hotmail.com', '123', TTipoLogin(0)) > 0 then
    ShowMessage('encontrou atleta')
  else
    ShowMessage('NÃO encontrou atleta');

  if WS.ValidaLogin('lucas_medeiros09@hotmail.com', '123', TTipoLogin(1)) > 0 then
    ShowMessage('encontrou campo')
  else
    ShowMessage('NÃO encontrou campo');

end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
  WS : IWSFutSystem;
  lista : TListTimes;
  I: Integer;
begin
  WS    := HTTPRIO1 as  IWSFutSystem;
  lista := WS.GetTimes();
  if fdmTimes.RecordCount > 0 then
    fdmTimes.EmptyDataSet;

  ds1.DataSet := fdmTimes;

  for I := Low(lista) to High(lista) do
  begin
    fdmTimes.Append;
    fdmTimesTim_Codigo.AsInteger       := lista[i].Codigo;
    fdmTimesTim_Nome.AsString          := lista[i].Nome;
    fdmTimesTim_DataFundacao.AsDateTime:= lista[i].DataFundacao;
    fdmTimes.Post;
  end;

  Finalize(lista);
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
var
  WS : IWSFutSystem;
  lista : TListTimesAtletas;
  I: Integer;
begin
  WS    := HTTPRIO1 as  IWSFutSystem;
  lista := WS.GetTimesAtletas(0, 0);
  if fdmTimesAtletas.RecordCount > 0 then
    fdmTimesAtletas.EmptyDataSet;

  ds1.DataSet := fdmTimesAtletas;

  for I := Low(lista) to High(lista) do
  begin
    fdmTimesAtletas.Append;
    fdmTimesAtletasTim_Codigo.AsInteger  := lista[i].Tim_Codigo;
    fdmTimesAtletasAtl_Codigo.AsInteger  := lista[i].Atl_Codigo;
    fdmTimesAtletas.Post;
  end;

  Finalize(lista);
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
var
  WS : IWSFutSystem;
  lista : TListPartidasAtletas;
  I: Integer;
begin
  WS    := HTTPRIO1 as  IWSFutSystem;
  lista := WS.GetPartidasAtletas(0, 0);
  if fdmPartidasAtletas.RecordCount > 0 then
    fdmPartidasAtletas.EmptyDataSet;

  ds1.DataSet := fdmPartidasAtletas;

  for I := Low(lista) to High(lista) do
  begin
    fdmPartidasAtletas.Append;
    fdmPartidasAtletasPar_Codigo.AsInteger:= lista[i].Par_Codigo;
    fdmPartidasAtletasTim_Codigo.AsInteger:= lista[i].Tim_Codigo;
    fdmPartidasAtletasAtl_Codigo.AsInteger:= lista[i].Atl_Codigo;
    fdmPartidasAtletas.Post;
  end;

  Finalize(lista);

end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
var
  WS : IWSFutSystem;
  lista : TListPartidas;
  I: Integer;
begin
  WS    := HTTPRIO1 as  IWSFutSystem;
  lista := WS.GetPartidas();
  if fdmPartidas.RecordCount > 0 then
    fdmPartidas.EmptyDataSet;

  ds1.DataSet := fdmPartidas;

  for I := Low(lista) to High(lista) do
  begin
    fdmPartidas.Append;
    fdmPartidasPar_Codigo.AsInteger := lista[i].Codigo;
    fdmPartidasPar_TimeA.AsInteger  := lista[i].TimeA;
    fdmPartidasPar_TimeB.AsInteger  := lista[i].TimeB;
    fdmPartidas.Post;
  end;

  Finalize(lista);
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmPrincipal := nil;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  fdmAtletas.CreateDataSet;
  fdmEstados.CreateDataSet;
  fdmCidades.CreateDataSet;
  fdmCampos.CreateDataSet;
  fdmTimes.CreateDataSet;
  fdmPartidas.CreateDataSet;
  fdmPartidasAtletas.CreateDataSet;
  fdmTimesAtletas.CreateDataSet;
end;

end.
