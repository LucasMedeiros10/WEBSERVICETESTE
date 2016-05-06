program WSClient;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  IWSFutSystem1 in 'IWSFutSystem1.pas',
  IWSFutSystem11 in 'IWSFutSystem11.pas',
  IWSFutSystem112 in 'IWSFutSystem112.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
