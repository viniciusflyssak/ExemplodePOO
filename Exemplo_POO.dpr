program Exemplo_POO;

uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmExemplo},
  uCarro in 'uCarro.pas',
  uAviao in 'uAviao.pas',
  uMeioTransporte in 'uMeioTransporte.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemplo, FrmExemplo);
  Application.Run;
end.
